# سجل التغييرات

أحدث التغييرات في الأعلى. كل سطر يذكر: ما تغيّر، والمكان (Figma أو التوثيق)، ورابط طلب التعديل لو موجود.

## 2026-11-26

### Figma: الفلترة في «استبدال العاملة» (طلب منة)
- **الشاشة:** [`orders/visits/replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23874).
- **«تصفية» اتشالت:** اتمسح الـ `sorting_dropdown` «تصفية» (كان بيفتح [`workers_filtration_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26680))، واتمسح معاه الـ frame `filtration_options` اللي كان فوق، واللي جواه `filtration_selected` المخفي. المحتوى بقى يبدأ من y=96.
- **صف جديد تحت البحث** [`filtration_row`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9633-25778): على الشمال «رتب بـ» ([`sorting_dropdown`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23881)، نفس الـ instance بعد ما اتنقل)، وعلى اليمين [`filtration_chips`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9633-25779).
- **التبويبات بقت chips فلترة:** `workers_tabs` (الكل / سبق التعامل معها / المفضلة) اتشال، ومكانه chipين من [`chips` `state=not_active_with_count`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9634-25765). الـ chip الأولى «المفضلة» وجنبها 4 ([9647:25682](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9647-25682))، والتانية «سبق التعامل معها» وجنبها 8 ([9647:25678](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9647-25678)). تبويب «الكل» اتشال، على أساس إن لو مفيش chip مختارة بتظهر كل العاملات **(يحتاج تأكيد)**.
- **حالات جديدة في الـ atom [`chips`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=41-354):** منة ضافت حالتين فيهم خانة للعدد، كانوا متسمّيين `state3` و`state4`.
  - **الأسماء:** بقوا [`not_active_with_count`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9634-25765) و[`active_with_count`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9634-25822). وجوّاهم الـ frame اتسمّى `count_box`، والرقم اتسمّى `count`.
  - **الإطار:** الـ component set اتوسّع علشان يشيل الحالات الجديدة. `not_active` و`active` فضلوا على عرضهم الأصلي 46.
- **الـ active:** الربط معمول على الـ variants في الـ component نفسه. الضغط على `not_active_with_count` بيحوّلها لـ `active_with_count`، والضغط تاني بيرجّعها (Change to، Dissolve، 200ms). كده الضغطة على الـ chip بتشغّلها وبتقفلها.
- **محاولات اترجعت في نفس اليوم:**
  - الأولى كانت Boolean `has_count` على atom [`chips`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=41-354)، واتشال.
  - التانية كانت instances من [`sorting_dropdown`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=41-365)، والضغط عليها كان بيحوّلها لـ `branded`. دي اتمسحت لما منة طلبت `state3`.
  - المكوّنين رجعوا زي ما كانوا بالظبط.
- **الروابط القديمة:** التبويبات كانت بتودّي على `show_visits/previous`، وده رابط قديم ([قرار 0019](../decisions/0019-replace-worker-before-payment.md))، فاتشال معاها.

## 2026-11-25

