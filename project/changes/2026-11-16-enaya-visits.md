# نقل بيزنس الزيارات من Enaya

| البند | القيمة |
|---|---|
| الحالة | منفّذ (2026-11-16) |
| مكان التنفيذ | ملف Figma الجديد `mCPCipJETTjSW7GD8vsrzY` (نسخة من `HWnOHugM9Pc54J8aui4Hww` وبقت هي المرجع) |
| التاريخ | 2026-11-16 |
| مقدم الطلب | m.sanad |
| الأولوية | متوسطة **(يحتاج تأكيد)** |

## Context
قسم «زيارات الساعات» في ملف Enaya V1 (`jXy7LDBbGe4iTDH9Cjw59i`، صفحة screens `2:12`) فيه تفاصيل وإجراءات على الزيارة أكتر بكتير من اللي في بالخدمة.
المطلوب حاجتين:
1. نقارن الاتنين ونوضح الفرق.
2. ننقل 4 خصائص لشاشة `orders/hourly_order_details/show_visits` الموجودة في بالخدمة: تبويبات قادمة/سابقة، تأجيل الزيارة، تقييم العاملة، وتفضيل/حظر العاملة.

## المقارنة

| الجانب | Enaya (`visit_list_template` `6544:31371` / `6544:31644`) | بالخدمة (`show_visits` `1587:13309` + `visits_bottom_sheet` `7239:18272`) |
|---|---|---|
| الوصول للشاشة | «زياراتي» من «المزيد»، وفيها كل الزيارات | من تفاصيل طلب الساعة، وفيها زيارات طلب واحد |
| ملخص الطلب | لا يوجد | كارت فوق: الخدمة، رقم الطلب، تاريخ الانتهاء، مدة الزيارة، والتقدم «1/4 زيارة» ✅ |
| التقسيم | تبويبات «الزيارات القادمة / السابقة» | قائمة «الزيارات القادمة» + «مشاهدة الكل»، ومفيش عرض للسابقة |
| الكارت | رقم الزيارة، التوقيت (من-إلى)، التاريخ، شارة الحالة (قادمة/سابقة)، ويتفتح ويتقفل | رقم الزيارة، اليوم والتاريخ، وقت البدء بس. مفيش حالة ولا توسيع |
| العاملة | اسم العاملة جوه الكارت | مش ظاهر |
| تأجيل | زر «تأجيل الزيارة» + تنبيه «في حالة تأجيل الزيارة لا يمكن ضمان نفس العاملة حسب الإتاحية» ← ديالوج «اختيار تاريخ الزيارة» (تقويم، إلغاء/التالي) `6544:32158` | لا يوجد |
| تقييم العاملة | في السابقة: «لا يوجد تقييم للعاملة» + زر «تقييم» ← 4 معايير بالنجوم (الالتزام بالموعد، جودة العمل، النظافة، حسن التعامل) + ملاحظات | يوجد تقييم للخدمة على مستوى الطلب بس (`service_rating_bottom_sheet`)، ومفيش تقييم للعاملة |
| تفضيل / حظر | زرين «تفضيل العاملة» و«حظر العاملة» ← ديالوج تأكيد (`6544:32493`، `6544:32664`) ← ديالوج نتيجة: «تم … على عدد 4 زيارة من 50 زيارة لعدم توفر إتاحية» + «تواصل مع خدمة العملاء whatsapp» (`6544:32643`، `6544:32665`) | لا يوجد |

**قواعد بيزنس من Enaya هنوثقها (كلها يحتاج تأكيد):**
- التأجيل مسموح للزيارات القادمة بس، والعاملة نفسها مش مضمونة بعده.
- التقييم والتفضيل والحظر للزيارات السابقة بس.
- التفضيل أو الحظر بيتطبق على الزيارات الجاية في الطلب حسب الإتاحية، وممكن يتطبق جزئياً (X من Y). ومحتاجين نعرف: هل بيتطبق على الطلب ده بس ولا على كل طلبات العميل؟
- مفيش حد أقصى أو نافذة زمنية للتأجيل في Enaya، لازم نسأل فريق المنتج.

## خطوات التنفيذ

