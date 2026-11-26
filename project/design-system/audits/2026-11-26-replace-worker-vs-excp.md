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

### ف-1: بعد «هذه الزيارة فقط» العميل بيرجع لقايمة العاملات، مش لصفحة التأكيد ❌ محتاج قرار مشترك
- **excp:** النتيجتين بيرجّعوا لـ `success_contract` بزرار «العودة الي الزيارات».
- **بالخدمة:** [«تم»](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26926) بيرجّع لـ [`replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23874).
- منة عملت كده بقصد في 2026-11-26 ([CHANGELOG](../../changelog/CHANGELOG.md#2026-11-26)). بس ده اختلاف عن المرجع، فمحتاج قرار مشترك مع م. سند ([قرار 0014](../../decisions/0014-excp-replaces-mueen-as-reference.md)).
- **مشكلة تانية في نفس النقطة:** في البروتوتايب، العاملة اللي ظاهرة في `replace_worker` بعد الرجوع هي العاملة القديمة، فالعميل هيحس إن الاستبدال ما حصلش.

### ف-2: ملف العاملة الحالية ناقصه سطر التوضيح 🟡
- في [excp](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5225-29576) فوق الزرار جملة «لست راض عن العاملة؟ يمكنك استبدال هذه العاملة بعاملة أخرى من اختيارك الآن».
- في [`current_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9442-26015) الزرار لوحده من غير الجملة دي.

### ف-3: البحث و«اعرض المزيد» في قايمة العاملات مش مربوطين 🟡
- في [excp](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5225-29724):
  - البحث بيفتح [`replace_worker/search`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5225-29749)، والنتايج متقسمة: من المفضلات، ومن سبق التعامل معهم، ومن الكل.
  - «اعرض المزيد من العاملات» بيفتح [`replace_worker/more`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5225-29732).
- في [`replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23874) الاتنين مش مربوطين، ومفيش فريم لحالة البحث أو لـ «المزيد».
- التبديل بين القايمة والشبكة مستبعد بقصد في [قرار 0019](../../decisions/0019-replace-worker-before-payment.md).
- **فروق في النصوص:** excp بيقول «تصفح العاملات» وبالخدمة «اختيار عاملة جديدة». excp بيقول «العاملة الحالية بالزيارة» وبالخدمة «العاملة الحالية في الزيارة».

### ف-4: الشيتات بتتفتح فوق بعض بدل ما تتبدّل 🟡
- **excp:** من «اختيار العاملة» لحد النتيجة بيستخدم `Swap overlay`، يعني الشيت الجديد بياخد مكان القديم. و«لا، رجوع» بيعمل `Back`، فبيرجّع للملف.
- **بالخدمة:** «اختيار العاملة» و«تأكيد الاستبدال» و«هذه الزيارة فقط» بيعملوا `Open overlay`، فالشيتات بتتراكم فوق بعض. و«إلغاء» بيعمل `Close`.
- **الأثر:** العميل ممكن يشوف أكتر من شيت فوق بعض، والخلفية بتغمق مع كل شيت جديد. والأنيميشن نفسه ماشي على [قرار 0009](../../decisions/0009-bottom-sheet-overlay-interaction.md).

### ف-5: التنقل من الملف لقايمة العاملات 🟡 (بسيط)
- «استبدال العاملة» بيعمل Navigate لـ `replace_worker`. excp بيستخدم `Dissolve`، وبالخدمة `Smart animate`.
- [قرار 0009](../../decisions/0009-bottom-sheet-overlay-interaction.md) مش بيغطي الـ Navigate لشاشة كاملة.

### ف-6: محتوى نتيجة التفضيل 🟡
- **الرقم مش متسق:** النص بيقول «تم تفضيل العاملة في 4 زيارات من أصل **50** زيارة»، بس صفحة التأكيد فيها 4 زيارات بس. excp كاتب «9 من 10» بأرقام منطقية.
- **زرار زيادة:** فيه زرار «تواصل عبر واتساب» مش موجود في excp. غالباً جه من رحلة الزيارات، وده **(يحتاج تأكيد)**.
- **اسم الزرار:** excp «العودة الي الزيارات»، وبالخدمة «تم».

## حاجات برا الاستبدال لاحظتها
- **مؤقت الدفع:** `success_contract` في excp فيه «الوقت المتبقي لإتمام الدفع 20:00» و«في انتظار الدفع لتأكيد العقد». صفحة التأكيد عندنا مفيهاش مؤقت.
- **أكتر من عاملة على الزيارة:** excp فيه «5 عاملات» و[`workers_sheet`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5225-29209). عندنا متأجل في [قرار 0012](../../decisions/0012-hourly-workers.md)، ولسه محتاج قرار مشترك.

## المطلوب
- [ ] **ف-1:** م. سند يقرر: «تم» بعد «هذه الزيارة فقط» يرجّع لتأكيد الحجز زي excp، ولا يفضل يرجّع لقايمة العاملات زي ما منة عاملاه؟
- [ ] **ف-2 لـ ف-6:** تتصلّح بعد ما م. سند يوافق.
- [ ] **[قرار 0019](../../decisions/0019-replace-worker-before-payment.md):** لسه مستني اعتماد م. سند.
