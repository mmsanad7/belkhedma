# سجل التغييرات

أحدث التغييرات في الأعلى. كل سطر يذكر: ما تغيّر، والمكان (Figma أو التوثيق)، ورابط طلب التعديل لو موجود.

## 2026-11-24
### Figma: ربط شيتات «توصيل للمنزل»
- [`worker_selection_method_bottom_sheet/app_delivery`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-24066): «موافق» اتربط بـ [`choose_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-22500).
- [`worker_selection_method_bottom_sheet/receive_delivery`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-24770):
  - «موافق» اتربط بـ [`offer_details/worker_selected`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-23392).
  - «من الشركة» بقى `Swap overlay` بدل `Change to` القديم.
- اتراجعت كل روابط الحالات التمانية على الجدول اللي في [قرار 0013](../decisions/0013-worker-selection-sheet-from-excp.md)، ومفيش اختلاف.

### Figma: رحلة الأفراد جاهزة للتسليم ([قرار 0015](../decisions/0015-monthly-flow-aligned-with-excp.md))
- صفحات جديدة:
  - [`monthly_offers/choose_worker/more_workers`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-25915)
  - [`workers/worker_photo_viewer_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-25815)
  - [`monthly_offers/contract_details`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-25517)
  - [`monthly_offers/terms_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-25712)
- الروابط زي مسار excp:
  - «تأكيد الحجز» بيودّي على `contract_details`، و«التالي» بيودّي على `reservation_successfully`.
  - الشروط بتفتح شيت الشروط.
  - «اعرض المزيد» بيودّي على `more_workers`، وصورة العاملة بتفتح العارض.
- تصليحات:
  - «تصفية» اتصلحت، ورابط الفريم كله اتشال.
  - «استعراض كل الباقات» كان بيودّي على فريم متجاهل.
  - اتشال رابط زيادة في `choose_worker`، و22 action من غير وجهة، و`Change to` قديم في `app_delivery`.
- 6 شيتات اتبنوا تاني على فريم متظبط على [قرار 0009](../decisions/0009-bottom-sheet-overlay-interaction.md) واتوجّهت ليهم الروابط، فـ [S-12](../brand/deviations.md) اتقفل. الـ IDs الجديدة:
  - [`offers_filtration_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26522)
  - [`worker_video_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26601)
  - [`workers_filtration_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26680)
  - [`replace_worker_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26768)
  - [`favorite_replaced_worker_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26847)
  - [`replace_worker_result_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26926)
- [`offer_details/worker_selected`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-23392): «خدمات اضافية» في ملخص السعر بقت «مصاريف التوصيل : 80».

### التوثيق
- [قرار 0015](../decisions/0015-monthly-flow-aligned-with-excp.md).
- [monthly-and-medical.md](../product/features/monthly-and-medical.md): الرحلة كاملة وجدول بيقابل كل شاشة بـ excp.
- تحديث [status.md](../status/status.md) (الأفراد جاهزة للتسليم) و[الذاكرة](../memory/MEMORY.md):
  - 3 دروس عن Figma (إعدادات الـ overlay، والـ slots، والروابط بين الصفحات).
  - الـ 4 اختلافات عن excp.
- تحديث الروابط للـ IDs الجديدة في `workers.md` و`visits.md` و`0006`، وإعادة توليد `screens.json` و`screens-index.md` (122 إطار).

### قرار: excp هو المرجع بدل معين
- [قرار 0014](../decisions/0014-excp-replaces-mueen-as-reference.md) (منة): ملف [`excp_base_app_atomic`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=0-1) هو المرجع من النهارده.
  - اتحدّث الـ Guideline في `AGENTS.md`، و[الذاكرة](../memory/MEMORY.md)، و[mueen-workers.md](../product/references/mueen-workers.md) اتعلّم إنه مرجع قديم.
  - قاعدة القرار المشترك مع م. سند لسه سارية على أي اختلاف عن excp.

### Figma: شيت اختيار العاملة بعناصر شيت فلترة العروض وأيقونات لكل اختيار
- الـ template [`worker_selection_method_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9335-5182) اتعاد بناؤه بعناصر [`hourly_offers/offers_filtration_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=585-4041):
  - `filter_section` + كروت `filtration_elements` بأيقونات، والمختار `Variant2`.
  - الفروع كروت نصية.
  - العناوين `section_header`.
- أيقونات جديدة على صفحة icons:
  - [`ic_from_app`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9341-24422) و[`ic_from_company`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9341-24423): اتولّدوا بـ Figma AI.
  - [`ic_home_delivery`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9341-24424): اترسمت يدوي ([C-08](../brand/deviations.md)).
- الفريمات التمانية `monthly_offers/worker_selection_method_bottom_sheet[/<state>]`:
  - اتعملها instances جديدة، لأن محتوى الـ slot القديم كان متنسخ فيها.
  - اتربطت من جديد: الكروت بـ `Swap overlay`، و«موافق» بـ `Navigate`.
- `section_header` في شيت فلترة العاملات و`choose_worker` و`replace_worker`: العنوان اتعمله override لليمين ([C-07](../brand/deviations.md)).

### التوثيق
- تحديث [قرار 0013](../decisions/0013-worker-selection-sheet-from-excp.md) و[workers.md](../product/features/workers.md) و[deviations.md](../brand/deviations.md) (C-07، C-08)، وإعادة توليد `screens.json` و`screens-index.md`.

### Figma: شيت «ما هي خياراتك المفضلة؟» من ملف excp ([قرار 0013](../decisions/0013-worker-selection-sheet-from-excp.md))
- template جديد [`worker_selection_method_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9335-5182) على صفحة templates:
  - 8 حالات: `default`، `app`، `app_company`، `app_delivery`، `company_branch`، `receive`، `receive_company`، `receive_delivery`.
  - متبني من `bottom_sheet` و`default_card` و`chips` و`address_item` و`contract_information_chip` و`text_buttons`، والـ chips بتعمل `Change to` بين الحالات.
