# 0018: عرض العاملات في تفاصيل طلب الساعة: الأولوية للزيارة

| البند | القيمة |
|---|---|
| الحالة | معتمد |
| التاريخ | 2026-11-24 |
| صاحب القرار | منة (اختارت من المقترحات وعدّلت) |

## السياق
العاملات على زيارات العقد في [`hourly_offers/offer_details/assigned_workers`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-24395) كانوا سطور ضيقة («الزيارة 1 : الاسم» + «عرض الملف»). اتعملت مقترحات في [`proposals/assigned_workers`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9381-355)، ومنة قالت إن **الأولوية للزيارة مش للعاملة**. فاتعملت 3 مقترحات تانية في [`proposals/assigned_workers_visit_first`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9408-67)، ومنة اختارت **مقترح ٢ «التاريخ بارز»** بعد ما عدّلت عليه.

## القرار
- **كمبوننت جديد** [`visit_worker_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9425-7013) (organism، `state=default`)، مبني من مكوّنات موجودة:
  - مربع التاريخ على اليمين: `day_name` و`day_number` و`month`.
  - رقم الزيارة (`visit_name`) وجنبه الوقت (`badges` `secondary`، اسمه `visit_time` ومكشوف للتعديل).
  - العاملة تحتهم: `profile_avatar_photo` صغيرة + `worker_name`.
  - خصائص نصية: `visit_name`، `worker_name`، `day_name`، `day_number`، `month`.
- **في الشاشة:** `default_card` القديم اتشال، ومكانه قسم `assigned_workers`: `section_header` «العاملات على زيارات العقد»، و4 `visit_worker_card`، والتنبيه `outline_notifications`.
- **من غير زراير** ([قرار 0016](0016-no-buttons-in-worker-cards.md)): الضغط على الكارت بيفتح [`worker_profile_bottom_sheet/view`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23713) بإعدادات [قرار 0009](0009-bottom-sheet-overlay-interaction.md).
- الشاشة طولها بقى 1198 (hug)، والعميل بيسكرول.

## ملاحظات
- صورة العاملة في الكارت هي `profile_avatar_photo` `size_48` متصغّرة لـ 28، لأن الـ atom مفيهوش مقاس أصغر **(يحتاج تأكيد: نضيف `size_28` للـ atom؟)**.
- التواريخ والأوقات في الشاشة أمثلة.

## الأثر
- ملفات التوثيق: `hourly-services.md`، `workers.md`، `organisms.md`، الذاكرة، والـ changelog، وفهرس الشاشات.

## تحديث 2026-11-24 (منة)
القسم `assigned_workers` اتنقل من تفاصيل الطلب لصفحة [`hourly_offers/reservation_successfully`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-14094) (بعد «تأكيد الحجز» وقبل الدفع). اتحط في slot جديد `extra_content` في template [`reservation_success`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2485-23331)، ومعاه Boolean `has_extra_content` (افتراضي off، فباقي صفحات التأكيد زي ما هي). الفريم القديم اتغير اسمه لـ `hourly_offers/offer_details/days_selected`.
