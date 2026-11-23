# Regenerates project/data/screens.json and project/design-system/mobile/screens-index.md
# from Figma metadata of the `screens` page (13:7).
#
# Input: the output of the Figma MCP `get_metadata` call on node 13:7, either the raw XML
# or the saved JSON wrapper ([{type, text}]).
#
# Rule (decision 0003): any top-level frame whose name starts with `_` is ignored and is
# not written to screens.json or the index.
#
# Usage (Windows PowerShell 5.1, file must stay UTF-8 with BOM):
#   .\shared\scripts\generate-screens.ps1 -Metadata <path> [-Repo <repo root>]
param(
  [Parameter(Mandatory = $true)][string]$Metadata,
  [string]$Repo = (Resolve-Path "$PSScriptRoot\..\..").Path
)
$ErrorActionPreference = "Stop"
$key = "mCPCipJETTjSW7GD8vsrzY"
$base = "https://www.figma.com/design/$key/Belkhedma-App?node-id="

$raw = [IO.File]::ReadAllText($Metadata, [Text.Encoding]::UTF8)
if ($raw.TrimStart().StartsWith("[")) { $raw = (($raw | ConvertFrom-Json) | ForEach-Object { $_.text }) -join "" }
$lines = $raw -split "`r?`n"

$all = foreach ($l in $lines) {
  if ($l -match '^  <frame id="([^"]+)" name="([^"]*)" x="[^"]*" y="[^"]*" width="([^"]*)" height="([^"]*)"') {
    [pscustomobject]@{ id = $matches[1]; name = $matches[2]; w = [int][double]$matches[3]; h = [int][double]$matches[4] }
  }
}
$ignored = @($all | Where-Object { $_.name.StartsWith('_') })
$items = @($all | Where-Object { -not $_.name.StartsWith('_') } | ForEach-Object {
  [pscustomobject][ordered]@{
    name = $_.name; section = ($_.name -split '/')[0]; node_id = $_.id
    width = $_.w; height = $_.h
    type = $(if ($_.h -eq 852) { "screen" } else { "bottom_sheet" })
    figma_url = $base + ($_.id -replace ':', '-')
  }
} | Sort-Object name, node_id)

$obj = [ordered]@{
  figma_file_key = $key; page = "screens"; page_id = "13:7"; generated = (Get-Date -Format "yyyy-MM-dd")
  count = $items.Count; ignored_prefix = "_"; ignored_count = $ignored.Count; screens = $items
}
$utf8 = New-Object Text.UTF8Encoding($false)
[IO.File]::WriteAllText("$Repo\project\data\screens.json", ($obj | ConvertTo-Json -Depth 5), $utf8)

$groups = [ordered]@{
  "البداية" = @("onboarding","splash"); "الدخول والتحقق" = @("auth"); "الرئيسية" = @("home")
  "خدمات بالساعة" = @("hourly_offers","hourly_service_selection"); "خدمات الأفراد (شهري)" = @("monthly_offers")
  "رعاية طبية" = @("medical_offers"); "الوساطة" = @("mediation"); "العروض" = @("offers"); "البحث" = @("search")
  "المفضلة" = @("favorites"); "الطلبات" = @("orders"); "المزيد" = @("more"); "الملف الشخصي" = @("profile")
  "العناوين" = @("addresses"); "الشركات" = @("companies"); "الإشعارات" = @("notifications"); "المساعدة والدعم" = @("help_and_support"); "العاملات" = @("workers")
}
$covered = $groups.Values | ForEach-Object { $_ }
$missing = @($items | Where-Object { $covered -notcontains $_.section })
if ($missing.Count) { throw "Unmapped sections (add them to `$groups): $(($missing.section | Sort-Object -Unique) -join ', ')" }

$sb = New-Object Text.StringBuilder
[void]$sb.AppendLine("# فهرس الشاشات (Mobile)")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("كل الإطارات في صفحة ``screens`` في Figma ($($items.Count) إطاراً). الملف مولَّد من [``project/data/screens.json``](../../data/screens.json) بالسكريبت [``generate-screens.ps1``](../../../shared/scripts/generate-screens.ps1)، فلو تغيّرت الشاشات شغّل السكريبت تاني.")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("- **شاشة:** إطار كامل ``393×852``.")
[void]$sb.AppendLine("- **Bottom sheet:** إطار أقصر يمثّل نافذة منبثقة من الأسفل فوق شاشة أخرى.")
[void]$sb.AppendLine("- أي إطار اسمه بيبدأ بـ ``_`` مش داخل في الفهرس (عددهم حالياً: $($ignored.Count)). راجع [قرار 0003](../../decisions/0003-underscore-ignored.md).")
foreach ($g in $groups.Keys) {
  $rows = @($items | Where-Object { $groups[$g] -contains $_.section })
  if ($rows.Count -eq 0) { continue }
  [void]$sb.AppendLine("")
  [void]$sb.AppendLine("## $g")
  [void]$sb.AppendLine("")
  [void]$sb.AppendLine("| الإطار | النوع | المقاس | Figma |")
  [void]$sb.AppendLine("|---|---|---|---|")
  foreach ($r in $rows) {
    $t = $(if ($r.type -eq "screen") { "شاشة" } else { "Bottom sheet" })
    [void]$sb.AppendLine("| ``$($r.name)`` | $t | $($r.width)×$($r.height) | [فتح]($($r.figma_url)) |")
  }
}
[IO.File]::WriteAllText("$Repo\project\design-system\mobile\screens-index.md", $sb.ToString(), $utf8)
"screens=$($items.Count) ignored=$($ignored.Count): $(($ignored.name) -join ', ')"
