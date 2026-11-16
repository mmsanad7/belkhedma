# بالخدمة — Belkhedma App

توثيق المنتج ونظام التصميم لتطبيق **بالخدمة**: منصة سعودية لحجز خدمات العمالة المنزلية من شركات معتمدة، والدفع لها بأمان.

> **المرجع الأساسي هو ملف Figma:**
> [Belkhedma App](https://www.figma.com/design/HWnOHugM9Pc54J8aui4Hww/Belkhedma-App) ·
> [Prototype](https://www.figma.com/proto/HWnOHugM9Pc54J8aui4Hww/Belkhedma-App?node-id=438-5926&starting-point-node-id=438%3A5894)
>
> هذا الريبو يشرح الملف ولا يحل محله. لو وجدت اختلافاً بينهما فـ Figma هو الصح، ويُحدَّث التوثيق.

## ابدأ من هنا

| لو أنت… | اقرأ |
|---|---|
| جديد على المشروع | [project/project-overview.md](project/project-overview.md) ثم [project/product/overview.md](project/product/overview.md) |
| مدير منتج أو QA | [project/product/features/](project/product/features/) و[project/product/glossary.md](project/product/glossary.md) |
| مصمم | [project/design-system/design-system-overview.md](project/design-system/design-system-overview.md) و[project/brand/brand-guide.md](project/brand/brand-guide.md) |
| مطوّر فرونت إند | [project/brand/brand.json](project/brand/brand.json) (التوكنز) و[project/design-system/mobile/](project/design-system/mobile/) |
| تبحث عن شاشة معينة | [project/design-system/mobile/screens-index.md](project/design-system/mobile/screens-index.md) |

## هيكل الريبو

```
.
├── AGENTS.md / CLAUDE.md        تعليمات لأدوات الذكاء الاصطناعي اللي تشتغل على الريبو
├── project/
│   ├── project-overview.md      ملخص المشروع في صفحة واحدة
│   ├── brand/                   الهوية، التوكنز (JSON)، بيانات العميل، والانحرافات عن النظام
│   ├── product/                 البيزنس، المصطلحات، وتوثيق كل feature
│   ├── design-system/           الأساسيات، المكوّنات، فهرس الشاشات، والمراجعات
│   ├── data/                    بيانات مولَّدة من Figma (مثل screens.json)
│   ├── decisions/               قرارات التصميم والمنتج (ADR)
│   ├── changes/                 طلبات التعديل المفتوحة
│   ├── changelog/               سجل التغييرات المنفّذة
│   └── status/                  الحالة الحالية والنقاط المفتوحة
└── shared/templates/            قوالب لكتابة feature أو قرار جديد
```

## نظرة سريعة

- **المنصة:** موبايل (iOS / Android)، مقاس الإطار `393 × 852`.
- **اللغة والاتجاه:** عربي، من اليمين لليسار (RTL).
- **الخط:** Tajawal.
- **الهوية:** تدرّج من الوردي `#D72E8D` إلى البنفسجي `#9B298E`، وخلفية الشاشات `#F2F0FA`.
- **المنهجية:** Atomic Design. كل الشاشات مبنية من instances لمكوّنات المكتبة.

## المساهمة

1. أي تعديل مطلوب يبدأ كملف في [project/changes/](project/changes/).
2. بعد تنفيذه في Figma يُحدَّث التوثيق، ويُضاف سطر في [project/changelog/](project/changelog/).
3. القرارات المهمة تُسجَّل في [project/decisions/](project/decisions/) بالقالب الموجود في [shared/templates/](shared/templates/).
