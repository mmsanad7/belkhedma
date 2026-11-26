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
| [0008](../../decisions/0008-monthly-worker-selection-flow.md) | رحلة اختيار العاملة في خدمات الأفراد | معتمد ومنفّذ (الشيت اتحدّث بـ 0013) |
| [0013](../../decisions/0013-worker-selection-sheet-from-excp.md) | شيت «ما هي خياراتك المفضلة؟» زي ملف excp: الاختيار والاستلام والفرع | معتمد ومنفّذ |
| [0012](../../decisions/0012-hourly-workers.md) | الساعة: الشركة بتعيّن، والعاملة بتظهر قبل الدفع، ومفيش عدد عاملات، والاستبدال من الزيارات القادمة | معتمد ومنفّذ |

## الشاشات

| الشاشة (اسم الإطار في Figma) | الوصف |
|---|---|
| [`workers/worker_profile_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9298-23032) | «الملف الشخصي للعاملة»: `bottom_sheet` + `worker_profile` في الـ slot + زرار «اختيار العاملة». الضغط على صورة العاملة (`video_avatar_ring`) بيفتح شيت الفيديو (overlay) |
| [`workers/worker_video_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26601) | «الفيديو التعريفي»: `bottom_sheet` فيه مساحة الفيديو و`icon_placeholder` (`ic_play`)، وزرار «تم» |

| [`workers/worker_profile_bottom_sheet/view`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23713) | نفس الملف بزرار «تم» (بيقفل). بيتفتح من تفاصيل طلب الساعة قبل الدفع ومن الزيارات |
| [`workers/worker_profile_bottom_sheet/replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23794) | نفس الملف بزرار «اختيار العاملة» اللي بيفتح تأكيد الاستبدال. بيتفتح من `orders/visits/replace_worker` |
| [`workers/worker_profile_bottom_sheet/current_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9442-26015) | نفس الملف بزرار «استبدال العاملة» اللي بيودّي على `orders/visits/replace_worker`. بيتفتح من كروت الزيارات في تفاصيل طلب الساعة قبل الدفع ([قرار 0019](../../decisions/0019-replace-worker-before-payment.md)) |

كل الـ bottom sheets هنا متبنية على organism `bottom_sheet` (`585:3350`)، والمحتوى في الـ slot بتاعه، زي `monthly_offers/offers_filtration_bottom_sheet`.

### اختيار العاملة في خدمات الأفراد ([قرار 0008](../../decisions/0008-monthly-worker-selection-flow.md))

| الشاشة | الوصف |
|---|---|
| [`monthly_offers/worker_selection_method_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-23557) وحالاته: [`/app`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-23688)، [`/app_company`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-23845)، [`/app_delivery`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-24066)، [`/company_branch`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-24249)، [`/receive`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-24444)، [`/receive_company`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-24575)، [`/receive_delivery`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-24770) | «ما هي خياراتك المفضلة؟» بكروت `filtration_elements` بأيقونات (زي شيت فلترة العروض): «كيف تريد اختيار العاملة» (من التطبيق / من الشركة)، و«كيف تريد استلام العاملة» (من الشركة / توصيل للمنزل + مصاريف التوصيل 80)، و«اختر الفرع المناسب لك»، و«موافق». كله instance من template [`worker_selection_method_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9335-5182). التفاصيل والروابط في [قرار 0013](../../decisions/0013-worker-selection-sheet-from-excp.md) |
| [`monthly_offers/choose_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-22500) | «اختيار العاملة»: فلاتر مختارة (`filtered_chip`) + «تصفية» و«رتب بـ» (`sorting_dropdown`)، و`section_header` «عاملات «اسم الشركة»»، وقائمة `worker_card`، و«اعرض المزيد من العاملات». الضغط على الكارت بيفتح `workers/worker_profile_bottom_sheet` ([قرار 0016](../../decisions/0016-no-buttons-in-worker-cards.md)) |
| [`monthly_offers/workers_filtration_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26680) | «فلترة العاملات»: 4 أقسام بنفس مكوّنات [فلترة عروض الساعة](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=585-4041): `filter_section` + `filtration_elements` (المختار `Variant2`) من غير أيقونات: النوع، الخبرة، الديانة، المهارات. و«مسح الكل» / «تطبيق الفلتر» |
| [`monthly_offers/offer_details/worker_selected`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-23392) | تفاصيل التعاقد: `worker_card` للعاملة المختارة (من غير مهارات، للعرض بس)، مكان ملاحظة «سيتم اختيار العاملة من فرع الشركة» |

حالة «تختارها الشركة» هي [`monthly_offers/offer_details`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=892-11054) زي ما هي.

### خدمات الساعة ([قرار 0012](../../decisions/0012-hourly-workers.md))

