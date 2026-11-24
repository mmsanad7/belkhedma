# 0015: رحلة الأفراد مطابقة لمسار excp من الباقة لحد الدفع

| البند | القيمة |
|---|---|
| الحالة | معتمد |
| التاريخ | 2026-11-24 |
| صاحب القرار | منة (طلب مباشر) |

## السياق
منة طلبت نظبط روابط رحلة الأفراد ([`monthly_offers/default`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=892-10966)) زي مسار «باقات الأفراد» في excp ([`individuals_flow/packages/default`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=1200-6241))، اللي بيعدي على العاملات لحد الدفع. وطلبت نضيف أي صفحة ناقصة، ونجهّز الأفراد للتسليم. excp هو المرجع ([قرار 0014](0014-excp-replaces-mueen-as-reference.md)).

## القرار
الرحلة والجدول اللي بيقابل كل شاشة بالمرجع في [monthly-and-medical.md](../product/features/monthly-and-medical.md#خدمات-الأفراد-monthly).

**صفحات جديدة** (كلها من مكوّنات موجودة):

| الصفحة | المقابل في excp |
|---|---|
| [`monthly_offers/choose_worker/more_workers`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-25915) | `choose_worker/more_workers` |
| [`workers/worker_photo_viewer_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-25815) | `worker_photo_viewer` |
| [`monthly_offers/contract_details`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-25517) | `contract_details` |
| [`monthly_offers/terms_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-25712) | `terms_sheet` |

**تصليحات:**
- **«تصفية» في قائمة العروض:** كان فيها action من غير وجهة، وبقت بتفتح الفلتر.
- **الفريم كله في قائمة العروض:** كان عليه رابط بيفتح الفلتر لو ضغطتي في أي مكان، واتشال.
- **«استعراض كل الباقات»:** كان بيودّي على فريم متجاهل (`_monthly_offers/default`)، وبقى بيودّي على `monthly_offers/default`.
- **قائمة العاملات:** اتشال منها رابط زيادة كان بيفتح ملخص العرض.
- **«تأكيد الحجز»:** في الحالتين بقى بيودّي على `contract_details`، و«التالي» بيودّي على `reservation_successfully`.
- **الـ checkbox بتاع الشروط:** بقى بيفتح شيت الشروط.
- **actions فاضية:** اتشال 22 action من غير وجهة.
- **إعدادات الـ overlay:** 3 شيتات كانت غلط (فلترة العروض، والفيديو، وفلترة العاملات) اتبنوا تاني على فريم متظبط، والروابط اتوجّهت ليهم. وكمان شيتات الاستبدال التلاتة في الساعة، فـ [S-12](../brand/deviations.md) اتقفل.
- **ملخص السعر في `offer_details/worker_selected`:** «خدمات اضافية» بقت «مصاريف التوصيل : 80» زي المرجع.

## اختلافات عن excp (محتاجة قرار مشترك مع م. سند)
1. **شيت إنشاء العقد والدفع في شاشة واحدة:** في excp، `success_contract_sheet` (مؤقت 20 دقيقة) وبعده شاشة `payment` منفصلة. عندنا [`reservation_successfully`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-15386) بتعمل الاتنين، ومفيهاش مؤقت.
2. **الدفع:** excp فيه رصيد المحفظة والنقاط ومكافأة 50 نقطة، وبالخدمة مفيهاش محفظة ولا نقاط، فاتسابوا.
3. **«احجز الآن» من تفاصيل الباقة:** في excp بيروح لقائمة العاملات على طول من غير الشيت. عندنا تفاصيل الباقة هي ملخص العرض، وبتفتح الشيت.
4. **عارض الصورة:** في excp عارض في نص الشاشة بأيقونة عين. عندنا bottom sheet بيتفتح بالضغط على صورة العاملة.

## الأثر
- ملفات التوثيق: `monthly-and-medical.md`، `workers.md`، `status.md`، `deviations.md` (S-12 اتقفل)، الذاكرة، `screens.json`، `screens-index.md`، والـ changelog.
