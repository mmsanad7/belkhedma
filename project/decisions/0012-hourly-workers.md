# 0012: العاملات في خدمات الساعة (التعيين، الظهور، الاستبدال)

| البند | القيمة |
|---|---|
| الحالة | معتمد |
| التاريخ | 2026-11-24 |
| صاحب القرار | العميل (عن طريق Menna Elsayed) |

## السياق
في معين، النظام بيعيّن عاملة على كل زيارة ساعة، والعميل بيشوفها قبل الدفع، وبيقدر يستبدلها بعدين ([المرجع](../product/references/mueen-workers.md#مسار-الساعة)). في بالخدمة، العاملة كانت بتظهر كاسم بس في الزيارات بعد الحجز.

## القرار
| السؤال | القرار |
|---|---|
| العميل يختار العاملة قبل الحجز؟ | **لأ.** الشركة صاحبة العرض بتعيّن عاملة لكل زيارة حسب الإتاحة |
| العاملة تظهر إمتى؟ | **قبل الدفع، زي معين.** في تفاصيل الطلب، بعد اختيار الأيام وتاريخ البدء: العاملة على كل زيارة + «عرض الملف» |
| «عدد العاملات» (1 لـ 5) على العروض؟ | **لأ دلوقتي.** عدد العاملات جزء من العرض نفسه |
| الاستبدال؟ | **أيوه.** من الزيارات القادمة، والعاملات من الشركة نفسها ([قرار 0007](0007-worker-selection-from-offer-company.md)). بعد الاستبدال بنسأل «هل تريد تفضيل العاملة؟» لباقي الزيارات، لأن التثبيت = التفضيل ([قرار 0004](0004-favorite-is-pinning.md)) |

```mermaid
flowchart LR
    OD["hourly_offers/offer_details/assigned_workers"] -->|"عرض الملف"| PV["workers/worker_profile_bottom_sheet/view"]
    U["show_visits/upcoming"] -->|"استبدال العاملة"| R["orders/visits/replace_worker"]
    U -->|"عرض الملف"| PV
    R -->|"عرض الملف"| PR["workers/worker_profile_bottom_sheet/replace_worker"]
    PR -->|"اختيار العاملة"| RP["replace_worker_popup"]
    RP -->|"تأكيد الاستبدال"| FP["favorite_replaced_worker_popup"]
    FP -->|"تأكيد التفضيل"| FR["favorite_worker_result_popup (X من Y)"]
    FP -->|"هذه الزيارة فقط"| RR["replace_worker_result_popup"]
```

## الأثر
- **Figma:** `visit_details` (زرار «عرض الملف» جنب اسم العاملة في الكروت المفتوحة، و«استبدال العاملة» جنب «تأجيل الزيارة» في القادمة)، و7 فريمات جديدة. التفاصيل في [workers.md](../product/features/workers.md).
- **ملفات التوثيق:** `workers.md`، `visits.md`، `hourly-services.md`، `organisms.md`، `glossary.md`، `status.md`، `deviations.md`، الـ audit، `screens.json`، `screens-index.md`، والـ changelog.
