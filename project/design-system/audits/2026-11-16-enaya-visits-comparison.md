# مقارنة الزيارات: Enaya ← بالخدمة (2026-11-16)

مقارنة قسم «زيارات الساعات» في Enaya V1 بشاشة الزيارات في بالخدمة، قبل النقل وبعده. الطلب: [2026-11-16-enaya-visits.md](../../changes/2026-11-16-enaya-visits.md). الـ feature: [visits.md](../../product/features/visits.md).

## الملفات
- **Enaya V1:** `jXy7LDBbGe4iTDH9Cjw59i`، صفحة screens `2:12`، الـ template `visit_list_template` (`6544:31371` / `6544:31644`).
- **بالخدمة قبل:** [`HWnOHugM9Pc54J8aui4Hww`](https://www.figma.com/design/HWnOHugM9Pc54J8aui4Hww/Belkhedma-App?node-id=1587-13309)، الشاشة `show_visits` (`1587:13309`) + `visits_bottom_sheet` (`7239:18272`).
- **بالخدمة بعد:** [`mCPCipJETTjSW7GD8vsrzY`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1587-13309)، نفس الـ IDs + الفريمات الجديدة `9081:*`.

## المقارنة

| الجانب | Enaya | بالخدمة قبل | بالخدمة بعد |
|---|---|---|---|
| الوصول | «زياراتي» من «المزيد» (كل الزيارات) | من تفاصيل طلب الساعة (زيارات طلب واحد) | زي ما هو |
| ملخص الطلب | لا يوجد | كارت: الخدمة، رقم الطلب، تاريخ الانتهاء، مدة الزيارة، التقدم | زي ما هو |
| التقسيم | تبويبات قادمة / سابقة | قائمة قادمة + «مشاهدة الكل» | تبويبات: `show_visits/upcoming` و`show_visits/previous` |
| الكارت | رقم، توقيت من-إلى، تاريخ، شارة حالة، يتفتح ويتقفل | رقم، يوم وتاريخ، وقت البدء | `visit_details` بـ 5 متغيرات: شارة «جديدة» / «انتهت»، يتفتح ويتقفل، رقم الزيارة ووقتها |
| العاملة | الاسم في الكارت | مش ظاهر | الاسم في الكارت المفتوح |
| التأجيل | زر + تنبيه ← ديالوج تقويم | لا يوجد | زر + تنبيه ← `reschedule_visit_bottom_sheet` (تقويم، «تأكيد التأجيل» / «إلغاء») |
| تقييم العاملة | 4 معايير بالنجوم + ملاحظات | تقييم خدمة على مستوى الطلب بس | `worker_rating_bottom_sheet` بنفس المعايير الأربعة + ملاحظات اختيارية، والنتيجة تظهر في الكارت (`expanded_rated`) |
| تفضيل / حظر | ديالوج تأكيد ← ديالوج نتيجة (X من Y + واتساب) | لا يوجد | `favorite_` / `block_worker_popup` ← `..._result_popup` |

## اللي اختلف عن الخطة
- `show_visits/previous_rated` متعملتش كشاشة. الحالة دي اتغطت بمتغير `expanded_rated` في الكومبوننت.
- الكارت بيعرض وقت الزيارة بس، مش «من-إلى» زي Enaya، ومفيهوش التاريخ. سجّلناها في [deviations.md](../../brand/deviations.md) (S-05).
- `visits_bottom_sheet` لسه موجودة واتعدلت (ارتفاعها بقى 532 بدل 516)، ومتقررش لسه هل هتتشال.
- اتعمل كومبوننت `calendar` جديد للتأجيل، و`worker_rating_summary` لعرض التقييم المسجَّل.
- **تحديث 2026-11-18:** «حظر العاملة» اتأجل بطلب العميل. الزرار بقى مربوط بمفتاح `show_block_worker` وقيمته off، والـ popups فضلوا مكانهم ([قرار 0002](../../decisions/0002-defer-block-worker.md)).

## الشاشات الجديدة والمعدّلة

| الإطار | Node | التغيير |
|---|---|---|
| `orders/hourly_order_details/show_visits/upcoming` | `1587:13309` | اتغير اسمه (كان `show_visits`) |
| `orders/hourly_order_details/show_visits/previous` | `9081:30591` | جديد |
| `orders/visits/reschedule_visit_bottom_sheet` | `9081:31157` | جديد |
| `orders/visits/worker_rating_bottom_sheet` | `9081:31316` | جديد |
| `orders/visits/favorite_worker_popup` | `9081:31414` | جديد |
| `orders/visits/block_worker_popup` | `9081:31455` | جديد |
| `orders/visits/favorite_worker_result_popup` | `9081:31496` | جديد |
| `orders/visits/block_worker_result_popup` | `9081:31542` | جديد |
| `orders/order_details/visits_bottom_sheet` | `7239:18272` | الارتفاع 516 ← 532 |
