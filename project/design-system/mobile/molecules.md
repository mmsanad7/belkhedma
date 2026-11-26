# Molecules

صفحة Figma: [`molecules`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=12-3).

## الإدخال والاختيار

| المكوّن | الـ Variants | الاستخدام |
|---|---|---|
| [`input_field_skeleton`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=26-141) | `state=` default · focus · error · disabled | الهيكل الأساسي لحقول الإدخال |
| [`check_box`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1227-11588) | `state=` default | Checkbox بنص (الموافقة على الشروط) |
| [`upload_attachments`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1227-11629) | `state=` default | رفع ملف (صورة الجواز، مرفقات التذكرة) |
| [`search_or_filtration`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1227-11605) | `state=` default · state2 | منطقة بحث وفلترة |
| [`filter_section`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=7284-21694) | `state=` expanded_options · expanded_price_range | قسم داخل شيت الفلترة |
| [`filtration_elements`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=6068-30821) | `Property 1=` Default · Variant2 · Variant3 | عناصر الفلترة |
| [`photo_zoom_badge`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9432-25884) | `state=` default | دايرة بيضا 24 فيها `icon_placeholder` 16 بـ `ic_form_search`، على ركن صورة العاملة في `worker_card`. بتوضّح إن الضغط على الصورة بيفتحها كبيرة |
| [`video_play_tag`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9524-1634) | `state=` default | علامة تشغيل 32×24 بتدرّج الزرار الأساسي و`ic_play` أبيض. جوه `video_avatar_ring` || [`video_avatar_ring`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9524-1642) | `state=` default. Boolean: `has_video` | صورة العاملة (`profile_avatar_photo` 80) بحلقة متدرّجة و`video_play_tag` تحتها. الضغط عليها بيفتح الفيديو التعريفي. مستخدمة في `worker_profile` (طلب منة 2026-11-25، من مقترح «حلقة الستوري» بتعديلها) |
| [`video_avatar_ring`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9524-1642) | `state=` default. Boolean: `has_video` | صورة العاملة (`profile_avatar_photo` 80) بحلقة متدرّجة و`video_play_tag` تحتها. الضغط عليها بيفتح الفيديو التعريفي. مستخدمة في `worker_profile` (طلب منة 2026-11-25، من مقترح «حلقة الستوري» بتعديلها) |
| [`sorting_dropdown`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=41-364) | `state=` default · branded | قائمة «رتّب بـ» |
| [`sorting_filtration`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=65-398) | `state=` default | زر «تصفية» |
| [`filtered_chip`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1227-11451) | `state=` default | فلتر مختار |

## التنقل والهيدر

| المكوّن | الـ Variants | الاستخدام |
|---|---|---|
| [`tabs`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=172-2626) | `state=` default · active × `direction=` default · horizontal | التبويبات |
| [`menu_icon_item`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=78-1593) | `state=` default · active | بند في الشريط السفلي (أيقونة + نص) |
| [`address_at_navbar`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1009-26692) | `state=` address_selected · address_not_selected | العنوان في شريط الرئيسية |
| [`section_header`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1227-11534) | `state=` default | عنوان قسم + «مشاهدة الكل» |
| [`bottom_sheet_header`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1227-11580) | `state=` header | هيدر الـ bottom sheet (عنوان + إغلاق). زرار الإغلاق `close_icon` عليه `Close overlay` في الكمبوننت نفسه، فبيقفل أي شيت (2026-11-25) |
| [`side_menu_items`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1038-27962) | `state=` default · critical | بنود قائمة «المزيد» |
| [`list_item`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1285-3717) | — | بند قائمة عام |
| [`buttons_icon`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1287-11439) | `state=` default · main · danger | زر أيقونة بنص تحته |

## الشارات والحالات

| المكوّن | الـ Variants | الاستخدام |
|---|---|---|
| [`status_badges`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=516-2898) | `state=` waiting_payment · nearing_expiration · active · cancelled | حالة الطلب |
| [`general_badges`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=41-388) | `status=` primary · warning · active · cancelled | شارة عامة |
| [`badges`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=41-371) | `state=` primary · secondary | «ضمان الاستبدال»، «عرض محدود» |
| [`contract_information_chip`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=690-3272) | `state=` with_bg · without_bg · full_width | معلومة عقد (الفترة، الجنسية…) |
| [`outline_notifications`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=819-4927) | `status=` success · warning · danger · hint | رسالة تنبيه بإطار. `hint` اتضافت 2026-11-25: خلفية `primary/50`، وأيقونة [`ic_lightbulb`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9551-8034) بلون `primary/600`، ونص `text_black`. مستخدمة في «زيارات العقد» |
| [`time_stamp`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1927-16263) | `state=` default | وقت الإشعار |

## العروض والشركات والطلبات

| المكوّن | الـ Variants | الاستخدام |
|---|---|---|
| [`company_rating`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=281-142) | `state=` default | اسم الشركة + التقييم |
| [`offer_pricing`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=310-30) | `state=` default | السعر برمز الريال |
| [`service`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=7495-28254) | `Property 1=` Default · Variant2 | كرت نوع خدمة (172×124) |
| [`home_services_item`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1227-11885) | `state=` default | أيقونة خدمة في الرئيسية |
| [`progress_data`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1220-4921) | `state=` default | نص تقدم الزيارات («12 زيارة») |
| [`step_item`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=6744-19307) | `state=` default · with_progress | خطوة في مؤشر الحجز |
| [`process_result_container`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=6311-30180) | `state=` default · with_progress · without_bg | صندوق نتيجة العملية |
| [`select_employee_from_branch_note`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1227-11972) | `state=` default | ملاحظة اختيار عاملة من فرع |
| [`dashboard_statistics`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1926-18245) | `state=` default · state2 | رقم إحصائي في لوحة الحساب |
| [`visit_worker_summary`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9717-6691) | `state=` default. Text: `worker_name`، `nationality` | ملخص العاملة على كارت الزيارة: صورة (`profile_avatar_photo` 24px)، واسم، وجنسية، و«تفاصيل العاملة» (`text_buttons` `card_button`). مقابل `worker_count` في excp. اتعمل لأن `visit_worker_card` كارت كامل بتاريخ و`worker_card` كبير للقايمة ([قرار 0010](../../decisions/0010-reuse-components-first.md)) |
| [`worker_rating_criterion`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9080-1124) | `state=` rateable · rated | معيار واحد من تقييم العاملة: نجوم قابلة للاختيار، أو الرقم بعد التقييم |

## الحساب والمحتوى

| المكوّن | الـ Variants | الاستخدام |
|---|---|---|
| [`address_item`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1227-11890) | `state=` default | عنوان في قائمة العناوين |
| [`profile_avatar_and_name`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1930-19151) | — | صورة واسم المستخدم |
| [`faqs_item`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1831-76) | `state=` question · answer | سؤال شائع (مطوي أو مفتوح) |
| [`empty_state`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1227-11634) | `state=` default | رسمة ونص الحالة الفارغة |
