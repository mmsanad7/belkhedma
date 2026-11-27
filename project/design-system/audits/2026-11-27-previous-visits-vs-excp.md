# مراجعة شاشة الزيارات السابقة مقارنة بـ excp

- **التاريخ:** 2026-11-27
- **طلبها:** م. سند
- **النوع:** مراجعة قراءة بس، ومفيش تعديل في Figma.
- **الشاشة:** [`orders/hourly_order_details/show_visits/previous`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9081-30591)
- **المقابل في excp:** [`my_visits/main/past`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=1344-10216) (تبويب «المنتهية»).

## الشاشة نفسها

| البند | excp | بالخدمة | الحكم |
|---|---|---|---|
| العنوان | «زياراتي» | «عرض الزيارات» | 🟡 نصّي، زي القادمة |
| التبويبات | القادمة / المنتهية | الزيارات القادمة / الزيارات السابقة | ✅ |
| العاملة في الكارت | في المقفول والمفتوح | في المقفول والمفتوح (اتعمل 2026-11-27) | ✅ |
| الإجراءات | «تقييم العاملة»، «تفضيل العاملة»، «حظر العاملة» | «تقييم»، «تفضيل العاملة» | ✅ «حظر العاملة» مؤجل بقصد ([قرار 0002](../../decisions/0002-defer-block-worker.md)) |
| بعد التقييم | — | الكارت بيعرض التقييم (المتوسط، والأربع معايير، والملاحظات) | ➕ إضافة عندنا |
| الـ navbar السفلي | موجود | مش موجود، لأنها شاشة جوه تفاصيل الطلب | ✅ مقبول |

## روابط الشاشة

| الرابط | excp | بالخدمة | الحكم |
|---|---|---|---|
| ملف العاملة | «تفاصيل العاملة» ← [شيت](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5155-26743) فيه «استبدال العاملة» | «عرض الملف» ← [`view`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23713) من غير استبدال | ✅ بقصد: الاستبدال للقادمة بس، وexcp غلط هنا (م. سند 2026-11-27) |
| التقييم | «تقييم العاملة» ← [`evaluate_service_sheet`](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5155-26315) «تقييم الخدمة»: تقييم العاملة + تقييم السائق/التوصيل + ملاحظات ← «حفظ التقييم» بيقفل | «تقييم» ← [`worker_rating_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9081-31316): 4 معايير للعاملة + ملاحظات ← «إرسال التقييم» بيقفل | 🟡 س-1 |
| التفضيل (التأكيد) | [شيت](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5155-26621) فيه كارت العاملة + «إذا أعجبتك الخدمة، يمكنك إضافة العاملة إلى المفضلة…» + «نعم , تفضيل العاملة» / «لا , رجوع» | [`favorite_worker_popup`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9081-31414): نص بس «هل تريد تفضيل العاملة …؟ سيتم ترشيحها لباقي زيارات الطلب…» + «تأكيد التفضيل» / «إلغاء» | 🟡 س-2 |
| التفضيل (النتيجة) | Swap ← [«تم تفضيل العاملة على عدد 9 من 10 زيارات»](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5155-26684) + «العودة الي الزيارات» ← المنتهية | Swap ← [`favorite_worker_result_popup`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9081-31496): «4 زيارات من أصل 50» + «تواصل عبر واتساب» + «تم» بيقفل | 🟡 س-3 |
| حظر العاملة | [شيت](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5155-26343) ← [نتيجة](https://www.figma.com/design/4PK0AGuoHmfsLkvN3kVTJC/excp_base_app_atomic?node-id=5155-26403) | مخفي (`show_block_worker` = off) | ✅ مؤجل بقصد |

## الفروق

- **س-1 (التقييم):** شيت excp اسمه «تقييم الخدمة»، وفيه تقييم العاملة وتقييم السائق/التوصيل مع بعض. عندنا الشيت للعاملة بس، وتقييم الخدمة منفصل على مستوى الطلب ([`service_rating_bottom_sheet`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=7239-18290)). ومفيش عندنا تقييم للسائق خالص. **✅ اتقفلت (م. سند 2026-11-27):** خدمة الساعة عندنا لحد دلوقتي مفيهاش توصيل، فمفيش تقييم سائق، والشيت يفضل للعاملة بس.
- **س-2 (تأكيد التفضيل):** excp بيعرض كارت العاملة جوه الشيت وبيشرح فايدة التفضيل. عندنا نص بس. وأسماء الزرارين مختلفة.
  - **↩️ اتراجعنا عنها (م. سند 2026-11-27):** اتنفذت الأول زي excp (شرح الفايدة و[`worker_card`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9311-24185))، وبعدها م. سند قرر نتراجع. [`favorite_worker_popup`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9081-31414) رجع زي ما كان: نص بس، ومن غير كارت. الفرق عن excp ده بقرار من م. سند.
- **س-3 (نتيجة التفضيل):**
  - الزرار عندنا «تم» وبيقفل، وexcp «العودة الي الزيارات». النتيجة واحدة لأن العميل بيرجع لنفس الشاشة، بس الاسم مختلف عن نتايج الاستبدال اللي بقت «رجوع إلى الزيارات». **✅ اتغيّر لـ «موافق» (م. سند 2026-11-27)**، ولسه بيقفل الشيت.
  - الرقم «4 من 50» مش منطقي، وexcp «9 من 10». **م. سند 2026-11-27: يتعدّل لرقم منطقي.** المقترح: الطلب في البروتوتايب فيه 6 زيارات، 2 سابقة و4 قادمة (من 3 لـ 6)، فالنص يبقى «في 3 زيارات من أصل 4 زيارات متبقية». **✅ م. سند وافق، واتنفذ:** «تم تفضيل العاملة في 3 زيارات من أصل 4 زيارات متبقية، لعدم توفر إتاحتها في باقي الزيارات.» في [`favorite_worker_result_popup`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9081-31496). ونفس الرقم اتنفذ في نتيجة الاستبدال بعد الحجز [`show_visits/favorite_worker_result_popup`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9720-25931): «تم استبدال العاملة في 3 زيارات من أصل 4 زيارات متبقية…». أما نتيجة الاستبدال قبل الدفع [`favorite_worker_result_popup/replace_worker`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9663-25715) فلسه «4 من 50» **(مستني قرار م. سند)**.
  - «تواصل عبر واتساب» يقابله في excp «للشكوي يمكنك الإتصال الان بخدمة العملاء»، فالفكرة موجودة في الاتنين.
