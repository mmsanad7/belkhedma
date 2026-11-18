# Organisms

صفحة Figma: [`organisms`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=12-4).

## التنقل

| المكوّن | الـ Variants | الاستخدام |
|---|---|---|
| [`top_navbar`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=78-1158) | `state=` default · navbar_address_selected | الشريط العلوي (رجوع + عنوان + إشعارات، أو العنوان في الرئيسية) |
| [`bottom_navbar`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=78-1640) | `state=` no_tab_selected · home_selected · offers_selected · orders_selected · favorites_selected · more_selected | الشريط السفلي الطافي |
| [`orders_tabs`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1213-25692) | `state=` default · hourly_tab · monthly_tab · medical_tab · mediation_tab | تبويبات أنواع الطلبات |
| [`orders_tabs_carousel`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1207-23843) | `state=` hourly_active · monthly_active · medical_active · mediation_active | التبويبات مع محتوى الطلبات |
| [`bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=585-3350) | — | الحاوية الأساسية لكل bottom sheet |

## الدخول

| المكوّن | الـ Variants | الاستخدام |
|---|---|---|
| [`login_by_mobile`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2191-21964) | `state=` empty · invalid_mobile_no · valid_mobile_no | محتوى شاشة إدخال الجوال |
| [`mobile_verification_by_otp`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2191-16691) | `state=` empty · first_focused · first_entered · second_focused · otp_code_invalid · code_valid | محتوى شاشة التحقق |
| [`otp_form`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=438-3994) | `state=` default · first_field_focused · first_field_entered · second_field_focused · all_invalid · all_valid | خانات الكود الأربع |

## حقول الإدخال

[`input_fields`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=58-756): مصفوفة `type` × `state`.

| `type` ↓ / `state` → | default | focused | filled | error | success | disabled |
|---|---|---|---|---|---|---|
| `default` | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| `search` | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| `phone` | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| `discount` | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| `dropdown` | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| `date` | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| `textarea` | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| `otp` | ✓ | ✓ | ✓ | ✓ | — | ✓ |

## العروض والشركات

| المكوّن | الـ Variants | الاستخدام |
|---|---|---|
| [`offers_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=313-45) | `state=` offer_card | كرت العرض في القوائم |
| [`offer_details_provider`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1277-12115) | — | بيانات الشركة في تفاصيل العرض |
| [`company_in_offer_summary_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1227-11457) | `state=` default | الشركة في شيت ملخص العرض |
| [`company_in_home`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1227-11496) | `state=` default · state2 · state3 · state4 | كرت شركة |
| [`company_in_featured`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=6578-30114) | `Property 1=` Default · Variant2 | شركة مميزة |
| [`home_banners_carousel`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=6002-69553) | `Property 1=` Default | بانرات الرئيسية |
| [`default_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1285-4182) | — | كرت عام |
| [`price_range_slider`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=7284-39605) | `Property 1=` Default | نطاق السعر في الفلترة |
| [`selected_filter_chips`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=7471-25893) | — | الفلاتر المختارة |
| [`search_process`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2191-22283) | `state=` empty_search_input · filled_search_input | محتوى شاشة البحث |

## الحجز والدفع

| المكوّن | الـ Variants | الاستخدام |
|---|---|---|
| [`address_confirmation`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=6542-27295) | `Property 1=` Default · White_bg | تأكيد عنوان التعاقد |
| [`select_date_and_day`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=676-3967) | — | أيام الزيارة وتاريخ البدء |
| [`coupon_code`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=6242-46261) | `state=` default · applied | كود الخصم |
| [`order_details_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=6242-47156) | `state=` summary_without_bg · expanded_summary · expanded_fields · collapsed | تفاصيل الطلب القابلة للطي |
| [`price_details`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=683-4537) | — | ملخص السعر |
| [`order_pricing_summary`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1227-11513) | `state=` default | ملخص سعر مختصر |
| [`bottom_price`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=6068-45715) | `Property 1=` Default | سطر السعر أسفل الشيت |
| [`payment_methods`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=819-4024) | — | اختيار وسيلة الدفع |
| [`payment_input`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=819-4262) | `state=` one_field · state3 · two_fields | حقول بيانات البطاقة |
| [`reservation_steps`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=6744-19150) | `state=` default | خطوات تأكيد الحجز الأربع |
| [`reservation_status`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1702-15405) | `state=` success · failed · lead | محتوى شاشة نتيجة الحجز |

## الطلبات

| المكوّن | الـ Variants | الاستخدام |
|---|---|---|
| [`service_order_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1690-16097) | `state=` hourly · monthly · medical · mediation × `status=` waiting_payment · active · nearing_expiration · cancelled | كرت الطلب (16 variant) |
| [`order_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1227-11904) | `state=` default | كرت طلب |
| [`order_summary`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1587-11584) | — | ملخص الطلب |
| [`visit_details`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9081-6048) | `status=` upcoming · previous × `state=` collapsed · expanded، و`status=previous, state=expanded_rated`. Boolean: `show_block_worker` (افتراضي off) | كرت الزيارة في [الزيارات](../../product/features/visits.md): القادمة فيها «تأجيل الزيارة» والتنبيه، والسابقة فيها التقييم والتفضيل. زرار «حظر العاملة» بيظهر بس لما `show_block_worker` تبقى on ([قرار 0002](../../decisions/0002-defer-block-worker.md)) |
| [`worker_rating_summary`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9084-6930) | — | ملخص تقييم العاملة: المتوسط والمعايير الأربعة والملاحظات |
| [`calendar`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9080-6534) | — | تقويم شهري لاختيار تاريخ (تأجيل الزيارة) |

## الحساب والدعم

| المكوّن | الـ Variants | الاستخدام |
|---|---|---|
| [`profile_header`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1237-2796) | — | هيدر الملف الشخصي |
| [`profile_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=6507-26478) | `Property 1=` Default · img_profile_card · profile_card · profile_card_stats_group | كروت الملف الشخصي |
| [`notification`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2016-23148) | `state=` default | إشعار في القائمة |
| [`number_of_unread`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1595-14660) | — | عدد غير المقروء |
| [`help_and_support_header`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1818-17008) | — | هيدر صفحة الدعم |
| [`ticket_item`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1818-15127) | — | تذكرة دعم في القائمة |