- 8 فريمات على screens بدل الفريم القديم `9302:22310` اللي اتمسح:
  - [`monthly_offers/worker_selection_method_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-23557)، و7 حالات تحته.
  - اتنسخوا من فريم متظبط على [قرار 0009](../decisions/0009-bottom-sheet-overlay-interaction.md).
- الروابط:
  - «الحصول على العرض» في ملخص العرض بيفتح `default`.
  - الـ chips بتبدّل الحالة بـ `Swap overlay`.
  - «موافق» بيودّي لـ [`choose_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-22500) أو [`offer_details`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=892-11054) أو [`offer_details/worker_selected`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-23392).

### التوثيق
- [قرار 0013](../decisions/0013-worker-selection-sheet-from-excp.md)، وتحديث [0008](../decisions/0008-monthly-worker-selection-flow.md) و[workers.md](../product/features/workers.md) و[monthly-and-medical.md](../product/features/monthly-and-medical.md) و[templates.md](../design-system/mobile/templates.md).
- [S-12](../brand/deviations.md): فريم طريقة الاختيار طلع من القائمة، واتضاف حل نسخ الفريم المتظبط.
- [الذاكرة](../memory/MEMORY.md):
  - ملف excp اتضاف كمرجع (منة: «زي معين ولكن متوضح أكتر والروابط فيه صح»).
  - السؤالين 2 و5 من فروق معين اتقفلوا.
- إعادة توليد `screens.json` و`screens-index.md` (118 إطار).

