# 0017: كارت العاملة المدمج (مقترح أ)

| البند | القيمة |
|---|---|
| الحالة | معتمد |
| التاريخ | 2026-11-24 |
| صاحب القرار | منة (اختارت من المقترحات) |

## السياق
اتعملت 3 مقترحات لكارت العاملة في [`proposals/worker_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9380-220) (صفحة `sand_box`). منة اختارت **مقترح أ «مدمج»**.

## القرار
[`worker_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9311-24185) بقى:
- الصورة 48، والاسم، والتقييم.
- تحت التقييم سطر واحد فيه الديانة والخبرة والجنسية (`contract_information_chip` `state=without_bg`).
- **من غير مهارات:** المهارات بتبان في الملف الشخصي بس، تحت «المهارات المعتمدة». الـ Boolean `show_skills` اتشال.
- الارتفاع بقى 96 بدل 180، والتعديل اتطبق على كل الكروت (18 كارت في 5 شاشات).

## الأثر
- يعدّل [قرار 0006](0006-worker-entity.md) (محتوى الكارت).
- ملفات التوثيق: `workers.md`، `organisms.md`، الذاكرة، والـ changelog.
