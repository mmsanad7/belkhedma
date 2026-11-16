# المسافات والزوايا والتخطيط

صفحات Figma: [`spacing`](https://www.figma.com/design/HWnOHugM9Pc54J8aui4Hww/Belkhedma-App?node-id=8-25) · [`radius`](https://www.figma.com/design/HWnOHugM9Pc54J8aui4Hww/Belkhedma-App?node-id=36-135).

> **تنبيه:** صفحتا `spacing` و`radius` في Figma قديمتان، وتعرضان `3xl = 40` و`4xl = 60`. القيم أدناه هي **المتغيرات الفعلية**. راجع [deviations.md](../../brand/deviations.md) (D-01، D-02).

## المقياس الأساسي (`primitives / values`)

كل متغيرات المسافات والحواف والزوايا تشير لنفس المقياس:

| المقياس | القيمة | `spacing/*` | `padding/*` | `radius/*` |
|---|---|---|---|---|
| `xs` | 4 | `spacing_xs` | `padding_xs` | `radius_xs` |
| `sm` | 8 | `spacing_sm` | `padding_sm` | `radius_sm` |
| `md` | 12 | `spacing_md` | `padding_md` | `radius_md` |
| `lg` | 16 | `spacing_lg` | `padding_lg` | `radius_lg` |
| `xl` | 20 | `spacing_xl` | `padding_xl` | `radius_xl` |
| `2xl` | 24 | `spacing_2xl` | `padding_2xl` | `radius_2xl` |
| `3xl` | 32 | `spacing_3xl` | `padding_3xl` | `radius_3xl` |
| `4xl` | 40 | `spacing_4xl` | `padding_4xl` | `radius_4xl` |
| `5xl` | 60 | `spacing_5xl` | `padding_5xl` | `radius_5xl` |

قيم إضافية: `padding/padding_menu = 6`، و`border_xs = 1`، و`border_sm = 2`.

## الاستخدام
- **`spacing/*`:** المسافة بين العناصر (gap في auto layout).
- **`padding/*`:** الحواف الداخلية للمكوّنات.
- **`radius/*`:** الزوايا. الأزرار الرئيسية تستخدم `radius_4xl` (40)، فتظهر دائرية بالكامل بارتفاع 48.

## تخطيط الشاشة

| البند | القيمة |
|---|---|
| مقاس الإطار | 393 × 852 |
| الهامش الجانبي | 16 |
| عرض المحتوى | 361 |
| ارتفاع `top_navbar` | 80 |
| بداية المحتوى | y = 96 (أسفل الشريط العلوي بـ 16) |
| `bottom_navbar` | 368 × 64، طافٍ، x = 12.5، y ≈ 764–768 |
| الزر الأساسي | عرض 361، ارتفاع 48 |
| Bottom sheet | عرض 393، محتوى بهامش 16، وهيدر `bottom_sheet_header` |

```
┌───────────────────────── 393 ─────────────────────────┐
│ top_navbar (80)                                        │
├────────────────────────────────────────────────────────┤
│16│            content (361)                        │16│  ← يبدأ عند y=96
│  │                                                 │  │
│  │                                                 │  │
│  ┌──────────── bottom_navbar 368×64 ─────────────┐   │
│  └────────────────────────────────────────────────┘   │
└────────────────────────────────────────────────────────┘
```
