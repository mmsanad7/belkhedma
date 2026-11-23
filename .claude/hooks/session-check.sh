#!/usr/bin/env bash
# Session start protocol (AGENTS.md › "Session start protocol").
# Runs on SessionStart ("start") and on every prompt ("prompt").
# For any git user other than the owner (mmsanad7): on a new session, or after
# more than 30 minutes since the last prompt, tells Claude to ask about syncing
# the repo, list new decisions and who added them, and remind about documenting.
# Set BELKHEDMA_FORCE_CHECK=1 to test it as the owner.

mode="${1:-prompt}"
root="$(git rev-parse --show-toplevel 2>/dev/null)" || exit 0
cd "$root" || exit 0

user="$(git config user.name)"
if [ "$user" = "mmsanad7" ] && [ -z "$BELKHEDMA_FORCE_CHECK" ]; then
  exit 0
fi

stamp=".claude/.last-prompt"
now=$(date +%s)
last=$(cat "$stamp" 2>/dev/null || echo 0)
echo "$now" > "$stamp"

# Pending messages from the owner: delivered on her first prompt, repeated until marked [x].
msgfile="project/memory/messages-to-menna.md"
if [ "$mode" = "prompt" ] && grep -q '^- \[ \]' "$msgfile" 2>/dev/null; then
  cat <<EOF
[رسالة من م. سند لمنة: لازم تتوصّل دلوقتي]
في $msgfile رسالة أو أكتر لسه ما اتوصّلتش (البنود اللي بتبدأ بـ "- [ ]"). اقرا الملف، وابدأ ردك بالرسالة بالنص وبالإحساس المكتوب جنبها (الإيموجي)، وبعدها رد على طلبها.
بعد التوصيل: غيّر البند لـ "- [x]" واكتب تاريخ التوصيل، واعمل commit وpush على طول.

EOF
fi

if [ "$mode" = "start" ]; then
  reason="جلسة جديدة"
else
  gap=$((now - last))
  [ "$gap" -le 1800 ] && exit 0
  reason="رجوع بعد $((gap / 60)) دقيقة من آخر رسالة"
fi

GIT_TERMINAL_PROMPT=0 timeout 15 git fetch -q origin 2>/dev/null
upstream="origin/main"
behind=$(git rev-list --count "HEAD..$upstream" 2>/dev/null || echo "?")

mine=$(git log --author="$user" -1 --format=%H "$upstream" 2>/dev/null)
if [ -n "$mine" ]; then
  range="$mine..$upstream"
  since="من بعد آخر commit ليها ($(git log -1 --format=%ad --date=short "$mine"))"
else
  range="$upstream"
  since="(مفيش commits باسمها، دي آخر الإضافات)"
fi
news=$(git log --format='- %h %ad %an | %s' --date=short "$range" -- project/decisions project/memory 2>/dev/null | head -20)
[ -z "$news" ] && news="- مفيش جديد."

cat <<EOF
[بروتوكول بداية الجلسة: بالخدمة]
السبب: $reason
المستخدم: $user
الريبو المحلي متأخر عن $upstream بـ $behind commit.
القرارات والذاكرة الجديدة $since:
$news

المطلوب من Claude قبل أي شغل (AGENTS.md › Session start protocol):
1. اسألها الأول: «قبل ما نبدأ: عملتي sync للريبو؟ (git pull)». لو الريبو متأخر، اعرض تعمل git pull بموافقتها.
2. اعرض لها القرارات الجديدة اللي فوق، ومع كل قرار مين ضافه ومين صاحبه (حقل «صاحب القرار» في ملف القرار).
3. قولها: «م. سند بيأكد عليكي توثّقي كل حاجة: أي قرار أو توصية أو معلومة تتسجل في project/memory/MEMORY.md (والقرار المعتمد كـ ADR في project/decisions/) وتترفع على طول.»
EOF
