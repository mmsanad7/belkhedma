# 0013: شيت «ما هي خياراتك المفضلة؟» زي ملف excp (اختيار العاملة + الاستلام + الفرع)

| البند | القيمة |
|---|---|
| الحالة | معتمد |
| التاريخ | 2026-11-24 |
| صاحب القرار | منة (طلب مباشر) |

## السياق
ملف [`excp_base_app_atomic`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=0-1) زي معين، بس متوضح أكتر والروابط فيه صح. منة طلبت ننقل منه شيت اختيار العاملة ([`how_select_worker_sheet_template`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=8693-54115)) بحالاته وروابطه، مكان شيت [قرار 0008](0008-monthly-worker-selection-flow.md) اللي كان فيه «أختارها بنفسي / تختارها الشركة» بس.

## القرار
الشيت بقى زي المرجع بالظبط، بنصوصه:
- العنوان «ما هي خياراتك المفضلة؟».
- **«كيف تريد اختيار العاملة»:** من التطبيق / من الشركة.
  - **من الشركة:** «اختر الفرع المناسب لك» (قائمة فروع)، و«موافق» بيودّي لتفاصيل التعاقد اللي الشركة فيها هتختار العاملة.
  - **من التطبيق:** بيظهر «كيف تريد استلام العاملة»:
    - **من الشركة:** «اختر الفرع المناسب لك»، و«موافق» بيودّي لقائمة العاملات.
    - **توصيل للمنزل:** «مصاريف التوصيل : 80 ر.س»، و«موافق» بيودّي لقائمة العاملات.
- «موافق» مقفول (`disabled`) لحد ما الاختيارات تكمل.
- **حالات «الاستلام» لوحدها** (`receive`، `receive_company`، `receive_delivery`): لما العاملة تكون متختارة قبل كده. «موافق» بيودّي لتفاصيل التعاقد بالعاملة المختارة.

ده بيقفل سؤالين من الأسئلة المفتوحة في [الذاكرة](../memory/MEMORY.md#أسئلة-مفتوحة-لصاحب-المشروع): أسماء الخيارات بقت زي معين، و«من الشركة» بقى فيه اختيار الفرع.

## التنفيذ
- **الـ template:** [`worker_selection_method_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9335-5182) على صفحة `templates`، بـ 8 حالات بـ `state=`.
  - **تحديث 2026-11-24 (طلب منة):** الشيت بقى بعناصر شيت [`hourly_offers/offers_filtration_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=585-4041):
    - كل سؤال `filter_section`، وكل اختيار كارت `filtration_elements` بأيقونة. المختار `Property 1=Variant2` (الوردي).
    - الفروع كروت نصية من نفس العنصر.
    - العنوان فوق كل قسم `section_header`، لأن نسخة الـ `filter_section` اللي بكارتين مفيهاش هيدر ومينفعش يتضاف جوه instance.
    - مصاريف التوصيل `contract_information_chip`، و«موافق» المقفول `text_buttons` `state=disabled`.
    - (النسخة الأولى كانت `default_card` + `chips` + `address_item`، واتشالت.)
  - **أيقونات جديدة** على صفحة `icons`، في نفس جريد أيقونات الفلاتر:
    - [`ic_from_app`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9341-24422): موبايل عليه بروفايل.
    - [`ic_from_company`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9341-24423): مبنى شركة، وبيستخدم كمان لـ «الاستلام من الشركة».
    - [`ic_home_delivery`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9341-24424): عربية توصيل وبيت.
    - الأولى والتانية اتولّدوا بـ Figma AI. التالتة اترسمت يدوي، لأن الرصيد خلص ([C-08](../brand/deviations.md)).
  - جوه الـ template، الكروت بتعمل `Change to` بين الحالات زي المرجع.
- **الشاشات:** 8 فريمات `monthly_offers/worker_selection_method_bottom_sheet[/<state>]`، كل فريم فيه instance من حالة.
  - Figma مش بيسمح بروابط من صفحة `templates` لفريمات على صفحة `screens`، فالروابط اتحطت على الفريمات.
  - الكروت بتبدّل بين فريمات الحالات بـ `Swap overlay` من غير حركة، زي `Change to` في المرجع. ده تغيير حالة جوه نفس الشيت، مش فتح شيت جديد، فمش داخل في [قرار 0009](0009-bottom-sheet-overlay-interaction.md) **(يحتاج تأكيد م. سند)**.
  - فتح الشيت من ملخص العرض ماشي على 0009. والفريمات اتنسخت من فريم متظبط، فواخدة Bottom center والخلفية 25% وClose outside.
- الفريم القديم `9302:22310` اتمسح، ومكانه فريم الحالة `default`.

## يحتاج تأكيد
- [ ] حالات «الاستلام» لوحدها مش بيوصلها أي طريق في بالخدمة. في المرجع بتتفتح من «احجز الآن» في `individuals_flow/packages/chosen_worker`، وده مسار مش موجود عندنا (السؤال المفتوح رقم 1 في الذاكرة).
- [ ] الفروع: الأسماء مثال من المرجع. هل الفروع تبع الشركة صاحبة العرض ([قرار 0007](0007-worker-selection-from-offer-company.md)، محل مراجعة)؟
- [ ] «توصيل للمنزل» لازم يضيف «مصاريف التوصيل» في ملخص السعر في تفاصيل التعاقد، وده لسه مش مرسوم.

## الأثر
- بيحدّث [قرار 0008](0008-monthly-worker-selection-flow.md): أسماء الخيارات، وإضافة الاستلام والفرع.
- ملفات التوثيق: `workers.md`، `monthly-and-medical.md`، `templates.md`، `deviations.md` (S-12)، الذاكرة، `screens.json`، `screens-index.md`، والـ changelog.
