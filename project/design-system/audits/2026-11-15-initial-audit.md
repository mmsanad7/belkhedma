# مراجعة أولية للملف: 2026-11-15

| البند | القيمة |
|---|---|
| النطاق | كل الصفحات المعتمدة: foundations، atoms، molecules، organisms، templates، screens |
| خارج النطاق | `icons`، `draft_screens`، `sand_box` |
| الطريقة | قراءة الـ metadata والمتغيرات والـ text styles من Figma، ولقطات شاشة لعيّنة من الشاشات |

## الملخص

| المحور | التقييم | ملاحظة |
|---|---|---|
| هيكل Atomic Design | جيد | تقسيم واضح، والشاشات مبنية من instances و templates |
| المتغيرات | جيد | فصل نظيف بين `primitives` و`tokens`، والـ tokens كلها aliases |
| صفحات التوثيق داخل Figma | يحتاج تحديث | `spacing` و`radius` و`typography` لا تطابق القيم الفعلية |
| تسمية المكوّنات | متوسط | معظمها منظم، لكن فيه `Property 1` و`Variant2` و`state9` |
| تسمية الشاشات | جيد | صيغة `section/state` ثابتة، مع استثناءات قليلة |
| الظلال | ضعيف | لا توجد effect styles |
| الوضع الداكن | غير موجود | mode واحد فقط |

## الأرقام

| البند | العدد |
|---|---|
| متغيرات `primitives` | 80 |
| متغيرات `tokens` | 126 |
| Text styles | 11 |
| Effect styles | 0 |
| مجموعات Atoms / Molecules / Organisms | 26 / 36 / 40 |
| Templates | 5 |
| إطارات الشاشات | 95 (73 شاشة + 22 bottom sheet) |

## الملاحظات
كل الملاحظات مسجّلة بأرقام في [deviations.md](../../brand/deviations.md):
- **التوكنز:** D-01 إلى D-11
- **المكوّنات:** C-01 إلى C-05
- **الشاشات:** S-01 إلى S-04

## أولويات مقترحة
1. تحديث صفحات `spacing` و`radius` و`typography` (D-01 إلى D-06)، لأنها أول ما يرجع له المطوّر.
2. إنشاء effect styles للظلال (D-11).
3. إعادة تسمية variants المكوّنات (C-01، C-02).
4. تنظيف الشاشات المكررة والنسخ القديمة (S-01، S-02).
