# الانحرافات عن النظام (Deviations)

أماكن في ملف Figma لا تتبع النظام، أو تتعارض فيها صفحات التوثيق داخل Figma مع المتغيرات والـ styles الفعلية. تم رصدها في مراجعة 2026-11-15، والمرجع في كل حالة هو **المتغيرات والـ styles الفعلية**، لأنها المستخدمة في التصميم.

لكل بند: الحالة `مفتوح` أو `تم الحل`، ولما يتحل انقله لقسم «تم الحل» واذكر التاريخ.

## مفتوح

### التوكنز وصفحات التوثيق

| # | المكان | المشكلة | الفعلي (المتغيرات) | المقترح |
|---|---|---|---|---|
| D-01 | صفحة `spacing` | توضح 8 درجات تنتهي بـ `3xl = 40` و`4xl = 60` | 9 درجات: `3xl = 32`، `4xl = 40`، `5xl = 60` | تحديث الصفحة |
| D-02 | صفحة `radius` | نفس مشكلة D-01 (`3xl = 40`، `4xl = 60`) | `radius_3xl = 32`، `radius_4xl = 40`، `radius_5xl = 60` | تحديث الصفحة |
| D-03 | text style `font_large_regular` | الاسم يقول Regular | Tajawal **Medium** 14/20 | إعادة التسمية أو تغيير الوزن |
| D-04 | text style `font_small_regular` | الصفحة: Regular 10/20 | Tajawal **Medium** 10/**16** | توحيد |
| D-05 | text style `font_small_medium` | الصفحة: Medium 10/12 | Tajawal **Bold** 10/**20** | توحيد |
| D-06 | text style `font_xs_regular` | الاسم يوحي بـ 8px Regular، وغير موجود في صفحة `typography` | Tajawal **Bold 18**/20 | إعادة تسمية أو حذف |
| D-07 | متغير `font/family/font_content` | خط ثاني (Cairo) معرّف لكن غير موثق | `Cairo` | توضيح الاستخدام أو حذفه |
| D-08 | متغير `buttons/btn_denger` | خطأ إملائي (denger) | — | `btn_danger`، مع الانتباه إن إعادة التسمية تؤثر على الربط |
| D-09 | متغيرات بأسماء فيها مسافة: `text_secondary 2`، `text_secondary 3`، `border_secondary 2`، `border_secondary 3` | المسافة تعمل مشاكل عند التصدير للكود | — | `text_secondary_2` وهكذا |
| D-10 | collection `primitives ` | الاسم فيه مسافة في آخره | — | `primitives` |
| D-11 | Effect styles | لا يوجد أي effect style، والظلال معرّفة كمتغيرات أرقام وألوان فقط | — | إنشاء effect styles لـ `button-primary` و`button-secondary` وظل الكروت |

### المكوّنات

| # | المكان | المشكلة | المقترح |
|---|---|---|---|
| C-01 | `filtration_elements`، `service`، `home_banners_carousel`، `bottom_price`، `profile_card`، `address_confirmation`، `company_in_featured`، `price_range_slider` | الخاصية اسمها `Property 1` وقيمها `Default` و`Variant2` و`Variant3` بدل `state=` بقيم وصفية | إعادة التسمية بنفس نمط باقي المكتبة |
| C-02 | `text_buttons` (`state9`)، `navbar_btn_icon` (`state2`)، `logo` (`state2`)، `progress_bar` (`state3`)، `search_or_filtration` (`state2`)، `dashboard_statistics` (`state2`)، `payment_input` (`state3`)، `company_in_home` (`state2`، `state3`، `state4`) | قيم variants مرقّمة بدون معنى | أسماء وصفية |
| C-03 | صفحات `atoms` و`molecules` و`organisms` | عناصر شاردة: `Rectangle 1`، `Rectangle 2`، `Polygon 1`، ونص اسمه `6` في molecules | حذفها أو نقلها لـ `sand_box` |
| C-04 | `separate_back` | الاسم غير واضح، والمقصود غالباً زر الرجوع | `back_button` |
| C-05 | `profile_header`، `ticket_item`، `help_and_support_header`، `number_of_unread`، `order_summary`، `worker_rating_summary`، `calendar` | مكوّنات مفردة على صفحة organisms، وبعضها حجمه حجم molecule. (`visit_details` اتحل في 2026-11-16 وبقى component set) | مراجعة التصنيف |

### الشاشات

| # | المكان | المشكلة | المقترح |
|---|---|---|---|
| S-01 | `hourly_offers/offers_filtration_bottom_sheet` | إطاران بنفس الاسم (`585:4041` بارتفاع 744، و`9098:22052` بارتفاع 438). الإطار `9098:22052` اتعمل من جديد في 2026-11-16 مكان `7776:20728`، والاسم لسه مكرر | تمييز الاسم، مثلاً `.../full` و`.../compact` |
| S-02 | `_hourly_offers/default`، `_monthly_offers/default`، `_medical_offers/default` | نسخ تبدأ بـ `_`، وغير واضح إن كانت قديمة أو بديلة | نقلها لـ `draft_screens` أو حذفها |
| S-03 | إطارات داخلية باسم `Frame 7` و`Frame 427319797` و`Frame 427319825` | أسماء افتراضية | أسماء وصفية (`actions`، `content`…) |
| S-04 | الـ bottom sheets في `orders/order_details/*` | الإطار الداخلي اسمه `offer_details` في كلها | تسمية حسب المحتوى (`visits_list`، `invoice`…) |
| S-05 | `visit_details` (`9081:6048`) | العنوان نص مؤقت «عنوان الزيارة يكون هنا»، والكارت بيعرض وقت البدء بس من غير التاريخ ولا «من-إلى» زي ما كانت الخطة | نص حقيقي، وإضافة التاريخ والتوقيت من-إلى **(يحتاج تأكيد)** |
| S-06 | `reschedule_visit_bottom_sheet` (`9081:31157`) | بيانات التقويم غلط: نوفمبر 2026 فيه 31 يوم، وأول الشهر واقع يوم جمعة (الصح: 30 يوم، ويبدأ يوم أحد) | تصحيح بيانات `calendar` |
| S-07 | `favorite_worker_result_popup` و`block_worker_result_popup` | فيه عنوان باهت فوق الأيقونة باين إنه طبقة زيادة من الـ header | مراجعة الطبقة وحذفها لو مش مقصودة |
| S-08 | صفحة `screens`: section `_iPhone Duo Adaptation – home` (`9002:20569`) | تجربة لمقاسات iPhone Duo جوه صفحة الشاشات المعتمدة، ومعاها كومبوننت `nav_rail` (`9009:21371`) متعرّف برّه صفحات المكتبة | نقلها لـ `sand_box` أو `draft_screens`، أو اعتمادها ونقل `nav_rail` للـ organisms **(يحتاج تأكيد)** |
| S-09 | `orders/order_details/visits_bottom_sheet` (`7239:18272`) | ممكن تكون اتكررت مع `show_visits/upcoming` بعد إضافة التبويبات | قرار من فريق المنتج: نشيلها ولا نسيبها |

## تم الحل
_لا يوجد بعد._
