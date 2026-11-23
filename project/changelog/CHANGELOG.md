# سجل التغييرات

أحدث التغييرات في الأعلى. كل سطر يذكر: ما تغيّر، والمكان (Figma أو التوثيق)، ورابط طلب التعديل لو موجود.

## 2026-11-23
### التوثيق: قرار 0010، وتسمية الـ popups
- [قرار 0010](../decisions/0010-reuse-components-first.md): نستخدم المكوّنات الموجودة الأول، والجديد يتبني بمبادئ Atomic Design.
- [S-06](../brand/deviations.md) في الـ deviations: 6 فريمات `*_popup` غالباً bottom sheets اسمها غلط، والتسمية هتتعدل بعدين. قرار 0009 اتوسع وبقى يشملها.

### التوثيق: إعدادات البروتوتايب للـ bottom sheets
- [قرار 0009](../decisions/0009-bottom-sheet-overlay-interaction.md): أي bottom sheet بيتفتح كـ overlay من تحت بإعدادات ثابتة. القاعدة اتضافت في `AGENTS.md` والذاكرة.

### التوثيق: ذاكرة الشغل في الريبو
- ملف جديد [memory/MEMORY.md](../memory/MEMORY.md) لحفظ أي معلومة أو قرار أو تفضيل أول بأول، و`AGENTS.md` بقى بيطلب قراءته أول كل جلسة وتحديثه على طول.

### Figma: تظبيط كيان العاملة والأفراد على نظام الـ atomic design
- `worker_info_chip` اتمسح (كان molecule جديد). مكانه `contract_information_chip` `state=with_bg` الموجود: `label` «الديانة / الخبرة / الجنسية» و`value`.
- `worker_card` و`worker_profile` بقوا component sets بـ `state=default` (`9311:24185`، `9311:24186`) زي باقي المكوّنات، وبنفس ستايل الـ set بتاع `offers_card`.
- `worker_profile`:
  - زرار الفيديو بقى `text_buttons` `state=see_all` بدل frame.
  - «نبذة عن العاملة» و«المهارات المعتمدة» بقوا `default_card` بالـ slot.
  - خاصية `bio` اتشالت، لأن النص جوه slot وبيتعدل في الـ instance.
- الـ bottom sheets الأربعة اتبنوا على organism `bottom_sheet` (`585:3350`) بنفس الـ IDs بتاعتهم: الملف الشخصي، الفيديو، طريقة الاختيار، فلترة العاملات.
- فلترة العاملات: عناوين الأقسام بقت `section_header`.
- `choose_worker`: جملة الشركة بقت `section_header`.
- شيت الفيديو: `ic_play` بقى جوه `icon_placeholder` `state=size_24`.
- `monthly_offers/worker_profile_bottom_sheet` اتمسح لأنه كان مكرر. `workers/worker_profile_bottom_sheet` بقى فيه زرار «اختيار العاملة»، والبروتوتايب اتربط من جديد.

### Figma
- نسخة في Version History اسمها «قبل اضافة اي شيء يخص العاملة» (عملتها Menna)، وفي الريبو tag اسمه `before-workers-2026-11-23`.
- كيان العاملة ([قرار 0006](../decisions/0006-worker-entity.md)):
  - `ic_play` (`9297:5`) على صفحة icons.
  - `worker_info_chip` (`9297:1087`) على صفحة molecules.
  - `worker_card` (`9297:6771`) و`worker_profile` (`9298:6111`) على صفحة organisms.
  - شاشات جديدة: `workers/worker_profile_bottom_sheet` (`9298:23032`) و`workers/worker_video_bottom_sheet` (`9298:23100`)، و«فيديو تعريفي» مربوط بشيت الفيديو.
- اختيار العاملة في خدمات الأفراد ([قرار 0008](../decisions/0008-monthly-worker-selection-flow.md)):
  - 5 فريمات جديدة: `monthly_offers/worker_selection_method_bottom_sheet` و`choose_worker` و`workers_filtration_bottom_sheet` و`worker_profile_bottom_sheet` و`offer_details/worker_selected`.
  - البروتوتايب: «الحصول على العرض» في `monthly_offers/offers_summary_popup` بقى بيفتح سؤال طريقة الاختيار (كان بيروح لـ `offer_details`)، والرحلة كلها مربوطة لحد «تغيير العاملة».
- إلغاء تفضيل العاملة:
  - variant جديد `state=unfavorite_worker` (`9308:22869`) في `process_result_vectors` على صفحة atoms: رسمة العاملة نفسها بقلب رمادي مكسور بدل القلب الوردي.
  - فريم جديد `orders/visits/unfavorite_worker_result_popup` (`9308:24382`): «تم إلغاء تفضيل العاملة» + زرار «تم» بس. النص **(يحتاج تأكيد)**.

