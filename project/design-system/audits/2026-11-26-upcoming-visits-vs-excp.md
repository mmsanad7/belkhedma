# مراجعة شاشة الزيارات القادمة مقارنة بـ excp

- **التاريخ:** 2026-11-26
- **طلبها:** م. سند
- **النوع:** مراجعة قراءة بس، ومفيش تعديل في Figma.
- **الشاشة:** [`orders/hourly_order_details/show_visits/upcoming`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1587-13309)
- **المقابل في excp:** [`my_visits/main/coming`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=1344-9574). بتتفتح من «زيارات العقد» في [تفاصيل العقد](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=1419-11883)، ومن «عرض الزيارات» في [نجاح الدفع](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5225-31674).

## الشاشة نفسها

| البند | excp | بالخدمة | الحكم |
|---|---|---|---|
| العنوان | «زياراتي» | «عرض الزيارات» | 🟡 نصّي |
| التبويبات | القادمة / المنتهية | الزيارات القادمة / الزيارات السابقة | ✅ نفس المعنى |
| عنوان الكارت | «زيارة رقم 1#»، وتحته التاريخ والوقت | التاريخ، وتحته رقم الزيارة والوقت، وجنبه حالة «جديدة» | 🟡 ترتيب مختلف |
| العاملة في الكارت | ظاهرة **في كل كارت حتى وهو مقفول**: صورة، واسم، وعلم الجنسية، وزرار «تفاصيل العاملة» | ظاهرة **في الكارت المفتوح بس**: الاسم و«عرض الملف»، **من غير صورة** | 🟡 م-1 |
| الإجراءات | في الكارت المفتوح: «استبدال العاملة» و«تأجيل الزيارة» | في الكارت المفتوح: «تأجيل الزيارة» و«استبدال العاملة» | ✅ |
| تنبيه التأجيل | مش موجود | «في حالة تأجيل الزيارة لا يمكن ضمان نفس العاملة حسب الإتاحية» | ➕ إضافة عندنا |
| الـ navbar السفلي | موجود | مش موجود، لأنها شاشة جوه تفاصيل الطلب | ✅ مقبول |

## روابط الشاشة

| الرابط | excp | بالخدمة | الحكم |
|---|---|---|---|
| ملف العاملة | «تفاصيل العاملة» ← [شيت](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5155-26743) فيه زرار «استبدال العاملة» وجملة «لست راض عن العاملة؟…» | «عرض الملف» ← [`worker_profile_bottom_sheet/view`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23713) فيه «تم» بس | 🟡 م-2 |
| التأجيل | [شيت التقويم](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5153-26140) ← «تأجيل الزيارة» ← [«تم تأجيل الزيارة بنجاح»](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5153-26209) ← «العودة الي الزيارات» | [`reschedule_visit_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9081-31157) ← «تأكيد التأجيل» بيقفل الشيت بس | 🟡 م-3 |
| الاستبدال (البداية) | «استبدال العاملة» ← [`my_visits/replace_worker/list`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=1396-13641) | «استبدال العاملة» ← [`orders/visits/replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23874) | ✅ |
| الاستبدال (الرجوع) | النتيجتين ← «العودة الي الزيارات» ← الشاشة دي | النتيجتين ← «رجوع إلى الزيارات» ← [تأكيد حجز الساعة](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-14094)، وفيها «ادفع» | ❌ م-4 |

## الفروق

- **م-1 (العاملة في الكارت):** في excp العميل بيشوف مين جاية في كل زيارة من غير ما يفتح الكارت. عندنا لازم يفتحه، ومفيش صورة. ممكن نستخدم [`visit_worker_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9425-7013) اللي بيتعرض في تأكيد الحجز ([قرار 0018](../../decisions/0018-visit-first-assigned-workers.md)) **(يحتاج قرار)**.
- **م-2 (ملف العاملة):** excp بيدّي طريق تاني للاستبدال من الملف. ممكن «عرض الملف» هنا يفتح [`current_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9442-26015)، اللي فيه «استبدال العاملة». و`view` يفضل للزيارات السابقة.
- **م-3 (التأجيل):** excp بيأكد للعميل إن التأجيل تم وبيرجّعه للزيارات. عندنا الشيت بيتقفل من غير أي تأكيد.
- **م-4 (الرجوع بعد الاستبدال):** الشيتات اللي بعد `replace_worker` متشاركة مع رحلة قبل الدفع، فالرجوع اتظبط على تأكيد الحجز. من الشاشة دي لازم يرجع لها هي، زي excp. ده محتاج نسخة منفصلة من الشيتات لواحدة من الرحلتين.