### 1. Figma: ملف Belkhedma (`HWnOHugM9Pc54J8aui4Hww`)
نحمّل skills `figma-use` و`figma-generate-design` قبل أي `use_figma`. نبني من الكومبوننتس والمتغيرات الموجودة بس، ونطبق ستايل بالخدمة (Tajawal، primary/secondary، خلفية `#F2F0FA`) مش ستايل Enaya.

**نراجع الأول:** `visit_details` (`1587:12695`)، `tabs` (`172-2626`)، `general_badges`، `outline_notifications` (warning)، `rating_stars`، input `textarea`، `select_date_and_day` (`676-3967`)، وtemplates الـ bottom sheet والنتيجة (`reservation_success`). ونعرف إذا كان فيه تقويم جاهز ولا لأ.

**الكومبوننتس:**
- نطوّر `visit_details` بمتغيرات: `status=upcoming|previous` × `state=collapsed|expanded`، ونضيف التوقيت (من-إلى)، والشارة، واسم العاملة، والإجراءات.
- نعمل molecule لتقييم معيار واحد (`worker_rating_criterion`) من `rating_stars`.

**الشاشات** (393×852، naming `section/sub_section/state`):
- `orders/hourly_order_details/show_visits/upcoming`: الشاشة الحالية + تبويبات + كروت قادمة، وفيها كارت مفتوح عليه «تأجيل الزيارة» والتنبيه.
- `orders/hourly_order_details/show_visits/previous`: كروت سابقة، وفيها كارت مفتوح بدون تقييم (زر «تقييم» + تفضيل/حظر).
- `orders/hourly_order_details/show_visits/previous_rated`: الكارت فيه التقييم المسجّل.

**Bottom sheets وpopups** (فريمات أقصر):
- `orders/visits/reschedule_visit_bottom_sheet`: اختيار تاريخ الزيارة.
- `orders/visits/worker_rating_bottom_sheet`: 4 معايير + ملاحظات + إرسال.
- `orders/visits/favorite_worker_popup` و`orders/visits/block_worker_popup`: التأكيد.
- `orders/visits/favorite_worker_result_popup` و`orders/visits/block_worker_result_popup`: النتيجة + واتساب.

ونقصّر `visits_bottom_sheet` الموجود لو بقى مكرر، بعد ما نتأكد منك.

### 2. التوثيق (repo `D:\belkhedma`)
- **ملف جديد** `project/product/features/visits.md`: الرحلة (mermaid)، الشاشات، القواعد أعلاه، وقسم «يحتاج تأكيد».
- **ملف جديد** `project/design-system/audits/2026-11-16-enaya-visits-comparison.md`: جدول المقارنة، بلينكات Figma للملفين.
- **تحديث:**
  - `orders.md`: الرحلة وجدول الشاشات، ولينك لـ `visits.md`.
  - `organisms.md` و`molecules.md`: الكومبوننتس الجديدة والمعدّلة.
  - `glossary.md`: تأجيل، تفضيل العاملة، حظر العاملة، تقييم العاملة.
  - `deviations.md`: أي تعارض نلاقيه.
- **نعيد توليد** `project/data/screens.json` و`screens-index.md` من metadata الفيجما.
- **نسجّل** في `project/changelog/CHANGELOG.md`.
- commit و push على `mmsanad7/belkhedma` بعد كل مرحلة: المقارنة ← Figma والتوثيق ← الفهارس.

## نتيجة التنفيذ
- اتنفذ كل اللي فوق ما عدا شاشة `show_visits/previous_rated`. الحالة دي بقت متغير `status=previous, state=expanded_rated` في `visit_details`.
- كومبوننتس زيادة على الخطة: `calendar` و`worker_rating_summary`.
- `visits_bottom_sheet` لسه موجودة، والقرار في [deviations.md](../brand/deviations.md) (S-09).
- التفاصيل: [visits.md](../product/features/visits.md) و[audit المقارنة](../design-system/audits/2026-11-16-enaya-visits-comparison.md).

## التحقق
- `get_screenshot` لكل شاشة وكومبوننت جديد، ونقارنها بستايل بالخدمة وبشاشات Enaya.
- فحص بـ `use_figma`: مفيش قيم ثابتة للألوان أو المسافات أو الـ radius ليها متغير، والتسمية `snake_case`، والفريمات 393×852.
- نتأكد إن `screens.json` بيضم الفريمات الجديدة، وإن لينكات `screens-index.md` شغالة.
- `git status` نظيف بعد الـ push.
