# الرئيسية (Home)

## الهدف
نقطة الانطلاق: يختار العميل نوع الخدمة، أو يدخل مباشرة على العروض الأكثر طلباً.

## المحتوى (من أعلى لأسفل)

| القسم | المكوّن | الوصف |
|---|---|---|
| الشريط العلوي | `top_navbar` · `address_at_navbar` | العنوان المختار، وجرس الإشعارات بعدد غير المقروء |
| البانرات | `home_banners_carousel` | بانرات دوّارة، مثل «خدمات متميزة: أفضل العاملات بأسعار تنافسية» وزر «تصفح الخدمات» |
| الخدمات | `home_services_item` | 4 كروت: خدمات بالساعة، خدمات الأفراد، رعاية طبية، خدمات الوساطة |
| العروض والأكثر طلباً | `section_header` · `offers_card` | كاروسيل عروض مع رابط «مشاهدة الكل» |
| الشريط السفلي | `bottom_navbar` (`state=home_selected`) | الرئيسية، العروض، الطلبات، المفضلة، المزيد |

## الحالات

| الشاشة | متى |
|---|---|
| `home` | عنوان محدد (`template: home / address=selected`) |
| `home/no_address_selected` | لم يحدد العميل عنواناً بعد (`address=not_selected`) |

## التنقل
- كرت «خدمات بالساعة» ← `hourly_service_selection`
- كرت «خدمات الأفراد» ← `monthly_offers/default`
- كرت «رعاية طبية» ← `medical_offers/default`
- كرت «خدمات الوساطة» ← اختيار المسار (عاملة معروفة أو ترشيح)
- الجرس ← `notifications`
- العنوان ← `addresses/default`

## Template
`home` في صفحة templates (`1738:17755`)، بخاصية `active_tab=hourly` و`address=selected|not_selected`.
