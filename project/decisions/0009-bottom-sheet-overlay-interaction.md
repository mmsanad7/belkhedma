# 0009: إعدادات البروتوتايب الثابتة لأي bottom sheet

| البند | القيمة |
|---|---|
| الحالة | معتمد |
| التاريخ | 2026-11-23 |
| صاحب القرار | م. سند (صاحب المشروع) |

## السياق
الـ bottom sheets في البروتوتايب لازم تتفتح بنفس الشكل والحركة في كل التطبيق، علشان التجربة تبقى ثابتة.

## القرار
أي interaction بيودّي على bottom sheet لازم يبقى بالإعدادات دي بالظبط. ده بيشمل أي فريم اسمه بينتهي بـ `_bottom_sheet` أو `_popup`، لأن الـ `_popup` غالباً bottom sheets اسمها غلط ([S-11](../brand/deviations.md)):

| الإعداد | القيمة |
|---|---|
| Action | `Open overlay` |
| Position | `Bottom center` |
| Close when clicking outside | ✅ مفعّل |
| Background | ✅ مفعّل، `000000` بشفافية `25%` |
| Animation | `Move in` |
| Direction | ↑ (من تحت لفوق) |
| Easing | `Ease in and out` |
| Duration | `300ms` |

### توضيح 2026-11-26 (منة)
منة أكّدت إن **أي** bottom sheet ياخد الإعدادات دي. اتطبّقت على صفحة `screens` كلها ([CHANGELOG](../changelog/CHANGELOG.md#2026-11-26)):
- **Swap بين شيتين مختلفين** (زي «تأكيد التفضيل» ← نتيجة التفضيل): الـ Action بيفضل `Swap overlay` علشان «تم» و X يقفلوا النتيجة من غير ما يرجّعوا الشيت اللي قبلها. بس الأنيميشن بقى نفس الجدول: `Move in` ↑، `Ease in and out`، `300ms`.
- **استثناء: Swap بين حالات نفس الشيت** (زي اختيار خيار في [`monthly_offers/worker_selection_method_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-23688)، أو [`hourly_offers/offers_filtration_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9098-22115) لنفسه): الأنيميشن بيفضل زي ما هو، لأن الشيت مفتوح أصلاً، ولو عمل Move in هيطلع من تحت تاني مع كل ضغطة.
- **إعدادات الفريم** (Position والخلفية والقفل لما تضغط برّه) بتتظبط يدوي، لأن الـ Plugin API مش بيعدّلها ([S-13](../brand/deviations.md)).

## المراجعة
أي مراجعة للبروتوتايب لازم تتأكد إن كل interaction بيفتح bottom sheet ملتزم بالجدول ده. أي اختلاف يتصلّح، أو يتسجل في [deviations.md](../brand/deviations.md) لو ليه سبب.

## الأثر
- **Figma:** كل الـ interactions اللي بتفتح `*_bottom_sheet` في صفحة `screens`.
- **ملفات التوثيق:** `AGENTS.md` (قاعدة البناء والمراجعة)، و[memory/MEMORY.md](../memory/MEMORY.md).
