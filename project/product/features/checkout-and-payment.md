# إتمام الحجز والدفع (Checkout)

مشتركة بين كل خطوط الخدمة. الشاشة المرجعية: `hourly_offers/offer_details` («تفاصيل الطلب»).

## محتوى شاشة تفاصيل الطلب

| # | القسم | المكوّن | الوصف |
|---|---|---|---|
| 1 | تأكيد العنوان | `address_confirmation` | «سيتم استكمال تعاقدك على العنوان التالي» مع زر تعديل |
| 2 | أيام الزيارة والتاريخ | `select_date_and_day` | اختيار الأيام (السبت إلى الخميس) وتاريخ البدء |
| 3 | كود الخصم | `coupon_code` | حقل الكود وزر «تطبيق الخصم»، وحالتان: `default` و`applied` |
| 4 | تفاصيل الطلب | `order_details_card` | قسم قابل للطي، بحالات: `collapsed`، `expanded_summary`، `expanded_fields`، `summary_without_bg` |
| 5 | ملخص السعر | `price_details` | سعر الباقة، الضريبة 15%، الخدمات الإضافية، والسعر النهائي |
| 6 | الموافقة | `check_box` | «أوافق على شروط الاستخدام وسياسة الخصوصية» |
| 7 | الإجراء | `text_buttons` (`state=primary`) | «تأكيد الحجز» |

## الدفع

- **وسائل الدفع** (`payment_methods`، `payment_methods_logos`): Visa، Mastercard، مدى، Apple Pay، ولكل واحدة حالة `default` و`selected`.
- **بيانات البطاقة** (`payment_input`): حقل واحد أو حقلان.
- **النجاح:** bottom sheet `payment_successfully` في كل خط خدمة.

## نتيجة الحجز

| النتيجة | Template | المكوّن |
|---|---|---|
| نجاح | `reservation_success` (`type=default`) | `reservation_status` (`state=success`) |
| طلب تواصل | `reservation_success` (`type=lead`) | `reservation_status` (`state=lead`) |
| فشل | `reservation_failed` | `reservation_status` (`state=failed`) |

## قواعد العمل
- زر «تأكيد الحجز» يتفعّل بعد الموافقة على الشروط **(يحتاج تأكيد)**.
- السعر النهائي = سعر الباقة + الضريبة + الإضافات − الخصم.

## يحتاج تأكيد
- [ ] هل الضريبة تُحسب قبل الخصم أم بعده؟
- [ ] شاشة اختيار وسيلة الدفع نفسها غير موجودة في `screens` (المكوّن موجود في organisms فقط).
- [ ] رسائل خطأ الكوبون (منتهي، غير صالح).
