# 0002: تأجيل «حظر العاملة» في الزيارات السابقة

| البند | القيمة |
|---|---|
| الحالة | معتمد |
| التاريخ | 2026-11-18 |
| صاحب القرار | العميل (عن طريق Menna Elsayed) |

## السياق
لما نقلنا الزيارات من Enaya ([طلب التعديل](../changes/2026-11-16-enaya-visits.md))، ظهرت في كارت الزيارة السابقة ميزتين: «تفضيل العاملة» و«حظر العاملة». العميل مش عايز الحظر دلوقتي، بس ممكن نرجّعه بعدين.

## الخيارات
1. **نمسح الزرار والـ popups:** التصميم يبقى نضيف، بس لو احتجناهم تاني لازم نبنيهم من الأول.
2. **ننقلهم لـ `draft_screens`:** بيفضلوا محفوظين، بس الزرار جوه الكومبوننت محتاج يتعدل في كل variant.
3. **مفتاح on/off في الكومبوننت:** boolean property تتحكم في ظهور الزرار. الرجوع بيبقى بضغطة واحدة، ومفيش حاجة بتتمسح.

## القرار
اخترنا الخيار 3. ضفنا في `visit_details` (`9081:6048`) boolean property اسمها `show_block_worker`، وقيمتها الافتراضية **off**، ومربوطة بـ visibility زرار «حظر العاملة» في متغيرين:
- `status=previous, state=expanded`
- `status=previous, state=expanded_rated`

لما المفتاح يبقى off، زرار «تفضيل العاملة» بياخد عرض الكارت كله. الـ popups `block_worker_popup` (`9081:31455`) و`block_worker_result_popup` (`9081:31542`) فضلوا مكانهم من غير تعديل.

**علشان نرجّعه:** نخلّي `show_block_worker` تبقى on، ونرجّع الحظر للقواعد في [visits.md](../product/features/visits.md).

## الأثر
- الشاشات أو المكوّنات المتأثرة: `visit_details`، و`orders/hourly_order_details/show_visits/previous`.
- ملفات التوثيق اللي اتحدثت: `visits.md`، `orders.md`، `organisms.md`، `glossary.md`، `overview.md`، `status.md`، `deviations.md`، والـ changelog.
