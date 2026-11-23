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
| [0008](../../decisions/0008-monthly-worker-selection-flow.md) | رحلة اختيار العاملة في خدمات الأفراد | معتمد ومنفّذ |

## الشاشات

| الشاشة (اسم الإطار في Figma) | الوصف |
|---|---|
| [`workers/worker_profile_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9298-23032) | «الملف الشخصي للعاملة»: `bottom_sheet_header` + `worker_profile`. زرار «فيديو تعريفي» بيفتح شيت الفيديو (overlay) |
| [`workers/worker_video_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9298-23100) | «الفيديو التعريفي»: مساحة الفيديو بزرار تشغيل، وزرار «تم» |

### اختيار العاملة في خدمات الأفراد ([قرار 0008](../../decisions/0008-monthly-worker-selection-flow.md))

| الشاشة | الوصف |
|---|---|
| [`monthly_offers/worker_selection_method_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-22310) | «اختيار العاملة»: «تحب تختار العاملة إزاي؟» + كارتين `filtration_elements`: «أختارها بنفسي» (مختار) و«تختارها الشركة»، وزرار «متابعة» |
| [`monthly_offers/choose_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-22500) | «اختيار العاملة»: فلاتر مختارة + «تصفية» و«رتب بـ»، و«عاملات «اسم الشركة» المتاحة لهذا العرض»، وقائمة `worker_card`، و«اعرض المزيد من العاملات» |
| [`monthly_offers/workers_filtration_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-22376) | «فلترة العاملات»: النوع، الخبرة، الديانة، المهارات بـ `chips`، و«مسح الكل» / «تطبيق الفلتر» |
| [`monthly_offers/worker_profile_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-22426) | الملف الشخصي + زرار «اختيار العاملة» |
| [`monthly_offers/offer_details/worker_selected`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-23392) | تفاصيل التعاقد: `worker_card` للعاملة المختارة (من غير مهارات) بزرار «تغيير العاملة»، مكان ملاحظة «سيتم اختيار العاملة من فرع الشركة» |

حالة «تختارها الشركة» هي [`monthly_offers/offer_details`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=892-11054) زي ما هي.

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
- قائمة الاختيار بتعرض عاملات الشركة صاحبة العرض بس ([قرار 0007](../../decisions/0007-worker-selection-from-offer-company.md)).
- في خدمات الأفراد العميل يختار العاملة بنفسه، أو يسيب الاختيار للشركة ([قرار 0008](../../decisions/0008-monthly-worker-selection-flow.md)).

## يحتاج تأكيد
- [ ] مصدر بيانات العاملة (صورة، فيديو، نبذة، مهارات معتمدة) لكل شركة: API ولا scraper ولا إدخال يدوي.
- [ ] مين بيعتمد «المهارات المعتمدة»: الشركة ولا بالخدمة؟
- [ ] لو العاملة مالهاش فيديو، `show_video` بيبقى off. ولو مالهاش صورة؟
- [ ] الزرار الأساسي في الملف الشخصي حسب السياق: «اختيار العاملة» في خدمات الأفراد. الاستبدال قرار جاي.
- [ ] لو الشركة مالهاش عاملات متاحة للعرض: هل «أختارها بنفسي» يختفي ولا يبقى disabled؟ والحالة الفارغة في `choose_worker` مش مرسومة.
- [ ] «رتب بـ» في قائمة العاملات بيرتب بإيه (الأعلى تقييماً، الخبرة…)؟

## الخطوات الجاية (كل واحدة بقرار)
مرشحين من [audit المقارنة](../../design-system/audits/2026-11-23-mueen-workers-comparison.md#اللي-ممكن-ينتقل-مرشحين-للخطة):
1. ~~اختيار العاملة في الأفراد (`monthly`)~~: منفّذ ([قرار 0008](../../decisions/0008-monthly-worker-selection-flow.md)).
2. الساعة: العاملة المعيّنة على الزيارات، وعدد العاملات.
3. الاستبدال من الزيارات القادمة.
4. قائمة المفضلة و«سبق التعامل معهم».
5. العاملات على الطلب في تفاصيل الطلب.
6. الحظر ([قرار 0002](../../decisions/0002-defer-block-worker.md)).
7. الرعاية الطبية.
8. «زياراتي» عامة.
