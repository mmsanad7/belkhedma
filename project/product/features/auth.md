# الدخول والتحقق (Auth)

## الهدف
دخول العميل برقم الجوال وكود تحقق، بدون كلمة مرور، مع إمكانية التصفح كزائر.

## الرحلة

```mermaid
flowchart LR
    A["splash"] --> B["onboarding"]
    B -->|"تسجيل الدخول"| C["login_by_mobile/empty"]
    B -->|"المتابعة كزائر"| H["home"]
    C --> C1{"رقم صحيح؟"}
    C1 -->|"لا"| C2["login_by_mobile/invalid_mobile_no"]
    C1 -->|"نعم"| C3["login_by_mobile/valid_mobile_no"]
    C2 --> C
    C3 --> D["mobile_verification/empty"]
    D --> D1["first_focused → first_entered → second_focused"]
    D1 --> D2{"الكود صحيح؟"}
    D2 -->|"لا"| D3["code_invalid"]
    D2 -->|"نعم"| D4["code_valid"]
    D3 --> D
    D4 --> H
```

## الشاشات

| الشاشة | الوصف |
|---|---|
| `splash` | الشعار على التدرج الأساسي |
| `onboarding` | «أهلاً بك في بالخدمة» وزرّان: «تسجيل الدخول» و«المتابعة كزائر» |
| `auth/login_by_mobile/*` | إدخال الجوال بمفتاح `+966`، بحالات: فارغ، رقم غير صحيح، رقم صحيح |
| `auth/mobile_verification/*` | كود من 4 خانات، بحالات: فارغ، الخانة الأولى محددة، الأولى ممتلئة، الثانية محددة، كود خاطئ، كود صحيح |
| `auth/login_popup_in_offers_steps` | bottom sheet تظهر للزائر عند محاولة الحجز |

## المكوّنات
`login_by_mobile` و`mobile_verification_by_otp` و`otp_form` و`input_fields` (`type=phone`، `type=otp`) و`text_buttons` و`logo`.

## قواعد العمل
- الزائر يقدر يتصفح الرئيسية والعروض والتفاصيل، لكن الحجز يحتاج تسجيل دخول.
- زر الإغلاق (`navbar_btn_icon`) أعلى شاشات الدخول يرجع المستخدم للخطوة السابقة.

## يحتاج تأكيد
- [ ] مدة صلاحية الكود، وزر «إعادة الإرسال» والعدّاد غير ظاهرين في الشاشات.
- [ ] هل يُطلب إكمال الملف الشخصي (`profile/complete_profile`) مباشرة بعد أول تسجيل؟