### التوثيق
- التظبيط: تحديث `workers.md` و`organisms.md` و`molecules.md` و`monthly-and-medical.md` وقرارات 0006 و0008، و`deviations.md` (C-07: `section_header` مش بيخبي «مشاهدة الكل»). إعادة توليد `screens.json` و`screens-index.md` (104 إطار بعد ما الملف الشخصي المكرر اتشال).
- `visits.md` و`atoms.md`: إضافة popup نجاح إلغاء التفضيل والـ variant الجديد. إعادة توليد `screens.json` و`screens-index.md` (105 إطار).
- قرار [0007](../decisions/0007-worker-selection-from-offer-company.md): اختيار العاملة بيبقى من عاملات الشركة صاحبة العرض بس.
- قرار [0008](../decisions/0008-monthly-worker-selection-flow.md): رحلة اختيار العاملة في خدمات الأفراد. تحديث `workers.md` و`monthly-and-medical.md` و`status.md` والـ audit، وإعادة توليد `screens.json` و`screens-index.md` (104 إطار).
- قرارات: [0004](../decisions/0004-favorite-is-pinning.md) (التفضيل = التثبيت)، و[0005](../decisions/0005-workers-plan-excludes-mediation.md) (الوساطة برا الخطة)، و[0006](../decisions/0006-worker-entity.md) (كيان العاملة).
- feature جديدة: [workers.md](../product/features/workers.md).
- تحديث `organisms.md` و`molecules.md` و`glossary.md` و`overview.md` و`status.md`، و`deviations.md` (C-06، S-10).
- `generate-screens.ps1`: اتضافت مجموعة «العاملات» (`workers`). إعادة توليد `screens.json` و`screens-index.md`: بقوا 99 إطار بدل 97.
- مرجع جديد [mueen-workers.md](../product/references/mueen-workers.md): بيزنس العاملات في تطبيق معين (`Q0mFJNHw2R1hB37rQDVhAV`)، في مسار الساعة والمقيمة والإدارة بعد التعاقد.
- [audit مقارنة العاملات](../design-system/audits/2026-11-23-mueen-workers-comparison.md): معين ← بالخدمة، وقائمة بالحاجات المرشحة للنقل. كل بند هيتاخد فيه قرار لوحده.

### Figma
- لا توجد تغييرات.

## 2026-11-18
### Figma
- popups الحظر اتضاف قبل اسمهم `_`، فبقوا `_orders/visits/block_worker_popup` و`_orders/visits/block_worker_result_popup`، وبيتجاهلوا بقرار 0003. الفهرس بقى 97 إطار.
- `visit_details` (`9081:6048`): اتضافت boolean property اسمها `show_block_worker`، وقيمتها الافتراضية off. اتربطت بزرار «حظر العاملة» في `previous/expanded` و`previous/expanded_rated`، فالزرار اختفى وزرار «تفضيل العاملة» بقى بعرض الكارت. الـ popups بتوع الحظر فضلوا مكانهم من غير تعديل.

### التوثيق
- قرار [0002](../decisions/0002-defer-block-worker.md): تأجيل «حظر العاملة» بمفتاح on/off.
- [visits.md](../product/features/visits.md): الحظر اتشال من الرحلة والجداول والقواعد، واتحط في قسم «مؤجل».
- تحديث `orders.md` و`organisms.md` و`glossary.md` و`overview.md` و`status.md` و`deviations.md` (S-07)، والـ audit بتاع المقارنة.
- `screens.json` متغيرش، لأن الفريمات زي ما هي (102).
- قرار [0003](../decisions/0003-underscore-ignored.md): أي حاجة في Figma اسمها بيبدأ بـ `_` يتم تجاهلها. اتضافت القاعدة في `AGENTS.md`.
- سكريبت جديد [`shared/scripts/generate-screens.ps1`](../../shared/scripts/generate-screens.ps1) بيولّد `screens.json` و`screens-index.md`، وبيستبعد فريمات الـ `_` لوحده. اتشال حقل `unused_copy`، واتضاف `ignored_prefix` و`ignored_count`.
- إعادة توليد [screens.json](../data/screens.json) و[screens-index.md](../design-system/mobile/screens-index.md): بقوا 99 إطار بدل 102، لأن 3 فريمات `_*_offers/default` اتشالوا.
- [deviations.md](../brand/deviations.md): S-02 وS-08 اتقفلوا، وQ-12 في `status.md` اتحل.

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
- قرار [0001](../decisions/0001-push-every-change.md): أي تعديل يترفع على الريبو أول بأول من غير سؤال، واتضافت القاعدة في `AGENTS.md`.
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
