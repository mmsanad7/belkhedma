# مراجعة: خطوات استبدال العاملة قبل الدفع (الساعة) مقارنة بـ excp

- **التاريخ:** 2026-11-26
- **طلبها:** م. سند
- **النوع:** مراجعة قراءة بس، ومفيش أي تعديل اتعمل في Figma.
- **المرجع:** [`excp_base_app_atomic`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=0-1) ([قرار 0014](../../decisions/0014-excp-replaces-mueen-as-reference.md)).
- **القرار اللي بنراجعه:** [قرار 0019](../../decisions/0019-replace-worker-before-payment.md).
- **الطريقة:** تتبّعت روابط البروتوتايب في الملفين من صفحة تأكيد الحجز لحد نتيجة الاستبدال، وقارنت النصوص.

## الرحلة في الملفين

| # | excp | بالخدمة | التطابق |
|---|---|---|---|
| 1 | [`success_contract`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=733-3717): الضغط على اسم العاملة في الزيارة | [`reservation_successfully`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-14094): الضغط على كارت الزيارة | ✅ |
| 2 | [`worker_employee_sheet/replace`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5225-29576) ← «استبدال العاملة» | [`worker_profile_bottom_sheet/current_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9442-26015) ← «استبدال العاملة» | 🟡 (ف-2) |
| 3 | [`replace_worker/list`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5225-29724) | [`orders/visits/replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23874) | 🟡 (ف-3) |
| 4 | [`worker_employee_sheet/default`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5225-29757) ← «اختيار العاملة» | [`worker_profile_bottom_sheet/replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23794) ← «اختيار العاملة» | ✅ |
| 5 | [`popup_replace`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5225-29761): «نعم، اريد الاستبدال / لا، رجوع» | [`replace_worker_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26768): «تأكيد الاستبدال / إلغاء» | 🟡 (ف-4) |
| 6 | [`apply_to_other_visits`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5225-29769): «تطبيق على باقي الزيارات؟» | [`favorite_replaced_worker_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26847): «تفضيل العاملة» | ✅ «تثبيت» = «تفضيل» ([قرار 0004](../../decisions/0004-favorite-is-pinning.md)) |
| 7أ | [`pin_success`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5225-29773) ← «العودة الي الزيارات» ← `success_contract` | [`favorite_worker_result_popup/replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9663-25715) ← «تم» ← `reservation_successfully` | ✅ الوجهة. 🟡 المحتوى (ف-6) |
| 7ب | [`replace_success`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5225-29780) ← «العودة الي الزيارات» ← `success_contract` | [`replace_worker_result_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26926) ← «تم» ← `replace_worker` | ❌ (ف-1) |

## الفروق

### ف-1: بعد «هذه الزيارة فقط» العميل بيرجع لقايمة العاملات، مش لصفحة التأكيد ✅ اتقفل لقبل الدفع (2026-11-26)
> **مراجعة تانية (قبل الدفع بس):** «تم» في [`replace_worker_result_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26926) اتغيّر في Figma وبقى بيودّي لـ [`reservation_successfully`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-14094) (Dissolve). كده النتيجتين بيرجّعوا لتأكيد الحجز زي excp. اللي فاضل في رحلة قبل الدفع: كارت الزيارة في التأكيد بيفضل بالعاملة القديمة (حدود البروتوتايب)، وزرار النتيجة اسمه «تم»، وفي excp «العودة الي الزيارات». وموضوع رحلة بعد الحجز مؤجل بطلب م. سند.
>
> اللي تحت ده التحليل الأول، ومتساب للتاريخ.
- **excp:** النتيجتين بيرجّعوا لـ `success_contract` بزرار «العودة الي الزيارات».
- **بالخدمة:** [«تم»](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26926) بيرجّع لـ [`replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23874).
- منة عملت كده بقصد في 2026-11-26 ([CHANGELOG](../../changelog/CHANGELOG.md#2026-11-26)). بس ده اختلاف عن المرجع، فمحتاج قرار مشترك مع م. سند ([قرار 0014](../../decisions/0014-excp-replaces-mueen-as-reference.md)).
- **مشكلة تانية في نفس النقطة:** في البروتوتايب، العاملة اللي ظاهرة في `replace_worker` بعد الرجوع هي العاملة القديمة، فالعميل هيحس إن الاستبدال ما حصلش.

#### مراجعة ف-1 بالتفصيل (طلب م. سند، 2026-11-26)
**القاعدة في excp:** كل رحلة استبدال بترجّع العميل **للشاشة اللي بدأ منها**، في النتيجتين، بزرار «العودة الي الزيارات». ولكل رحلة نسخة منفصلة من الشيتات:

| الرحلة في excp | بتبدأ من | النتيجتين بيرجّعوا لـ |
|---|---|---|
| قبل الدفع (`hourly_flow/replace_sheet/*`) | [`success_contract`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=733-3717) | `success_contract` |
| بعد الحجز (`my_visits/replace_sheet/*`) | [`my_visits/main/coming`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=1344-9574) | [`pin_success`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5164-21393) و[`replace_success`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5164-21484) ← `my_visits/main/coming` |

**في بالخدمة الرحلتين متشاركين في نفس الشاشة ونفس الشيتات:** [`replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23874) بيتفتح من مكانين:
- قبل الدفع: من [`reservation_successfully`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-14094)، عن طريق شيت `current_worker`.
- بعد الحجز: من [`orders/hourly_order_details/show_visits/upcoming`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1587-13309).

وبعده كل الشيتات واحدة، فالوجهة اللي متحطة على «تم» بتشتغل في الرحلتين:

| النتيجة | الوجهة دلوقتي | قبل الدفع | بعد الحجز |
|---|---|---|---|
| بعد التفضيل ([`favorite_worker_result_popup/replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9663-25715)) | `reservation_successfully` | ✅ زي excp | ❌ **غلط:** العميل اللي دفع خلاص بيتودّى لصفحة تأكيد حجز جديد فيها زرار «ادفع» |
| «هذه الزيارة فقط» ([`replace_worker_result_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26926)) | `replace_worker` | ❌ مختلف عن excp | ❌ مختلف عن excp (excp بيرجّع للزيارات القادمة) |

**إزاي وصلنا هنا (من الـ git log):**
- في [`55acad8`](https://github.com/mmsanad7/belkhedma/commit/55acad8) الاتنين اتعملوا يرجّعوا لـ `replace_worker`.
- بعدها في [`2859325`](https://github.com/mmsanad7/belkhedma/commit/2859325) منة غيّرت وجهة نتيجة التفضيل بس لتأكيد الحجز.
- وفي [`2bff7db`](https://github.com/mmsanad7/belkhedma/commit/2bff7db) اتسجّل إن الاختلاف «مقصود».
- الوجهة اتحددت على أساس رحلة قبل الدفع بس، ورحلة بعد الحجز ما اتراجعتش.

**التوصية:** نمشي على قاعدة excp ونفصل الرحلتين:
- **قبل الدفع:** النتيجتين يرجّعوا لـ `reservation_successfully`.
- **بعد الحجز:** النتيجتين يرجّعوا لـ `show_visits/upcoming`.
- **التنفيذ:** Figma مش بيقدر يغيّر وجهة الرابط حسب الشاشة اللي العميل جه منها. علشان كده نعمل نسخة من `replace_worker` وشيتاته لرحلة قبل الدفع بس (زي excp)، والنسخة الحالية تفضل لبعد الحجز. والنسخ تتبني بالكومبوننتس الموجودة ([قرار 0010](../../decisions/0010-reuse-components-first.md)).
- **الأسماء المقترحة:** `hourly_offers/replace_worker/*` **(يحتاج تأكيد م. سند)**.

### ف-2: ملف العاملة الحالية ناقصه سطر التوضيح ❎ مش هتتنفذ (قرار م. سند 2026-11-27)
- في [excp](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5225-29576) فوق الزرار جملة «لست راض عن العاملة؟ يمكنك استبدال هذه العاملة بعاملة أخرى من اختيارك الآن».
- في [`current_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9442-26015) الزرار لوحده من غير الجملة دي.

### ف-3: البحث و«اعرض المزيد» في قايمة العاملات مش مربوطين ⏸ مؤجلة لعدم الاضطرار (م. سند 2026-11-27)
- في [excp](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5225-29724):
  - البحث بيفتح [`replace_worker/search`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5225-29749)، والنتايج متقسمة: من المفضلات، ومن سبق التعامل معهم، ومن الكل.
  - «اعرض المزيد من العاملات» بيفتح [`replace_worker/more`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5225-29732).
- في [`replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23874) الاتنين مش مربوطين، ومفيش فريم لحالة البحث أو لـ «المزيد».
- التبديل بين القايمة والشبكة مستبعد بقصد في [قرار 0019](../../decisions/0019-replace-worker-before-payment.md).
- **فروق في النصوص:** excp بيقول «تصفح العاملات» وبالخدمة «اختيار عاملة جديدة». excp بيقول «العاملة الحالية بالزيارة» وبالخدمة «العاملة الحالية في الزيارة».

### ف-4: الشيتات بتتفتح فوق بعض بدل ما تتبدّل ✅ اتصلّح 2026-11-27
- **excp:** من «اختيار العاملة» لحد النتيجة بيستخدم `Swap overlay`، يعني الشيت الجديد بياخد مكان القديم. و«لا، رجوع» بيعمل `Back`، فبيرجّع للملف.
- **بالخدمة:** «اختيار العاملة» و«تأكيد الاستبدال» و«هذه الزيارة فقط» بيعملوا `Open overlay`، فالشيتات بتتراكم فوق بعض. و«إلغاء» بيعمل `Close`.
- **الأثر:** العميل ممكن يشوف أكتر من شيت فوق بعض، والخلفية بتغمق مع كل شيت جديد. والأنيميشن نفسه ماشي على [قرار 0009](../../decisions/0009-bottom-sheet-overlay-interaction.md).
- **اللي اتعمل (2026-11-27، طلب م. سند):** في السلسلتين (الأصلية و`show_visits/*`)، «اختيار العاملة» و«تأكيد الاستبدال» و«هذه الزيارة فقط» بقوا `Swap overlay` بدل `Open overlay`، و«إلغاء» في شيت التأكيد بقى `Back` بدل `Close`، فبيرجّع للملف زي excp. الأنيميشن زي ما هو.

### ف-5: التنقل من الملف لقايمة العاملات ✅ اتصلّح 2026-11-27 (Dissolve في السلسلتين)
- «استبدال العاملة» بيعمل Navigate لـ `replace_worker`. excp بيستخدم `Dissolve`، وبالخدمة `Smart animate`.
- [قرار 0009](../../decisions/0009-bottom-sheet-overlay-interaction.md) مش بيغطي الـ Navigate لشاشة كاملة.

### ف-6: محتوى نتيجة التفضيل ✅ م. سند عدّله 2026-11-27
- **الرقم مش متسق:** النص بيقول «تم تفضيل العاملة في 4 زيارات من أصل **50** زيارة»، بس صفحة التأكيد فيها 4 زيارات بس. excp كاتب «9 من 10» بأرقام منطقية.
- **زرار زيادة:** فيه زرار «تواصل عبر واتساب» مش موجود في excp. غالباً جه من رحلة الزيارات، وده **(يحتاج تأكيد)**.
- **اسم الزرار:** excp «العودة الي الزيارات»، وبالخدمة «تم».
- **تعديل م. سند (2026-11-27):** في [النسخة الأصلية](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9663-25715) العنوان بقى «تم استبدال العاملة»، والنص «تم استبدال العاملة في 4 زيارات من أصل 50 زيارة، لعدم توفر إتاحتها في باقي الزيارات.». نفس النص اتنقل لـ [نسخة الزيارات](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9720-25931). «تواصل عبر واتساب» والأرقام «4 من 50» فضلوا زي ما هم.

## تحديث: اسم زرار النتيجة (م. سند، 2026-11-26)
- زرار النتيجة اسمه بقى **«رجوع إلى الزيارات»** بدل «تم»، بقرار من م. سند. excp كاتبه «العودة الي الزيارات».
- اتغيّر كـ override على `button_label` في [`replace_worker_result_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26926) و[`favorite_worker_result_popup/replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9663-25715).
- الـ popup الأصلي [`favorite_worker_result_popup`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9081-31496) (مسار الزيارات السابقة) ما اتغيّرش، وفضل «تم».

## بعد الدفع: مقارنة بـ excp (طلب م. سند، 2026-11-26)

### الرحلة في الملفين
| # | excp | بالخدمة | التطابق |
|---|---|---|---|
| 1 | [`payment_success`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5225-31674) (شاشة كاملة) ← «عرض الزيارات» | [`payment_successfully`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=851-5135) (شيت) ← «عرض تفاصيل الطلب» أو «العودة للرئيسية» | 🟡 (ب-2) |
| 2 | ← [`my_visits/main/coming`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=1344-9574) على طول | ← [`hourly_order_details`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1626-30683) ← «عرض الزيارات» ([شيت](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=7239-18272)) ← «عرض كل الزيارات» ← [`show_visits/upcoming`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1587-13309) | 🟡 (ب-2) |
| 3 | كارت الزيارة: «تفاصيل العاملة» و«تأجيل الزيارة» و«استبدال العاملة» | كارت الزيارة: «عرض الملف» و«تأجيل الزيارة» و«استبدال العاملة»، وفوقهم تنبيه التأجيل | ✅ |
| 4 | «تفاصيل العاملة» ← [ملف فيه «استبدال العاملة»](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5155-26743) وجملة «لست راض عن العاملة؟…» | «عرض الملف» ← [`worker_profile_bottom_sheet/view`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23713) فيه «تم» بس | 🟡 (ب-3) |
| 5 | «استبدال العاملة» ← [`my_visits/replace_worker/list`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=1396-13641) | ← [`orders/visits/replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23874) (نفس الشاشة اللي في قبل الدفع) | 🟡 ف-3 (البحث و«المزيد») |
| 6 | الملف ← التأكيد ← «تطبيق على باقي الزيارات؟» | نفس الشيتات اللي في قبل الدفع | ✅، وفيه ف-4 |
| 7 | النتيجتين ← «العودة الي الزيارات» ← `my_visits/main/coming` | النتيجتين ← «رجوع إلى الزيارات» ← [`reservation_successfully`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-14094) | ❌ (ب-1) |

### ب-1: العميل اللي دفع بيرجع لصفحة الدفع ✅ اتصلّح 2026-11-27 (نسخة `show_visits/*`، شوف م-4 في [مراجعة الزيارات القادمة](2026-11-26-upcoming-visits-vs-excp.md))
- الرحلتين متشاركين في نفس `replace_worker` والشيتات. فلما «رجوع إلى الزيارات» اتظبط على تأكيد الحجز علشان رحلة قبل الدفع، رحلة بعد الدفع بقت بتودّي هناك هي كمان. وصفحة تأكيد الحجز فيها «ادفع 2000».
- **excp:** كل رحلة ليها نسخة شيتات لوحدها، وبعد الدفع الرجوع بيكون للزيارات القادمة.
- **التصليح المقترح:**
  - نعمل نسخة من السلسلة لرحلة قبل الدفع (`replace_worker` والملف والتأكيد والتفضيل والنتيجتين)، باسم `hourly_offers/replace_worker/*` **(يحتاج تأكيد)**، ويتربط بيها شيت `current_worker`.
  - النسخة الأصلية `orders/visits/*` تفضل لبعد الدفع، والنتيجتين فيها يرجّعوا لـ [`show_visits/upcoming`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1587-13309).

### ب-2: الوصول للزيارات بعد الدفع أطول 🟡
- **excp:** «عرض الزيارات» في شاشة نجاح الدفع بيودّي للزيارات القادمة على طول.
- **بالخدمة:** محتاج 3 خطوات: تفاصيل الطلب، وبعدها شيت الزيارات، وبعدها «عرض كل الزيارات».
- **الاقتراح:** نضيف «عرض الزيارات» في [`payment_successfully`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=851-5135) ويودّي على `show_visits/upcoming`. ده **(يحتاج قرار)**.
- excp كمان فيه شاشة نجاح كاملة فيها عروض باقات تانية، وعندنا شيت. وصفحة «زياراتي» العامة لسه في الـ backlog (بند 7).

### ب-3: ملف العاملة من كارت الزيارة مفيهوش «استبدال العاملة» ✅ اتصلّح 2026-11-27 («عرض الملف» من الزيارات بيفتح نسخة `current_worker`، شوف م-2 في [مراجعة الزيارات القادمة](2026-11-26-upcoming-visits-vs-excp.md))
- **excp:** ملف العاملة فيه زرار «استبدال العاملة» وجملة «لست راض عن العاملة؟…»، وده طريق تاني للاستبدال جنب زرار الكارت.
- **بالخدمة:** [`view`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23713) فيه «تم» بس. ممكن نستخدم شيت [`current_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9442-26015) اللي فيه الزرار.
- **لاحظ:** نفس الشيت `view` بيتفتح من الزيارات السابقة كمان، وهناك الاستبدال مالوش معنى.

## حاجات برا الاستبدال لاحظتها
- **مؤقت الدفع:** `success_contract` في excp فيه «الوقت المتبقي لإتمام الدفع 20:00» و«في انتظار الدفع لتأكيد العقد». صفحة التأكيد عندنا مفيهاش مؤقت.
- **أكتر من عاملة على الزيارة:** excp فيه «5 عاملات» و[`workers_sheet`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5225-29209). عندنا متأجل في [قرار 0012](../../decisions/0012-hourly-workers.md)، ولسه محتاج قرار مشترك.

## المطلوب
- [x] **ف-1:** ✅ اتقفل 2026-11-26 (رجع لتأكيد الحجز زي excp).~~ م. سند يقرر: «تم» بعد «هذه الزيارة فقط» يرجّع لتأكيد الحجز زي excp، ولا يفضل يرجّع لقايمة العاملات زي ما منة عاملاه؟~~
- [x] **ف-2 لـ ف-6 (2026-11-27):** ف-2 مش هتتنفذ، وف-3 مؤجلة، وف-4 اتصلّحت، وف-6 م. سند عدّلها. ف-5 اتصلّحت (Dissolve).
- [ ] **[قرار 0019](../../decisions/0019-replace-worker-before-payment.md):** لسه مستني اعتماد م. سند.
