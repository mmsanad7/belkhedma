# 0009: إعدادات البروتوتايب الثابتة لأي bottom sheet

| البند | القيمة |
|---|---|
| الحالة | معتمد |
| التاريخ | 2026-11-23 |
| صاحب القرار | صاحب المشروع |

## السياق
الـ bottom sheets في البروتوتايب لازم تتفتح بنفس الشكل والحركة في كل التطبيق، علشان التجربة تبقى ثابتة.

## القرار
أي interaction بيودّي على bottom sheet لازم يبقى بالإعدادات دي بالظبط. ده بيشمل أي فريم اسمه بينتهي بـ `_bottom_sheet` أو `_popup`، لأن الـ `_popup` غالباً bottom sheets اسمها غلط ([S-06](../brand/deviations.md)):

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

## المراجعة
أي مراجعة للبروتوتايب لازم تتأكد إن كل interaction بيفتح bottom sheet ملتزم بالجدول ده. أي اختلاف يتصلّح، أو يتسجل في [deviations.md](../brand/deviations.md) لو ليه سبب.

## الأثر
- **Figma:** كل الـ interactions اللي بتفتح `*_bottom_sheet` في صفحة `screens`.
- **ملفات التوثيق:** `AGENTS.md` (قاعدة البناء والمراجعة)، و[memory/MEMORY.md](../memory/MEMORY.md).
