# العاملات (Workers)

## الهدف
العميل يشوف العاملة كشخص: صورتها، تقييمها، خبرتها، جنسيتها، ومهاراتها. ده بيتم بخطة على مراحل، وكل مرحلة بقرار لوحده. المرجع هو [بيزنس العاملات في معين](../references/mueen-workers.md)، والمقارنة في [audit المقارنة](../../design-system/audits/2026-11-23-mueen-workers-comparison.md).

**نقطة رجوع:** قبل أي تعديل، اتعملت نسخة في Version History في Figma اسمها «قبل اضافة اي شيء يخص العاملة»، وفي الريبو tag اسمه `before-workers-2026-11-23`.

## القرارات
| # | القرار | الحالة |
|---|---|---|
| [0004](../../decisions/0004-favorite-is-pinning.md) | «التفضيل» هو «التثبيت». بنستخدم لفظ التفضيل وبيزنسه | معتمد |
| [0005](../../decisions/0005-workers-plan-excludes-mediation.md) | الوساطة برا الخطة حاليًا | معتمد |
| [0006](../../decisions/0006-worker-entity.md) | كيان العاملة: كارت + ملف شخصي بنفس بيانات معين | معتمد ومنفّذ |
| [0007](../../decisions/0007-worker-selection-from-offer-company.md) | اختيار العاملة من عاملات الشركة صاحبة العرض بس | معتمد |

## الشاشات

| الشاشة (اسم الإطار في Figma) | الوصف |
|---|---|
| [`workers/worker_profile_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9298-23032) | «الملف الشخصي للعاملة»: `bottom_sheet_header` + `worker_profile`. زرار «فيديو تعريفي» بيفتح شيت الفيديو (overlay) |
| [`workers/worker_video_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9298-23100) | «الفيديو التعريفي»: مساحة الفيديو بزرار تشغيل، وزرار «تم» |

## المكوّنات

| المكوّن | الصفحة | الخصائص |
|---|---|---|
| [`worker_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9297-6771) | organisms | نصوص: `worker_name`، `rating_value`، `rating_count`. Boolean: `show_skills`، `show_profile_button`. الشارات (الديانة، الخبرة، الجنسية، المهارات) instances مكشوفة |
| [`worker_profile`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9298-6111) | organisms | نصوص: `worker_name`، `rating_value`، `rating_count`، `bio`. Boolean: `show_video`. الشارات والمهارات instances مكشوفة |
| [`worker_info_chip`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9297-1087) | molecules | نص: `label`. Boolean: `show_flag`. Instance swap: `flag` (أيقونات `ic_flag_*`) |
| `ic_play` (`9297:5`) | icons | أيقونة تشغيل، لونها `text/text_primary` |

## بيانات العاملة

| الحقل | مثال | الكارت | الملف الشخصي |
|---|---|---|---|
| الصورة | — | `profile_avatar_photo` 48 | `profile_avatar_photo` 80 |
| الاسم | Amina Noor Salamat | ✓ | ✓ |
| التقييم وعدد التقييمات | 4.5 (85) | ✓ | ✓ |
| الديانة | مسلمة | ✓ | ✓ |
| الخبرة | +5 سنوات خبرة | ✓ | ✓ |
| الجنسية | الفلبين + العلم | ✓ | ✓ |
| المهارات | غسيل وكي (+2) | أول مهارة + العدد الباقي | كلها، تحت «المهارات المعتمدة» |
| النبذة | نص حر | — | ✓ |
| الفيديو التعريفي | — | — | زرار ← شيت |

## قواعد العمل
- **التفضيل = التثبيت** ([قرار 0004](../../decisions/0004-favorite-is-pinning.md)): العاملة المفضلة بتتطبق على الزيارات الجاية حسب الإتاحة، وممكن جزئياً.
- العاملة تبع الشركة صاحبة العرض، لأن بالخدمة marketplace **(يحتاج تأكيد: الشركات بتوفر بيانات العاملات إزاي؟)**.

## يحتاج تأكيد
- [ ] مصدر بيانات العاملة (صورة، فيديو، نبذة، مهارات معتمدة) لكل شركة: API ولا scraper ولا إدخال يدوي.
- [ ] مين بيعتمد «المهارات المعتمدة»: الشركة ولا بالخدمة؟
- [ ] لو العاملة مالهاش فيديو، `show_video` بيبقى off. ولو مالهاش صورة؟
- [ ] الزرار الأساسي في الملف الشخصي حسب السياق (اختيار / استبدال / مفيش): قرار جاي.

## الخطوات الجاية (كل واحدة بقرار)
مرشحين من [audit المقارنة](../../design-system/audits/2026-11-23-mueen-workers-comparison.md#اللي-ممكن-ينتقل-مرشحين-للخطة):
1. اختيار العاملة في الأفراد (`monthly`): «من الشركة / من التطبيق».
2. الساعة: العاملة المعيّنة على الزيارات، وعدد العاملات.
3. الاستبدال من الزيارات القادمة.
4. قائمة المفضلة و«سبق التعامل معهم».
5. العاملات على الطلب في تفاصيل الطلب.
6. الحظر ([قرار 0002](../../decisions/0002-defer-block-worker.md)).
7. الرعاية الطبية.
8. «زياراتي» عامة.