### Figma: مطابقة شغل العاملات مع قرارات 0009 و0010 و0011
- [قرار الساعة](../decisions/0012-hourly-workers.md) رقمه بقى 0012 بدل 0009، لأن رقم 0009 اتاخد لـ [إعدادات الـ bottom sheet](../decisions/0009-bottom-sheet-overlay-interaction.md).
- الـ popups الجديدة اتغير اسمها لـ `_bottom_sheet` ([S-11](../brand/deviations.md)):
  - [`orders/visits/replace_worker_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-24296)
  - [`orders/visits/favorite_replaced_worker_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-24319)
  - [`orders/visits/replace_worker_result_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-24345)
- 21 interaction بتفتح شيتات العاملات اتظبطوا على [قرار 0009](../decisions/0009-bottom-sheet-overlay-interaction.md): Open overlay، Move in ↑، Ease in and out، 300ms. التنقل بين الـ popups كان `Swap overlay` وبقى `Open overlay`.
- إعدادات الفريم نفسه (Position، Background، Close outside) مش بتتعدل من الـ API، فاتسجلت في [S-12](../brand/deviations.md).
- الـ 91 interaction التانيين اللي مش ماشيين على 0009 قدام، ومش من شغل العاملات، اتسابوا للمراجعة الشاملة المؤجلة.

### التوثيق
- [رسالة م. سند](../memory/messages-to-menna.md) عن قرار 0007 اتوصّلت لمنة واتعلّمت `[x]`.
- [قرار 0012](../decisions/0012-hourly-workers.md): «عدد العاملات» متعلّم إنه مختلف عن معين ومحتاج قرار مشترك، والاستبدال متعلّم إنه معتمد على 0007 اللي محل مراجعة.
- [الذاكرة](../memory/MEMORY.md): سطر لقرار 0012، وسؤالين مفتوحين: عدد العاملات وإعدادات الـ overlay.

### Figma
- العاملات في خدمات الساعة ([قرار 0012](../decisions/0012-hourly-workers.md)):
  - `visit_details`: في الكروت المفتوحة (`upcoming/expanded`، `previous/expanded`، `previous/expanded_rated`) اتضاف `worker_row`، وفيه اسم العاملة + «عرض الملف» (`text_buttons` `card_button`). وفي القادمة اتضاف «استبدال العاملة» (`text_buttons` `outlined` small) جنب «تأجيل الزيارة».
  - فريمات جديدة:
    - `hourly_offers/offer_details/assigned_workers`
    - `workers/worker_profile_bottom_sheet/view` و`/replace_worker`
    - `orders/visits/replace_worker`، و`replace_worker_bottom_sheet`، و`favorite_replaced_worker_bottom_sheet`، و`replace_worker_result_bottom_sheet`
  - كل ده من مكوّنات موجودة: `bottom_sheet`، `default_card`، `contract_information_chip`، `outline_notifications`، `section_header`، `tabs`، `input_fields`، `process_result_container`، `worker_card`.
  - البروتوتايب: رحلة الاستبدال مربوطة من الزيارات القادمة للنتيجة، و«عرض الملف» مربوط في الزيارات وتفاصيل طلب الساعة.
- نص سؤال طريقة الاختيار في الأفراد بقى بالفصحى زي باقي التطبيق: «كيف تريد اختيار العاملة؟». ونص البحث بقى «ابحث باسم العاملة».

### التوثيق
- قرار [0012](../decisions/0012-hourly-workers.md).
- تحديث `workers.md` و`visits.md` و`hourly-services.md` و`organisms.md` و`glossary.md` و`status.md` والـ audit.
- `deviations.md`: `state4` و`state5` في `process_result_vectors` اتضافوا لـ C-02.
- إعادة توليد `screens.json` و`screens-index.md` (111 إطار).

## 2026-11-23
### التوثيق: الروابط في الشات
- [قرار 0011](../decisions/0011-document-everything-with-links.md) اتوسع: أي حاجة ينفع يكون ليها رابط (commit، قرار، ملف، عنصر في Figma) لازم تبقى رابط في الرد في الشات كمان. القاعدة اتضافت في `AGENTS.md` والذاكرة.

### التوثيق: قرار 0011، وتصحيح رقم S-11
- [قرار 0011](../decisions/0011-document-everything-with-links.md): أي رسالة أو طلب أو تعديل يتوثق ويترفع أول بأول لكل الناس، وأي مراجعة أو ملاحظة لازم فيها رابط للعنصر. القاعدة اتضافت في `AGENTS.md` والذاكرة وتذكير الـ hook.
- [deviations.md](../brand/deviations.md): بند الـ `_popup` كان واخد رقم `S-06`، والرقم ده كان مستخدم قبل كده. بقى `S-11`، ومعاه روابط Figma لكل الـ 7 فريمات. واتحدثت كل الإشارات ليه.
- الذاكرة: الخطوة الجاية بقت مناقشة فروق معين مع منة يوم 2026-11-24 الصبح.

### التوثيق: رسالة لمنة، وقرار 0007 محل مراجعة
- ملف جديد [memory/messages-to-menna.md](../memory/messages-to-menna.md): رسائل م. سند لمنة. الـ hook بيوصّلها في أول طلب منها، لحد ما تتعلّم `[x]`.
- أول رسالة (😅😅😅😅، نبرة خفيفة): الاختلاف عن معين في [قرار 0007](../decisions/0007-worker-selection-from-offer-company.md) مختلف عن طلب الشباب، ومحتاج قرار مشترك. 0007 بقى «محل مراجعة».
- قاعدة جديدة في `AGENTS.md` والذاكرة (طلب الشباب): بيزنس معين هو المرجع، وأي اختلاف عنه محتاج قرار مشترك مع م. سند.

### الريبو: hook بداية الجلسة
- `.claude/settings.json` + `.claude/hooks/session-check.sh`: لأي مستخدم غير `mmsanad7`، في الجلسة الجديدة أو بعد أكتر من 30 دقيقة، الـ hook بيعرض حالة الـ sync، والقرارات الجديدة ومين ضافها، وتذكير التوثيق. ملف الوقت `.claude/.last-prompt` في `.gitignore`.

### التوثيق: بروتوكول بداية الجلسة لمنة
- `AGENTS.md`: لما منة تبدأ جلسة جديدة أو ترجع بعد أكتر من 30 دقيقة، نسألها عن الـ sync، ونعرض القرارات الجديدة ومين ضافها، ونفكّرها إن م. سند بيأكد على التوثيق.
- قرارات 0009 و0010: صاحب القرار بقى «م. سند».
- الذاكرة: جدول القرارات فيه مين ضاف كل قرار، و«ببزنس معين» اتوضح إن المقصود بيه تطبيق معين، واتسجلت الفروق بينه وبين قرار 0008.

### التوثيق: تجميع شغل Menna في الذاكرة
- [memory/MEMORY.md](../memory/MEMORY.md): ملخص القرارات من 0001 لـ 0010، وطريقة الشغل والتوصيات اللي اتّبعت من 2026-11-16 لـ 2026-11-23، والتطبيقات المرجعية، والـ backlog، والأسئلة المفتوحة.

### التوثيق: قرار 0010، وتسمية الـ popups
- [قرار 0010](../decisions/0010-reuse-components-first.md): نستخدم المكوّنات الموجودة الأول، والجديد يتبني بمبادئ Atomic Design.
- [S-11](../brand/deviations.md) في الـ deviations: 6 فريمات `*_popup` غالباً bottom sheets اسمها غلط، والتسمية هتتعدل بعدين. قرار 0009 اتوسع وبقى يشملها.

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
