# 0003: أي حاجة في Figma اسمها بيبدأ بـ `_` يتم تجاهلها

| البند | القيمة |
|---|---|
| الحالة | معتمد |
| التاريخ | 2026-11-18 |
| صاحب القرار | Menna Elsayed |

## السياق
في صفحة `screens` كان فيه فريمات قديمة أو تجريبية زي `_hourly_offers/default` وsection `_iPhone Duo Adaptation – home`، ومكانش واضح هي معتمدة ولا لأ ([S-02 وS-08](../brand/deviations.md)). ورغم كده كانت بتدخل في `screens.json` والفهرس.

## الخيارات
1. **ننقل أي حاجة مش محتاجينها لـ `draft_screens` أو `sand_box`:** الصفحات بتفضل نضيفة، بس النقل بيبوّظ مكان الفريم جنب الشاشات اللي ليها علاقة بيه.
2. **نضيف `_` قبل الاسم:** الفريم بيفضل مكانه للرجوع ليه، والتجاهل بيبقى بقاعدة واضحة وسهلة.

## القرار
اخترنا الخيار 2. أي فريم أو section أو كومبوننت اسمه بيبدأ بـ `_` بيعتبر **مش معتمد ويتم تجاهله**:
- مش بيدخل في `project/data/screens.json` ولا في `screens-index.md`. السكريبت [`generate-screens.ps1`](../../shared/scripts/generate-screens.ps1) بيستبعده لوحده، وبيكتب عدد المستبعد في `ignored_count`.
- مش بيتوثق في ملفات الـ features ولا المكوّنات، ومش بيتسجل كـ deviation.
- لو احتجناه تاني، بنشيل الـ `_` من اسمه، ونشغّل السكريبت تاني.

## الأثر
- اتشالت 3 فريمات من الفهرس: `_hourly_offers/default`، `_monthly_offers/default`، `_medical_offers/default`. العدد بقى 99.
- S-02 وS-08 في [deviations.md](../brand/deviations.md) اتقفلوا.
- ملفات التوثيق اللي اتحدثت: `AGENTS.md`، `screens.json`، `screens-index.md`، `deviations.md`، `status.md`، والـ changelog.
