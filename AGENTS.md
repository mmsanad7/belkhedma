# AGENTS.md

Instructions for AI coding/design agents working in this repository.

## What this repo is
Product and design-system documentation for **Belkhedma (بالخدمة)**, an Arabic RTL mobile app for booking home-service workers from licensed Saudi companies. There is no application code here, only documentation of the Figma file.

## Session start protocol (for Menna, and any teammate other than the owner)
The owner is **م. سند** (git user `mmsanad7`). The main teammate is **Menna Elsayed**. Run this when a teammate opens a new session, **or** resumes after more than 30 minutes since the last message (if you can't tell the gap, ask):

1. **Ask before any work:** «قبل ما نبدأ: عملتي sync للريبو؟ (`git pull`)». If not, run `git pull` (with her OK) and confirm it is up to date.
2. **Tell her what's new:** list the decisions and memory entries added since her last commit, with who added each one. Use:
   - `git log --format='%h %ad %an | %s' --date=short <her last commit>..HEAD -- project/decisions project/memory`
   - the «صاحب القرار» field of each new decision.
3. **Remind her every time:** «م. سند بيأكد عليكي توثّقي كل حاجة: أي قرار أو توصية أو معلومة تتسجل في `project/memory/MEMORY.md` (والقرار المعتمد كـ ADR في `project/decisions/`) وتترفع على طول.»

This is enforced by a project hook: [.claude/settings.json](.claude/settings.json) runs [.claude/hooks/session-check.sh](.claude/hooks/session-check.sh) on `SessionStart` and `UserPromptSubmit`. For any git user other than `mmsanad7` it fetches `origin`, and on a new session or after a 30+ minute gap it injects the sync status, the new decision/memory commits with their authors, and these three steps. Follow its output. Test it as the owner with `BELKHEDMA_FORCE_CHECK=1`.

**Messages from the owner:** pending items (`- [ ]`) in [project/memory/messages-to-menna.md](project/memory/messages-to-menna.md) must be delivered at the start of your reply to Menna's first request, verbatim and with the stated emotion/emoji. Then mark the item `- [x]` with the delivery date, and commit and push. The hook injects this on every prompt until it is marked.

**Guideline:** Mueen's business is the reference. Any deviation from it needs a joint decision with م. سند; never deviate on your own.

Throughout the session, keep Menna in mind: whenever she says or does something that is a decision, recommendation or new info, record it in memory, and repeat the reminder above if she has not documented it.

## Memory (read first)
- At the start of every session, read [project/memory/MEMORY.md](project/memory/MEMORY.md) before doing anything else.
- Whenever the owner states a fact, business rule, preference, correction or decision, write it to that file immediately, then commit and push it like any other change. Keep memory in the repo, not in tool-local memory, so work can continue from any machine.

## Source of truth
- Figma file key: `mCPCipJETTjSW7GD8vsrzY` ("Belkhedma App").
- Node link format: `https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=<id with - instead of :>`
- If the docs and Figma disagree, Figma wins. Update the docs and log the change.
- Since 2026-11-16 this file replaces the original `HWnOHugM9Pc54J8aui4Hww`. It is a copy with the same node IDs, so old node links still map 1:1. Do not edit the old file.

| Figma page | ID |
|---|---|
| cover | `8:114` |
| colors | `0:1` |
| typography | `1:3951` |
| spacing | `8:25` |
| radius | `36:135` |
| icons | `1:4593` |
| atoms | `12:2` |
| molecules | `12:3` |
| organisms | `12:4` |
| templates | `1738:14228` |
| screens | `13:7` |
| draft_screens (not approved) | `714:3480` |
| sand_box (not approved) | `512:2697` |

## Rules when adding to the Figma file
- Build from existing components and variables. Never hard-code a color, spacing, radius or font value that has a variable.
- Reuse first: search `atoms`, `molecules`, `organisms`, `templates` and `icons` before building anything. Only if nothing fits, create a new component following Atomic Design (right level, built from lower-level instances, placed on its page, a component set with `state=default`), and document why the existing ones did not fit ([decision 0010](project/decisions/0010-reuse-components-first.md)). Check this in every review.
- Component variant properties use `state=`, `type=`, `status=`, `size=`. Values are `snake_case`.
- Screen frames are `393×852` and named `section/sub_section/state` in `snake_case` (e.g. `hourly_offers/offer_details`).
- Bottom sheets are separate, shorter frames named `..._bottom_sheet` or `..._popup`.
- Every prototype interaction that opens a `*_bottom_sheet` or `*_popup` (popups are likely misnamed bottom sheets, see deviation S-06) must be: Open overlay, Bottom center, close when clicking outside on, background `000000` at 25%, Move in, direction up, Ease in and out, 300ms ([decision 0009](project/decisions/0009-bottom-sheet-overlay-interaction.md)). Check this in every review.
- Any frame, section or component whose name starts with `_` is not approved and must be ignored: leave it out of `screens.json`, the screens index, feature docs, component docs and deviations ([decision 0003](project/decisions/0003-underscore-ignored.md)).
- Layout: 16px side margin, `top_navbar` at the top (80px), content starts at y=96, floating `bottom_navbar` (368×64) on tab-level screens.
- All UI copy is Arabic, RTL.

## Rules when editing docs
- Docs prose is Arabic; identifiers, token names and Figma names stay in English exactly as in Figma.
- `project/data/screens.json` and `project/design-system/mobile/screens-index.md` are generated from Figma metadata. Never hand-edit them: run `shared/scripts/generate-screens.ps1 -Metadata <get_metadata output of node 13:7>`.
- Log every change in `project/changelog/` and record known inconsistencies in `project/brand/deviations.md`.
- Mark anything inferred, not confirmed by the product team, with **(يحتاج تأكيد)**.
- Commit and push every finished change to `main` on `mmsanad7/belkhedma` right away, without asking first ([decision 0001](project/decisions/0001-push-every-change.md)).