### Figma: «زيارات العقد» في تأكيد حجز الساعة (طلب منة)
- **من slot لفريم عادي:** في template [`reservation_success`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2485-23331) (`type=default`) الـ slot `extra_content` اتشال، ومكانه frame عادي [`contract_visits`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9551-9921). الـ Boolean `has_extra_content` اتغير اسمه لـ `has_contract_visits`. القسم شغال على on في [`hourly_offers/reservation_successfully`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-14094) بس.
- **روابط الكروت:** اتعملت تاني على الشاشة. الـ 4 كروت بتفتح [`current_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9442-26015) كـ overlay (Move in، 300ms).
- **العنوان:** «العاملات على زيارات العقد» بقى «زيارات العقد».
- **الـ hint:** اتضاف تحت العنوان: «لا تقلق، بعد الدفع يمكنك استبدال العاملة واختيار عاملة محددة، وإدارة جميع زياراتك بسهولة.»
- **variant جديد:** `status=hint` ([9551:8037](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9551-8037)) في [`outline_notifications`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=819-4927)، بخلفية `primary/50`.
- **أيقونة جديدة:** [`ic_lightbulb`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9551-8034) في صفحة icons، لأن مكانش فيه أيقونة لمبة.

### Figma: أيقونة «جاري تأكيد الحجز» (طلب منة)
- [`process_result_vectors`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=713-3343): اتضاف variant جديد `state=reservation_in_progress` ([9539:5](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9539-5)) فيه أيقونة [`ic_alarm_clock`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=6002-30832) الموجودة مصغّرة لـ 40. ده بدل التقويم بعلامة صح، لأنه معناه إن الحجز اتأكد خلاص.
- الأيقونة الجديدة اتحطت في variant `state=with_progress` من [`process_result_container`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=6755-19720)، وده الـ variant اللي بيظهر في [`hourly_offers/reservation_in_progress`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=6744-18214).

### Figma: زرار الإغلاق بيقفل كل الـ bottom sheets (طلب منة)
- [`bottom_sheet_header`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1227-11580): أيقونة الإغلاق (`ic_popup_close`) اتسمت `close_icon` واتحط عليها `On click → Close overlay` في الكمبوننت نفسه. كل الشيتات اللي بتستخدم الهيدر خدت الرابط.
- مراجعة صفحة `screens`: 39 شيت. 35 زرار إغلاق بقوا بيقفلوا، و3 شيتات زرار الإغلاق فيها مخفي من الأساس (`hourly_offers/offers_filtration_bottom_sheet` ×2، و`company_selection_bottom_sheet`). علامات × التانية في `filters_bottom_sheet/with_selected_filters` بتاعة شيل الفلتر من الـ chips، مش إغلاق الشيت.
- التوثيق: `molecules.md`، والذاكرة.

### Figma: «فيديو تعريفي» بحلقة حوالين صورة العاملة (طلب منة)
- منة اختارت [`video_v2_a_story_ring`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9490-22323) بتعديلها: العلامة تحت الصورة تشغيل بس، 32×24.
- molecules جديدة (من `profile_avatar_photo` و`ic_play` وgradient الزرار الأساسي ومتغير `bg_white`):
  - [`video_play_tag`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9524-1634) `state=default`.
  - [`video_avatar_ring`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9524-1642) `state=default`، وBoolean `has_video` بيتحكم في الحلقة والعلامة.
- [`worker_profile`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9311-24186): `worker_avatar` اتغير لـ `video_avatar_ring` (اسمه `worker_video_avatar`، exposed). زرار «فيديو تعريفي» (`text_buttons` see_all) اتشال، والـ Boolean `show_video` اتشال.
- الرابط: الضغط على `worker_video_avatar` في الـ 4 شيتات (`worker_profile_bottom_sheet`، `/view`، `/replace_worker`، `/current_worker`) بيفتح [`worker_video_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26601) ([قرار 0009](../decisions/0009-bottom-sheet-overlay-interaction.md)). الشيتات بقت 393×533.
- التوثيق: `molecules.md`، و`organisms.md`، و`workers.md`، وقرار 0006، والذاكرة، وفهرس الشاشات.

### Figma: تثبيت الهيدر وزرار الدفع في template تأكيد الحجز (طلب منة)
- [`reservation_success`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2485-23331):
  - `type=default`: `reservation_status` و`extra_content` اتحطوا جوه frame جديد `scroll_content` (Fill، `Clip content`، `Overflow: Vertical`). الـ header فوق وزرار «ادفع» تحت بقوا برا الاسكرول، فبيفضلوا ثابتين. ومساحة 32 تحت الزرار.
  - `type=lead`: نفس الفكرة، الـ header ثابت والمحتوى بيسكرول.
  - الـ padding الجانبي اتنقل جوه `scroll_content` علشان ظل الكروت ميتقصش. وزرار «ادفع» عرضه ثابت 361 في كل الـ instances.
- [`hourly_offers/reservation_successfully`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-14094): الـ instance بقى 852، والاسكرول بقى جوه الـ template، فشلت `Overflow` من الفريم.
- كل صفحات تأكيد الحجز (الساعة والأفراد والوساطة) خدت التعديل. والصفحات القصيرة زرار الدفع فيها بقى في آخر الشاشة.
- التوثيق: `templates.md`، والذاكرة.

### Figma: طول صفحة تأكيد الحجز في الساعة والاسكرول (طلب منة)
- [`hourly_offers/reservation_successfully`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-14094): الفريم رجع 393×852، و`Clip content` on، و`Overflow` = Vertical. الـ template جوه طوله 972 (المحتوى 940 + 32 مساحة تحت زرار «ادفع»)، فالصفحة بتسكرول.
- [`hourly_offers/offer_details/days_selected`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-24395): رجع 852 (كان hug بـ 718).
- التوثيق: الذاكرة، وفهرس الشاشات.

