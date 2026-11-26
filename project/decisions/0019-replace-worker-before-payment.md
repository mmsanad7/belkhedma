# 0019: استبدال العاملة على الزيارة قبل الدفع (الساعة)

| البند | القيمة |
|---|---|
| الحالة | معتمد |
| التاريخ | 2026-11-24 |
| صاحب القرار | منة (طلب مباشر، ووافقت على الفهم قبل التنفيذ) |

## السياق
في excp ([`hourly_flow/success_contract`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=733-3717)) العميل يقدر يستبدل العاملة على أي زيارة **قبل الدفع**. عندنا الاستبدال كان من الزيارات القادمة بعد الحجز بس ([قرار 0012](0012-hourly-workers.md)).

## القرار
- **المكان (أول تنفيذ، اتغير، شوف التحديث):** في [`hourly_offers/offer_details/days_selected`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-24395) قبل «تأكيد الحجز». ⚠️ **اختلاف عن excp:** هناك الاستبدال على شاشة «تم إنشاء العقد» بعد التأكيد. عندنا مفيش شاشة زي دي، لأن [`reservation_successfully`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-14094) فيها الدفع على طول. منة وافقت، ومحتاج تأكيد مشترك مع م. سند.
- **الرحلة:**
  1. الضغط على [`visit_worker_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9425-7013) بيفتح شيت جديد [`workers/worker_profile_bottom_sheet/current_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9442-26015). الشيت نسخة من `/view`، بزرار **«استبدال العاملة»** بدل «تم».
  2. «استبدال العاملة» بيودّي على [`orders/visits/replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23874).
  3. من هنا نفس شيتات الاستبدال الموجودة **زي ما هي** (طلب منة)، وكلها على [قرار 0009](0009-bottom-sheet-overlay-interaction.md): الملف بـ «اختيار العاملة» ← «تأكيد الاستبدال» ← «تفضيل العاملة؟ / هذه الزيارة فقط» ← النتيجة.
- **الرجوع:**
  - «تم» في [`replace_worker_result_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26926) بقى **بيقفل الشيت** (كان بيودّي على الزيارات القادمة). كده بقى زي [`favorite_worker_result_popup`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9081-31496)، وبيشتغل في الرحلتين.
  - زرار الرجوع في `replace_worker` اتربط (`Back`)، فبيرجّع العميل للشاشة اللي جه منها: تفاصيل الطلب قبل الدفع، أو تفاصيل الزيارة بعد الحجز.
- **التنبيه:** بقى «يتم تحديد العاملة حسب الإتاحة، ويمكنك استبدالها على أي زيارة بالضغط عليها.»
- **مش داخلين:** أكتر من عاملة على الزيارة («5 عاملات» في excp)، لأن عدد العاملات متأجل ([قرار 0012](0012-hourly-workers.md)). وتبديل القائمة / الشبكة كمان مش داخل.

## ملاحظات
- **في البروتوتايب:** بعد الاستبدال، كارت الزيارة بيفضل بالعاملة القديمة، لأن الشيتات مشتركة ومفيش حالة مرسومة بالعاملة الجديدة.
- ~~**تبويبات «المفضلة» و«سبق التعامل معها»:** في `replace_worker` بتودّي على `show_visits/previous`، والرابط ده قديم ومش منطقي **(يحتاج مراجعة)**.~~ اتحلت في 2026-11-26: التبويبات بقت chips فلترة، والرابط ده اتشال ([CHANGELOG](../changelog/CHANGELOG.md#2026-11-26)).

## الأثر
- يعدّل [قرار 0012](0012-hourly-workers.md) (الاستبدال بقى قبل الدفع كمان).
- ملفات التوثيق: `hourly-services.md`، `workers.md`، `visits.md`، الذاكرة، والـ changelog، وفهرس الشاشات.

## تحديث 2026-11-24 (منة)
- **المكان اتغير:** الاستبدال بقى من صفحة [`hourly_offers/reservation_successfully`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-14094) (بعد «تأكيد الحجز» وقبل الدفع)، زي مكانه في excp ([`success_contract`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=733-3717)). كده الاختلاف عن excp في المكان اتشال.
- الروابط زي ما هي. زرار الرجوع في `replace_worker` بيرجّع لصفحة التأكيد.
