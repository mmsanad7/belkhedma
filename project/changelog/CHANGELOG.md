# سجل التغييرات

أحدث التغييرات في الأعلى. كل سطر يذكر: ما تغيّر، والمكان (Figma أو التوثيق)، ورابط طلب التعديل لو موجود.

## 2026-11-16
### Figma
- **ملف جديد هو المرجع:** [`mCPCipJETTjSW7GD8vsrzY`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App) بدل `HWnOHugM9Pc54J8aui4Hww`. نسخة بنفس الـ node IDs، وفيها صفحة `cover` جديدة (`8:114`).
- تنفيذ [نقل بيزنس الزيارات من Enaya](../changes/2026-11-16-enaya-visits.md):
  - شاشات جديدة: `show_visits/previous`، و`orders/visits/*` (تأجيل، تقييم العاملة، تأكيد ونتيجة التفضيل والحظر).
  - `show_visits` اتغير اسمها لـ `show_visits/upcoming`.
  - كومبوننتس: `visit_details` بقى component set بـ 5 متغيرات، وجديد: `calendar`، `worker_rating_summary`، `worker_rating_criterion`.
- `hourly_offers/offers_filtration_bottom_sheet` (438) اتعمل من جديد (`9098:22052` مكان `7776:20728`).
- تعديلات مقاسات: `visits_bottom_sheet` 516 ← 532، `monthly_offers/offers_summary_popup` 338 ← 340، `addresses/add_new_address/edit_selected` 574 ← 576.
- section تجريبي `_iPhone Duo Adaptation – home` في صفحة `screens` (S-08).

### التوثيق
- طلب تعديل جديد: [نقل بيزنس الزيارات من Enaya](../changes/2026-11-16-enaya-visits.md)، والحالة بقت `منفّذ`.
- تغيير الـ file key في `AGENTS.md` و`README.md` و`client.json` وكل لينكات المكوّنات والـ foundations.
- feature جديدة: [visits.md](../product/features/visits.md)، و[audit المقارنة](../design-system/audits/2026-11-16-enaya-visits-comparison.md).
- تحديث `orders.md` و`overview.md` و`organisms.md` و`molecules.md` و`glossary.md` و`status.md`.
- إعادة توليد [screens.json](../data/screens.json) و[screens-index.md](../design-system/mobile/screens-index.md) (102 إطار).
- [deviations.md](../brand/deviations.md): تحديث S-01 وC-05، وإضافة S-05 لحد S-09.
- `brand.json` متولّدش من جديد من الملف الجديد. محتاجين نتأكد إن المتغيرات والـ text styles زي ما هي **(يحتاج تأكيد)**.

## 2026-11-15
### التوثيق
- إنشاء التوثيق الأولي للمشروع: البيزنس، الـ features، الهوية، التوكنز، المكوّنات، فهرس الشاشات.
- استخراج المتغيرات (`primitives`: 80، و`tokens`: 126) والـ text styles (11) من Figma إلى [brand.json](../brand/brand.json).
- توليد [screens.json](../data/screens.json) و[screens-index.md](../design-system/mobile/screens-index.md) (95 إطاراً).
- المراجعة الأولية: [audits/2026-11-15-initial-audit.md](../design-system/audits/2026-11-15-initial-audit.md)، والانحرافات في [deviations.md](../brand/deviations.md).

### Figma
- لا توجد تغييرات.