| المكان | الشاشة |
|---|---|
| قبل الدفع | [`hourly_offers/reservation_successfully`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-14094) (بعد تأكيد الحجز وقبل الدفع، زي excp): كارت لكل زيارة (`visit_worker_card`، الأولوية للزيارة: [قرار 0018](../../decisions/0018-visit-first-assigned-workers.md))، والضغط عليه بيفتح ملف العاملة. راجع [hourly-services.md](hourly-services.md) |
| الزيارات | `visit_details`: «عرض الملف» جنب اسم العاملة، و«استبدال العاملة» في القادمة |
| الاستبدال | `orders/visits/replace_worker` ← `replace_worker_bottom_sheet` ← `favorite_replaced_worker_bottom_sheet` ← `favorite_worker_result_popup` أو `replace_worker_result_bottom_sheet`، وآخرها تأكيد الحجز (قبل الدفع). ومن الزيارات فيه نسخة `orders/hourly_order_details/show_visits/*` آخرها `show_visits/upcoming` (م. سند 2026-11-27). راجع [visits.md](visits.md#الرحلة) |

## المكوّنات

| المكوّن | الصفحة | الخصائص |
|---|---|---|
| [`worker_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9311-24185) | organisms | `state=default`. نصوص: `worker_name`، `rating_value`، `rating_count`. من غير مهارات ([قرار 0017](../../decisions/0017-compact-worker-card.md)). من غير زراير: الضغط على الكارت كله ([قرار 0016](../../decisions/0016-no-buttons-in-worker-cards.md)) |
| [`worker_profile`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9311-24186) | organisms | `state=default`. نصوص: `worker_name`، `rating_value`، `rating_count`. الصورة `video_avatar_ring` (exposed، و`has_video` بيشيل الحلقة والعلامة). النبذة والمهارات جوه slot الـ `default_card`، وبتتعدل في كل instance |
| `ic_play` (`9297:5`) | icons | أيقونة تشغيل، لونها `text/text_primary`. بتستخدم جوه `icon_placeholder` |

**المكوّنات الموجودة اللي اتبنوا منها:**

| الجزء | المكوّن |
|---|---|
| الصورة | `profile_avatar_photo` (atom)، بصورة عاملة كـ override ([`worker_placeholder_photo`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9365-44258)) |
| نجمة التقييم | `rating_stars` `state=only_1_star` (atom) |
| الديانة، الخبرة، الجنسية | `contract_information_chip` `state=with_bg` (molecule): `label` = «الديانة» و`value` = «مسلمة» |
| المهارات | `contract_information_chip` `state=with_bg` (molecule)، القيمة بس من غير label، زي شكل الديانة والخبرة والجنسية (طلب منة 2026-11-25). كانت `badges` |
| «فيديو تعريفي» | [`video_avatar_ring`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9524-1642) + [`video_play_tag`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9524-1634) (molecules): حلقة متدرّجة حوالين الصورة وعلامة تشغيل (طلب منة 2026-11-25) |
| «نبذة عن العاملة»، «المهارات المعتمدة» | `default_card` (organism) بعنوان + slot |
| خلفية الكارت | نفس fills وeffects بتوع `offers_card` |

## بيانات العاملة

| الحقل | مثال | الكارت | الملف الشخصي |
|---|---|---|---|
| الصورة | — | `profile_avatar_photo` 48 | `profile_avatar_photo` 80 |
| الاسم | Amina Noor Salamat | ✓ | ✓ |
| التقييم وعدد التقييمات | 4.5 (85) | ✓ | ✓ |
| الديانة | مسلمة | ✓ | ✓ |
| الخبرة | +5 سنوات خبرة | ✓ | ✓ |
| الجنسية | الفلبين | ✓ | ✓ |
| المهارات | غسيل وكي (+2) | — ([قرار 0017](../../decisions/0017-compact-worker-card.md)) | كلها، تحت «المهارات المعتمدة» |
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
- [ ] لو العاملة مالهاش فيديو، `has_video` في `video_avatar_ring` بيبقى off. ولو مالهاش صورة؟
- [ ] الزرار الأساسي في الملف الشخصي حسب السياق: «اختيار العاملة» في خدمات الأفراد. الاستبدال قرار جاي.
- [ ] لو الشركة مالهاش عاملات متاحة للعرض: هل «أختارها بنفسي» يختفي ولا يبقى disabled؟ والحالة الفارغة في `choose_worker` مش مرسومة.
- [ ] «رتب بـ» في قائمة العاملات بيرتب بإيه (الأعلى تقييماً، الخبرة…)؟

## الخطوات الجاية (كل واحدة بقرار)
مرشحين من [audit المقارنة](../../design-system/audits/2026-11-23-mueen-workers-comparison.md#اللي-ممكن-ينتقل-مرشحين-للخطة):
1. ~~اختيار العاملة في الأفراد (`monthly`)~~: منفّذ ([قرار 0008](../../decisions/0008-monthly-worker-selection-flow.md)).
2. ~~الساعة: العاملة المعيّنة على الزيارات~~: منفّذ ([قرار 0012](../../decisions/0012-hourly-workers.md)). عدد العاملات اتأجل.
3. ~~الاستبدال من الزيارات القادمة~~: منفّذ ([قرار 0012](../../decisions/0012-hourly-workers.md)).
4. قائمة المفضلة و«سبق التعامل معهم».
5. العاملات على الطلب في تفاصيل الطلب.
6. الحظر ([قرار 0002](../../decisions/0002-defer-block-worker.md)).
7. الرعاية الطبية.
8. «زياراتي» عامة.
