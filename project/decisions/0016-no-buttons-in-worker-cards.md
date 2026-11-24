# 0016: كارت العاملة من غير زراير، والضغط على الكارت نفسه بيكمّل

| البند | القيمة |
|---|---|
| الحالة | معتمد |
| التاريخ | 2026-11-24 |
| صاحب القرار | منة (طلب مباشر) |

## السياق
كارت العاملة ([`worker_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9311-24185)) كان فيه زرار «عرض الملف» (منقول من معين، [قرار 0006](0006-worker-entity.md)). منة قالت إن الأسلوب ده مش متّبع في بالخدمة: **الكروت مفيهاش زراير**.

وفي [`offer_details/worker_selected`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-23392) نفس الزرار كان مكتوب عليه «تغيير العاملة»، ومنة قالت إنه مش في البيزنس.

## القرار
- **الزرار اتشال من الكمبوننت نفسه:** `profile_button` اتمسح، والـ Boolean `show_profile_button` اتشال. فده بيطبق على كل الكروت في الملف.
- **الضغط على الكارت كله بيكمّل:** الرابط اللي كان على الزرار اتنقل على الكارت:
  - [`choose_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-22500) و[`choose_worker/more_workers`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-25915): الكارت بيفتح [`workers/worker_profile_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9298-23032)، وفيه «اختيار العاملة».
  - [`orders/visits/replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23874) (الساعة): الكارت بيفتح [`worker_profile_bottom_sheet/replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23794).
  - الضغط على صورة العاملة لسه بيفتح [عارض الصورة](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-25815).
- **«تغيير العاملة» اتشال:** كارت العاملة المختارة في تفاصيل التعاقد بقى للعرض بس، وملوش رابط.

## الأثر
- يعدّل [قرار 0006](0006-worker-entity.md) (محتوى الكارت) و[قرار 0008](0008-monthly-worker-selection-flow.md) (مسار «تغيير العاملة»).
- ملفات التوثيق: `workers.md`، `monthly-and-medical.md`، `visits.md`، `organisms.md`، الذاكرة، والـ changelog.