### Figma: رفض مقترحات الملف الشخصي والفيديو، و4 تصميمات جديدة للفيديو (طلب منة)
- مقترحات الملف الشخصي التلاتة اترفضت، والملف الحالي معتمد. اتحط قبل اسمها `_` ([قرار 0003](../decisions/0003-underscore-ignored.md)). ومقترحات الفيديو الخمسة وsection `proposals/worker_video_entry` اتحط قبلهم `_` كمان.
- [`proposals/worker_video_entry_v2`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9490-22322) في `draft_screens`: تصميمات جديدة (استثناء من شرط الكمبوننت الموجودة بموافقة منة)، والألوان من المتغيرات والـ gradient بتاع الزرار الأساسي:
  - [`video_v2_a_story_ring`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9490-22323): حلقة متدرّجة حوالين صورة العاملة وتحتها «فيديو ▶».
  - [`video_v2_b_gradient_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9490-22618): كارت متدرّج فيه «تعرّف على …» و«فيديو تعريفي · 0:45»، وزرار تشغيل أبيض بحلقات نابضة.
  - [`video_v2_c_reel_preview`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9490-22856): معاينة طولية من الفيديو (64×100) بزرار تشغيل ومدة، وجنبها «فيديو تعريفي» ووصف.
  - [`video_v2_d_waveform`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9490-23094): مشغّل زي الرسايل الصوتية: زرار تشغيل متدرّج، وموجة، والمدة.

### Figma: المهارات بنفس شكل بيانات العاملة (طلب منة)
- [`worker_profile`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9311-24186): الـ `badges` في «المهارات المعتمدة» اتغيرت لـ `contract_information_chip` `state=with_bg` (النقطة + اسم المهارة، والـ label مخفي، و`has_icon` off)، زي الديانة والخبرة والجنسية. السطر بيلف لو المهارات كتير. اتطبق على كل شيتات الملف الشخصي.
- نفس التعديل في مقترحات `draft_screens` (الملف الشخصي التلاتة، والفيديو الخمسة).
- التوثيق: `workers.md`، والذاكرة.

## 2026-11-24

### Figma: المهارات قبل النبذة، و5 مقترحات لـ «فيديو تعريفي» (طلب منة)
- [`worker_profile`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9311-24186): «المهارات المعتمدة» بقت قبل «نبذة عن العاملة». اتطبقت على كل شيتات الملف (`worker_profile_bottom_sheet` و`/view` و`/replace_worker` و`/current_worker`). واتعدّل نفس الترتيب في مقترحات الملف الشخصي في `draft_screens`، وفي مقترح التبويبات بقى تبويب «المهارات» هو الأول والمختار.
- [`proposals/worker_video_entry`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9464-23504) في `draft_screens` (مش معتمدة):
  - [`video_proposal_1_thumbnail`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9464-22622): صورة مصغّرة (`image_ratio_2_to_1`) وفي النص زرار تشغيل، وعليها «فيديو تعريفي 0:45».
  - [`video_proposal_2_row_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9464-22804): كارت أبيض فيه «شاهد الفيديو التعريفي» و«تعرّف على العاملة في 45 ثانية»، وزرار تشغيل.
  - [`video_proposal_3_on_avatar`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9464-22983): زرار تشغيل صغير على صورة العاملة، وتحتها «اضغط على الصورة لمشاهدة الفيديو التعريفي».
  - [`video_proposal_4_pill`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9464-23159): chip «فيديو تعريفي» بأيقونة تشغيل جنب التقييم.
  - [`video_proposal_5_secondary_button`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9464-23335): زرار ثانوي بعرض الشاشة «شاهد الفيديو التعريفي».
- التوثيق: قرار 0006 (ترتيب الملف)، والذاكرة.

