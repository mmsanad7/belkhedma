# الألوان

صفحة Figma: [`colors`](https://www.figma.com/design/HWnOHugM9Pc54J8aui4Hww/Belkhedma-App?node-id=0-1). القيم بصيغة JSON في [brand.json](../../brand/brand.json).

## Primitives

| الدرجة | primary | secondary | success | warning | danger | black |
|---|---|---|---|---|---|---|
| 50 | `#FFF6F9` | `#F8F6FB` | `#EDFDF1` | `#FFF5EA` | `#FFF5F3` | `#FFFFFF` |
| 100 | `#FFE7F0` | `#F2F0FA` | `#D6FADF` | `#FFE9D1` | `#FFE8E5` | `#F8F8F8` |
| 200 | `#FECFE2` | `#EDE8F5` | `#A9F7BD` | `#FFD6A7` | `#FFD2CC` | `#E9E9E9` |
| 300 | `#FDB0D1` | `#E3DDF3` | `#75EB9A` | `#FEBB66` | `#FFAFA6` | `#D6D6D6` |
| 400 | `#F88CBE` | `#E297D5` | `#67D087` | `#F59E0B` | `#FF8E83` | `#969696` |
| 500 | `#F16BAD` | `#D97ACA` | `#5AB776` | `#E39109` | `#FF3535` | `#737373` |
| 600 | `#E74C9D` | `#BB51AD` | `#46915E` | `#C47806` | `#E40016` | `#545454` |
| **700** | **`#D72E8D`** | **`#9B298E`** | `#347049` | `#9E5904` | `#BD000B` | `#404040` |
| 800 | `#AD2370` | `#7C1F71` | `#275638` | `#804402` | `#9F0005` | `#272727` |
| 900 | `#871B57` | `#601757` | `#1F462D` | `#6B3701` | `#880003` | `#181818` |
| 950 | `#4C0D30` | `#350A30` | `#0F2818` | `#3F1F01` | `#530001` | `#090909` |

ألوان مفردة: `deep_slate = #1E2939` (النص الأساسي)، و`gray = #F3F4F6`.

> ملاحظة: `black/50` لونه أبيض `#FFFFFF`، فالمجموعة `black` فعلياً تدرج رمادي من الأبيض للأسود.

## Tokens (دلالية)

### الخلفيات
| Token | يشير إلى | القيمة |
|---|---|---|
| `backgrounds/bg_screen` | `secondary/100` | `#F2F0FA` |
| `backgrounds/bg_primary` | `primary/700` | `#D72E8D` |
| `backgrounds/bg_secondary` | `secondary/950` | `#350A30` |
| `backgrounds/bg_white` | `black/50` | `#FFFFFF` |
| `backgrounds/bg_black` | `deep_slate` | `#1E2939` |
| `backgrounds/bg_success` | `success/100` | `#D6FADF` |
| `backgrounds/bg_error` | `danger/100` | `#FFE8E5` |
| `backgrounds/bg_gray` | `gray` | `#F3F4F6` |
| `backgrounds/bg_gray_100` / `200` / `300` | `black/100` / `200` / `300` | |
| `backgrounds/icon_bg_primary` | `primary/100` | `#FFE7F0` |
| `backgrounds/tabs_bg` | `secondary/100` | `#F2F0FA` |
| `backgrounds/price_bg` | `primary/100` | `#FFE7F0` |

### النصوص
| Token | يشير إلى | القيمة |
|---|---|---|
| `text/text_black` | `deep_slate` | `#1E2939` |
| `text/text_white` | `black/50` | `#FFFFFF` |
| `text/text_primary` | `primary/700` | `#D72E8D` |
| `text/text_secondary` | `secondary/950` | `#350A30` |
| `text/text_secondary 2` | `secondary/900` | `#601757` |
| `text/text_secondary 3` | `secondary/700` | `#9B298E` |
| `text/text_gray_500` | `black/500` | `#737373` |
| `text/text_gray_400` | `black/400` | `#969696` |
| `text/text_success` | `success/600` | `#46915E` |
| `text/text_error` | `danger/600` | `#E40016` |

### الأزرار
| Token | يشير إلى |
|---|---|
| `buttons/btn_primary` | `primary/700` (مع التدرج إلى `secondary/700`) |
| `buttons/btn_secondary` | `black/50` |
| `buttons/btn_disabled` | `black/50` |
| `buttons/btn_card` | `secondary/950` |
| `buttons/btn_see_all` | `primary/100` |
| `buttons/btn_denger` | `danger/600` |
| `buttons/btn_icon` | `black/500` |

### الحدود
| Token | يشير إلى |
|---|---|
| `borders/border_input` · `border_black` | `black/300` |
| `borders/border_primary` | `primary/700` |
| `borders/border_secondary` | `secondary/950` |
| `borders/border_secondary 2` | `secondary/300` |
| `borders/border_secondary 3` | `secondary/400` |
| `borders/border_success` | `success/600` |
| `borders/border_warning` | `warning/400` |
| `borders/border_error` | `danger/500` |
| `borders/border_white` | `black/50` |
| `borders/navbar_border` | `gray` |
| `borders/close_border` | `black/400` |
| `borders/price_border` | `primary/500` |

### الشارات والتنبيهات
| الحالة | خلفية الشارة | نص الشارة | لون التنبيه |
|---|---|---|---|
| primary | `badge_bg_primary` → `primary/100` | `badge_text_primary` → `primary/700` | — |
| success | `badge_bg_success` → `success/100` | `badge_text_success` → `success/600` | `success_color` → `success/600` |
| warning | `badge_bg_warning` → `warning/50` | `badge_text_warning` → `warning/400` | `warning_color` → `warning/400` |
| error | `badge_bg_error` → `danger/100` | — | `error_color` → `danger/500` |
| cancelled | `badge_bg_cancelled` → `black/200` | `badge_text_cancelled` → `black/500` | — |
| أبيض | `badge_bg_black` → `black/50` | — | — |

## التدرج الأساسي
`primary/700` (‎`#D72E8D`‎) ← `secondary/700` (‎`#9B298E`‎). يُستخدم في الأزرار الرئيسية، والـ splash، والتبويب النشط، وزر الرئيسية في الشريط السفلي. التدرج غير معرّف كـ style، ويُطبَّق يدوياً.
