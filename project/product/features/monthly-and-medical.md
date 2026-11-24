# خدمات الأفراد (شهري) والرعاية الطبية

الخدمتان تتبعان نفس رحلة [خدمات بالساعة](hourly-services.md)، لكن بدون شاشة اختيار نوع فرعي، والعقد مقسّم على عدد زيارات.

## خدمات الأفراد (`monthly`)

```mermaid
flowchart LR
    A["monthly_offers/default"] --> F["offers_filtration_bottom_sheet"]
    F --> A2["monthly_offers/filtered"]
    A --> P["offers_summary_popup"]
    A2 --> P
    P -->|"الحصول على العرض"| WM["worker_selection_method_bottom_sheet"]
    WM -->|"من الشركة + الفرع"| D
    WM -->|"من التطبيق + الاستلام"| CW["choose_worker"] --> D2["offer_details/worker_selected"]
    D2 --> PS
    P -.- D["monthly_offers/offer_details"]
    D --> PS["payment_successfully"]
    PS --> OK["reservation_successfully"]
    PS --> FAIL["reservation_failed"]
```

| الشاشة | الوصف |
|---|---|
| `monthly_offers/default` | قائمة العروض مع شريط فلترة ثابت (`filtration_options`) |
| `monthly_offers/filtered` | القائمة بعد الفلترة |
| `monthly_offers/offers_filtration_bottom_sheet` | خيارات الفلترة |
| `monthly_offers/offers_summary_popup` | ملخص العرض |
| `monthly_offers/worker_selection_method_bottom_sheet` (+ 7 حالات) | «ما هي خياراتك المفضلة؟»: من التطبيق / من الشركة، وطريقة الاستلام، والفرع ([قرار 0013](../../decisions/0013-worker-selection-sheet-from-excp.md)). راجع [workers.md](workers.md) |
| `monthly_offers/choose_worker` · `workers_filtration_bottom_sheet` | قائمة عاملات الشركة صاحبة العرض والفلتر. «عرض الملف» بيفتح `workers/worker_profile_bottom_sheet` بزرار «اختيار العاملة» |
| `monthly_offers/offer_details` | تفاصيل الطلب والدفع لما الشركة هي اللي تختار العاملة. راجع [checkout-and-payment.md](checkout-and-payment.md) |
| `monthly_offers/offer_details/worker_selected` | نفس الشاشة، بكارت العاملة المختارة و«تغيير العاملة» |
| `monthly_offers/payment_successfully` | تأكيد الدفع |
| `monthly_offers/reservation_successfully` · `reservation_failed` | النتيجة |

## الرعاية الطبية (`medical`)

| الشاشة | الوصف |
|---|---|
| `medical_offers/default` | قائمة العروض |
| `medical_offers/filtered` | بعد الفلترة |
| `medical_offers/offers_filtration_bottom_sheet` | خيارات الفلترة |

ملخص العرض وتفاصيل الطلب والنتيجة غير مرسومة كشاشات خاصة بالرعاية الطبية، ويُفترض إعادة استخدام شاشات الشهري **(يحتاج تأكيد)**.

## بعد الحجز
الطلب يظهر في تبويب «أفراد» أو «خدمات طبية» في [الطلبات](orders.md)، مع شريط تقدم الزيارات (مثلاً 12 زيارة) وحالة العقد.

## يحتاج تأكيد
- [ ] مدد العقود المتاحة (شهر، 3 شهور…).
- [ ] هل العميل يختار أيام الزيارة في الشهري كما في الساعة؟