### Figma: إخفاء بيانات الكارت، ونقل العاملات لصفحة تأكيد الحجز في الساعة (طلب منة)
- [`payment_methods`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=819-4024): `card_container` (رقم الكارت والاسم والانتهاء وCVV) و`security_notice` (Escrow) بقوا مخفيين في الكمبوننت، فاختفوا من كل صفحات تأكيد الحجز. لوجوهات الدفع والعنوان لسه ظاهرين.
- template [`reservation_success`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2485-23331) (`type=default`): اتضاف slot `extra_content` بعد `reservation_status`، ومعاه Boolean `has_extra_content` (افتراضي off، فباقي الصفحات زي ما هي).
- [`hourly_offers/reservation_successfully`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-14094): `has_extra_content` = on، وقسم `assigned_workers` (العنوان، و4 `visit_worker_card` بروابطهم، والتنبيه) اتنقل جوه الـ slot. الصفحة بقت 393×940 (وفي 2026-11-25 رجعت 852 باسكرول).
- [`hourly_offers/offer_details/days_selected`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-24395): ده الفريم اللي كان اسمه `offer_details/assigned_workers`، واتغير اسمه بعد ما القسم اتنقل منه. طوله بقى 718.
- التوثيق: تحديث قرار 0018 و0019 (المكان بقى زي excp)، و0012، و`hourly-services.md`، و`workers.md`، و`templates.md`، و`organisms.md`، والذاكرة، وفهرس الشاشات.

### Figma: 3 مقترحات لعرض محتوى الملف الشخصي للعاملة (طلب منة)
- في `draft_screens` (مش معتمدة)، كلها نسخ من [`workers/worker_profile_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9298-23032) ومبنية من مكوّنات موجودة:
  - [`proposal_a_compact_header`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9451-22155): `worker_card` كهيدر، و«فيديو تعريفي»، والنبذة، والمهارات.
  - [`proposal_b_photo_and_data_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9451-22828): صورة مربعة (`image_ratio_1_to_1`) جنب الاسم والتقييم والفيديو، والبيانات سطور (`contract_information_chip` `full_width`)، والنبذة، والمهارات.
  - [`proposal_c_tabs`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9451-22553): `worker_card` كهيدر، وتبويبات (`tabs`) نبذة / المهارات / الفيديو، وتحتها محتوى التبويب المختار.
- [`image_ratio_1_to_1`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9432-1130): الصورة جواه بقت `Fill` بـ auto layout، علشان تتظبط مع أي مقاس للـ instance (قبل كده مكانتش بتتصغر).

### Figma: ترتيب تأكيد الحجز في الساعة (طلب منة)
- «تأكيد الحجز» في [`hourly_offers/offer_details`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=669-3049) و[`offer_details/assigned_workers`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-24395) بقى بيودّي على [`reservation_in_progress`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=6744-18214) (كان بيودّي على `reservation_successfully`).
- `reservation_in_progress`: رابط `After delay` بقى 0.8 ثانية لـ [`reservation_successfully`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-14094) بـ Smart animate. قبل كده كان بعد 2 ثانية بيفتح `payment_successfully`.
- «ادفع» في `reservation_successfully` بقى بيفتح [`payment_successfully`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=851-5135) كـ overlay ([قرار 0009](../decisions/0009-bottom-sheet-overlay-interaction.md)). كان بيرجع لـ `reservation_in_progress`، وده كان هيعمل لفة مقفولة مع الترتيب الجديد.
- التوثيق: `hourly-services.md` (الرحلة والشرح)، والذاكرة.

