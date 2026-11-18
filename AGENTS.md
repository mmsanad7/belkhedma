# AGENTS.md

Instructions for AI coding/design agents working in this repository.

## What this repo is
Product and design-system documentation for **Belkhedma (بالخدمة)**, an Arabic RTL mobile app for booking home-service workers from licensed Saudi companies. There is no application code here, only documentation of the Figma file.

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
- Component variant properties use `state=`, `type=`, `status=`, `size=`. Values are `snake_case`.
- Screen frames are `393×852` and named `section/sub_section/state` in `snake_case` (e.g. `hourly_offers/offer_details`).
- Bottom sheets are separate, shorter frames named `..._bottom_sheet` or `..._popup`.
- Any frame, section or component whose name starts with `_` is not approved and must be ignored: leave it out of `screens.json`, the screens index, feature docs, component docs and deviations ([decision 0003](project/decisions/0003-underscore-ignored.md)).
- Layout: 16px side margin, `top_navbar` at the top (80px), content starts at y=96, floating `bottom_navbar` (368×64) on tab-level screens.
- All UI copy is Arabic, RTL.

## Rules when editing docs
- Docs prose is Arabic; identifiers, token names and Figma names stay in English exactly as in Figma.
- `project/data/screens.json` and `project/design-system/mobile/screens-index.md` are generated from Figma metadata. Never hand-edit them: run `shared/scripts/generate-screens.ps1 -Metadata <get_metadata output of node 13:7>`.
- Log every change in `project/changelog/` and record known inconsistencies in `project/brand/deviations.md`.
- Mark anything inferred, not confirmed by the product team, with **(يحتاج تأكيد)**.
- Commit and push every finished change to `main` on `mmsanad7/belkhedma` right away, without asking first ([decision 0001](project/decisions/0001-push-every-change.md)).
