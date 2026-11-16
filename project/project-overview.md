# ملخص المشروع

| البند | التفاصيل |
|---|---|
| **المنتج** | بالخدمة (Belkhedma) |
| **النوع** | تطبيق موبايل، سوق إلكتروني لخدمات العمالة المنزلية |
| **السوق** | المملكة العربية السعودية (العملة ر.س، مفتاح الجوال `+966`، ضريبة 15%) |
| **اللغة** | العربية، RTL |
| **مرحلة التصميم** | الشاشات الأساسية مكتملة في Figma، وفيه مسودات قيد العمل. راجع [status/status.md](status/status.md) |
| **ملف التصميم** | [Figma: Belkhedma App](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App) |

## المشكلة والحل
العميل اللي محتاج عاملة منزلية (بالساعة، أو شهرياً، أو رعاية طبية، أو استقدام) بيتعامل مع شركات كثيرة، بأسعار وشروط مختلفة، وبدون وسيلة سهلة للمقارنة أو للدفع الآمن.

**بالخدمة** تجمع عروض الشركات المعتمدة في مكان واحد. العميل يقارن ويفلتر ويحجز ويدفع إلكترونياً، ويتابع عقده وزياراته من التطبيق.

## خطوط الخدمة

| الخدمة | المعرّف في Figma | التوثيق |
|---|---|---|
| خدمات بالساعة | `hourly` | [features/hourly-services.md](product/features/hourly-services.md) |
| خدمات الأفراد (شهري) | `monthly` | [features/monthly-and-medical.md](product/features/monthly-and-medical.md) |
| رعاية طبية | `medical` | [features/monthly-and-medical.md](product/features/monthly-and-medical.md) |
| الوساطة (استقدام) | `mediation` | [features/mediation.md](product/features/mediation.md) |

## الأرقام

| البند | العدد |
|---|---|
| إطارات في صفحة `screens` | 95 (73 شاشة + 22 bottom sheet) |
| مجموعات مكوّنات Atoms | 26 |
| مجموعات مكوّنات Molecules | 36 |
| مجموعات مكوّنات Organisms | 40 |
| Templates | 5 |

## خريطة التوثيق
- **البيزنس والـ flows:** [product/](product/)
- **الهوية والتوكنز:** [brand/](brand/)
- **المكوّنات والشاشات:** [design-system/](design-system/)
- **الحالة والنقاط المفتوحة:** [status/status.md](status/status.md)