### Figma: استبدال العاملة قبل الدفع في الساعة (طلب منة، [قرار 0019](../decisions/0019-replace-worker-before-payment.md))
- شيت جديد [`workers/worker_profile_bottom_sheet/current_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9442-26015): نسخة من `/view` (بنفس إعدادات الـ overlay)، بزرار «استبدال العاملة» بيودّي على [`orders/visits/replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23874).
- [`hourly_offers/offer_details/assigned_workers`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-24395): الـ 4 `visit_worker_card` بقوا بيفتحوا الشيت الجديد. التنبيه بقى «…ويمكنك استبدالها على أي زيارة بالضغط عليها.»
- [`replace_worker_result_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26926): «تم» بقى `Close` بدل ما يودّي على الزيارات القادمة.
- `replace_worker`: زرار الرجوع في `top_navbar` اتربط `Back`.
- التوثيق: قرار 0019 جديد، وتحديث 0012، و`hourly-services.md`، و`workers.md`، و`visits.md`، والذاكرة، وفهرس الشاشات.

### Figma: صورة العاملة مربعة في العارض، وعلامة على الصورة في الكارت (طلب منة)
- atom جديد [`image_ratio_1_to_1`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9432-1130): نفس `image_ratio_2_to_1` بس مربع 361×361 (`radius_lg`). مفيش atom لصورة مربعة قبل كده.
- [`workers/worker_photo_viewer_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-25815): الصورة الدايرية (`profile_avatar_photo`) اتغيرت لـ `image_ratio_1_to_1` بعرض الشيت. الشيت بقى 393×528.
- molecule جديد [`photo_zoom_badge`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9432-25884): دايرة بيضا 24 (`bg_white`) فيها `icon_placeholder` 16 بـ `ic_form_search` بلون `text_primary`. مفيش أيقونة تكبير في الملف، فاستخدمنا العدسة.
- [`worker_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9311-24185): الصورة اتحطت جوه `avatar_container` ومعاها `photo_zoom_badge` على الركن. رابط عارض الصورة اتنقل من `worker_avatar` لـ `avatar_container` (علشان الضغط على العلامة كمان يفتح الصورة)، واتضاف في الكروت اللي مكانش فيها (`worker_selected` و`orders/visits/replace_worker`).
- التوثيق: `atoms.md`، `molecules.md`، `organisms.md`، `icons-and-images/README.md`، `monthly-and-medical.md`، الذاكرة، وفهرس الشاشات.

### Figma: تعديلات منة على كارت العاملة، وكارت الزيارة، وأيقونة `unfavorite_worker` (طلب منة)
- [`worker_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9311-24185): اتطبقت تعديلات منة على [مقترح أ](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9380-333): صورة 80، والاسم والتقييم في سطر (`name_rating`)، والبيانات `with_bg` بتلف. الارتفاع 120 ([قرار 0017](../decisions/0017-compact-worker-card.md)).
- كمبوننت جديد [`visit_worker_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9425-7013) في organisms، من مقترح ٢ بتعديل منة ([قرار 0018](../decisions/0018-visit-first-assigned-workers.md)).
- [`hourly_offers/offer_details/assigned_workers`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-24395): `default_card` القديم اتشال، ومكانه `section_header` + 4 `visit_worker_card` + التنبيه. كل كارت بيفتح [`worker_profile_bottom_sheet/view`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23713) ([قرار 0009](../decisions/0009-bottom-sheet-overlay-interaction.md)). الشاشة بقت 393×1198.
- [`unfavorite_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9425-866): اتضافت لـ `filter_icons`، منقولة من `process_result_vectors` `state=unfavorite_worker` ومتصغّرة لـ 32.
- التوثيق: قرار 0018 جديد، وتحديث 0017، و`hourly-services.md`، و`workers.md`، و`organisms.md`، و`deviations.md` (C-08)، والذاكرة، وفهرس الشاشات.

### Figma: كارت العاملة المدمج، و3 مقترحات الزيارة فيها الأساس (طلب منة)
- [`worker_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9311-24185): اتطبق مقترح أ «مدمج» ([قرار 0017](../decisions/0017-compact-worker-card.md)). الديانة والخبرة والجنسية (`contract_information_chip` `without_bg`) بقت في سطر تحت التقييم، والمهارات و`show_skills` اتشالوا. الارتفاع 96 بدل 180، في [`choose_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-22500) و[`more_workers`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-25915) و[`worker_selected`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-23392) و[`replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23874).
- [`proposals/assigned_workers_visit_first`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9408-67) في `sand_box`: مقترح ج بتعديل منة + ١ الزيارة عنوان الكارت، ٢ التاريخ بارز، ٣ خط زمني. الألوان من المتغيرات (`buttons/btn_primary`، `primary/100`). مستنية اختيار منة.
- التوثيق: قرار 0017 جديد، وتحديث قرار 0006، و`workers.md`، و`organisms.md`، والذاكرة.

### Figma: فلترة العاملات بمكوّنات الفلترة، ومقترحات لكارت العاملة وعرض العاملات (طلب منة)
- [`workers_filtration_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26680): اتبنت تاني بنفس مكوّنات [فلترة عروض الساعة](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=585-4041): 4 `filter_section` بعنوان، وجواها `filtration_elements` (`Default` / `Variant2` للمختار) من غير أيقونات، بترتيب RTL. الشيت بقى 393×558.
- مقترحات في `sand_box` (مش معتمدة، مستنية اختيار منة):
  - [`proposals/worker_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9380-220): الحالي + أ مدمج + ب شبكة عمودين + ج صورة كبيرة وتفاصيل في سطور.
  - [`proposals/assigned_workers`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9381-355): الحالي + أ مجمّعة حسب العاملة + ب كروت أفقية + ج سطر لكل زيارة. كلهم من غير «عرض الملف» ([قرار 0016](../decisions/0016-no-buttons-in-worker-cards.md)).
- التوثيق: `workers.md`، والذاكرة.

### Figma: صورة العاملة (طلب منة)
- الصورة اللي منة ضافتها في `sand_box` اتسمت [`worker_placeholder_photo`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9365-44258) (الفريم والصورة).
- اتحطت كـ override على صورة `profile_avatar_photo` جوه [`worker_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9311-24185) و[`worker_profile`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9311-24186) و[عارض الصورة](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-25815)، فظهرت في 24 مكان (كل كروت وملفات العاملات). الـ atom نفسه ما اتغيرش.
- [S-10](../brand/deviations.md) اتقفل.

### Figma: كارت العاملة من غير زراير، وشيل «تغيير العاملة» (طلب منة، [قرار 0016](../decisions/0016-no-buttons-in-worker-cards.md))
- [`worker_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9311-24185): `profile_button` («عرض الملف») اتمسح من الكمبوننت، والـ Boolean `show_profile_button` اتشال.
- الرابط اتنقل على الكارت نفسه (16 كارت): في [`choose_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-22500) و[`more_workers`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-25915) بيفتح [الملف الشخصي](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9298-23032)، وفي [`orders/visits/replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23874) بيفتح [`replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23794). الضغط على الصورة لسه بيفتح عارض الصورة.
- [`offer_details/worker_selected`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-23392): «تغيير العاملة» اتشال، والكارت للعرض بس.
- التوثيق: قرار 0016 جديد، وتحديث قرار 0006 و0008، و`workers.md`، و`monthly-and-medical.md`، و`visits.md`، و`organisms.md`، والذاكرة.

### Figma: مسح «تفاصيل التعاقد» والشروط نهائي (طلب منة)
- الفريمين `_monthly_offers/contract_details` (`9354:25517`) و`_monthly_offers/terms_bottom_sheet` (`9354:25712`) اتمسحوا من Figma بعد ما اتأكدنا إن مفيش روابط عليهم.
- ده استثناء للصفحتين دول بس، وقاعدة «اللي يتلغي يتحط قبل اسمه `_`» لسه زي ما هي ([الذاكرة](../memory/MEMORY.md#طريقة-الشغل-والتوصيات)).
- إعادة توليد `screens.json` و`screens-index.md` (120 إطار، و5 متجاهلين). تحديث [قرار 0015](../decisions/0015-monthly-flow-aligned-with-excp.md#تحديث-2026-11-24-منة).

### Figma: فتح الفلتر لوحده، وإلغاء «تفاصيل التعاقد» والشروط (طلب منة)
- [`monthly_offers/default`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=892-10966): رابط الشاشة `After delay 0.2s` اللي بيفتح [الفلتر](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26522) لوحده اترجّع. كان اتشال بالغلط في تصليحات قرار 0015، والحركة بقت على [قرار 0009](../decisions/0009-bottom-sheet-overlay-interaction.md).
- «تأكيد الحجز» في [`offer_details`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=892-11054) و[`offer_details/worker_selected`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-23392) بقى بيودّي على [`reservation_successfully`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-15386) على طول، والـ checkbox بتاع الشروط ملوش رابط.
- الفريمين اتضاف قبل اسمهم `_` بدل ما يتمسحوا ([قرار 0003](../decisions/0003-underscore-ignored.md)): [`_monthly_offers/contract_details`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-25517) و[`_monthly_offers/terms_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-25712).

### التوثيق
- [قرار 0015](../decisions/0015-monthly-flow-aligned-with-excp.md): اتضاف تحديث، والاختلاف رقم 5 عن excp.
- [monthly-and-medical.md](../product/features/monthly-and-medical.md): الرحلة من غير الصفحتين، وفتح الفلتر لوحده.
- [الذاكرة](../memory/MEMORY.md): قرار م. منة بتحديث الريبو أول بأول، وإن روابط `After delay` مقصودة، وإن تفاصيل التعاقد والشروط مش في البيزنس.
- إعادة توليد `screens.json` و`screens-index.md` (120 إطار، و7 متجاهلين).

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
