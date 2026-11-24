# فهرس الشاشات (Mobile)

كل الإطارات في صفحة `screens` في Figma (120 إطاراً). الملف مولَّد من [`project/data/screens.json`](../../data/screens.json) بالسكريبت [`generate-screens.ps1`](../../../shared/scripts/generate-screens.ps1)، فلو تغيّرت الشاشات شغّل السكريبت تاني.

- **شاشة:** إطار كامل `393×852`.
- **Bottom sheet:** إطار أقصر يمثّل نافذة منبثقة من الأسفل فوق شاشة أخرى.
- أي إطار اسمه بيبدأ بـ `_` مش داخل في الفهرس (عددهم حالياً: 5). راجع [قرار 0003](../../decisions/0003-underscore-ignored.md).

## البداية

| الإطار | النوع | المقاس | Figma |
|---|---|---|---|
| `onboarding` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=438-5926) |
| `splash` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=438-5894) |

## الدخول والتحقق

| الإطار | النوع | المقاس | Figma |
|---|---|---|---|
| `auth/login_by_mobile/empty` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=300-1535) |
| `auth/login_by_mobile/invalid_mobile_no` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=300-1802) |
| `auth/login_by_mobile/valid_mobile_no` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=300-1724) |
| `auth/login_popup_in_offers_steps` | Bottom sheet | 393×300 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=852-5329) |
| `auth/mobile_verification/code_invalid` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=438-5402) |
| `auth/mobile_verification/code_valid` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=438-5588) |
| `auth/mobile_verification/empty` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=402-1441) |
| `auth/mobile_verification/first_entered` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=438-5040) |
| `auth/mobile_verification/first_focused` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=438-3820) |
| `auth/mobile_verification/second_focused` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=438-5209) |

## الرئيسية

| الإطار | النوع | المقاس | Figma |
|---|---|---|---|
| `home` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=78-1880) |
| `home/no_address_selected` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1738-18427) |

## خدمات بالساعة

| الإطار | النوع | المقاس | Figma |
|---|---|---|---|
| `hourly_offers/company_selection_bottom_sheet` | Bottom sheet | 393×711 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=7471-25928) |
| `hourly_offers/default` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=852-7042) |
| `hourly_offers/filters_applied` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=852-7024) |
| `hourly_offers/filters_bottom_sheet/with_selected_filters` | Bottom sheet | 393×711 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=7471-24777) |
| `hourly_offers/offer_details` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=669-3049) |
| `hourly_offers/offer_details/assigned_workers` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-24395) |
| `hourly_offers/offers_filtration_bottom_sheet` | Bottom sheet | 393×744 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=585-4041) |
| `hourly_offers/offers_filtration_bottom_sheet` | Bottom sheet | 393×438 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9098-22052) |
| `hourly_offers/offers_summary_popup` | Bottom sheet | 393×408 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=585-3676) |
| `hourly_offers/offers_summary_popup/without_cleaning_materials` | Bottom sheet | 393×340 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=657-2974) |
| `hourly_offers/payment_successfully` | Bottom sheet | 393×262 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=851-5135) |
| `hourly_offers/reservation_failed` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=848-4796) |
| `hourly_offers/reservation_in_progress` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=6744-18214) |
| `hourly_offers/reservation_successfully` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-14094) |
| `hourly_offers/reservation_successfully_lead` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2485-24223) |
| `hourly_service_selection` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=6068-30441) |

## خدمات الأفراد (شهري)

| الإطار | النوع | المقاس | Figma |
|---|---|---|---|
| `monthly_offers/choose_worker` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-22500) |
| `monthly_offers/choose_worker/more_workers` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-25915) |
| `monthly_offers/default` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=892-10966) |
| `monthly_offers/filtered` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=892-10985) |
| `monthly_offers/offer_details` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=892-11054) |
| `monthly_offers/offer_details/worker_selected` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9302-23392) |
| `monthly_offers/offers_filtration_bottom_sheet` | Bottom sheet | 393×308 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26522) |
| `monthly_offers/offers_summary_popup` | Bottom sheet | 393×340 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=892-11022) |
| `monthly_offers/payment_successfully` | Bottom sheet | 393×262 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=892-11085) |
| `monthly_offers/reservation_failed` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-15388) |
| `monthly_offers/reservation_successfully` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-15386) |
| `monthly_offers/worker_selection_method_bottom_sheet` | Bottom sheet | 393×268 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-23557) |
| `monthly_offers/worker_selection_method_bottom_sheet/app` | Bottom sheet | 393×404 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-23688) |
| `monthly_offers/worker_selection_method_bottom_sheet/app_company` | Bottom sheet | 393×500 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-23845) |
| `monthly_offers/worker_selection_method_bottom_sheet/app_delivery` | Bottom sheet | 393×440 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-24066) |
| `monthly_offers/worker_selection_method_bottom_sheet/company_branch` | Bottom sheet | 393×364 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-24249) |
| `monthly_offers/worker_selection_method_bottom_sheet/receive` | Bottom sheet | 393×268 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-24444) |
| `monthly_offers/worker_selection_method_bottom_sheet/receive_company` | Bottom sheet | 393×364 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-24575) |
| `monthly_offers/worker_selection_method_bottom_sheet/receive_delivery` | Bottom sheet | 393×304 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9336-24770) |
| `monthly_offers/workers_filtration_bottom_sheet` | Bottom sheet | 393×558 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26680) |

## رعاية طبية

| الإطار | النوع | المقاس | Figma |
|---|---|---|---|
| `medical_offers/default` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=892-11003) |
| `medical_offers/filtered` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=6313-41019) |
| `medical_offers/offers_filtration_bottom_sheet` | Bottom sheet | 393×308 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=6313-41337) |

## الوساطة

| الإطار | النوع | المقاس | Figma |
|---|---|---|---|
| `mediation/maid_nomination/offer_details` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=904-18951) |
| `mediation/maid_nomination/offers` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=904-18907) |
| `mediation/maid_nomination/payment_successfully` | Bottom sheet | 393×262 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=904-19000) |
| `mediation/maid_nomination/reservation_failed` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-16175) |
| `mediation/maid_nomination/reservation_successfully` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-16173) |
| `mediation/well_known_maid/maid_data` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=904-18925) |
| `mediation/well_known_maid/offer_details` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=904-18936) |
| `mediation/well_known_maid/offers` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=904-18889) |
| `mediation/well_known_maid/payment_successfully` | Bottom sheet | 393×262 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=904-18996) |
| `mediation/well_known_maid/reservation_failed` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-15777) |
| `mediation/well_known_maid/reservation_successfully` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-15775) |

## العروض

| الإطار | النوع | المقاس | Figma |
|---|---|---|---|
| `offers` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1102-14110) |
| `offers/service_selection` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=7495-28390) |
| `offers/service_type_selection_bottom_sheet` | Bottom sheet | 393×308 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=7495-27658) |

## البحث

| الإطار | النوع | المقاس | Figma |
|---|---|---|---|
| `search/empty_search_input` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=497-2603) |
| `search/filled_search_input` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=922-15274) |
| `search/results` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=922-14903) |

## المفضلة

| الإطار | النوع | المقاس | Figma |
|---|---|---|---|
| `favorites` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1102-14131) |

## الطلبات

| الإطار | النوع | المقاس | Figma |
|---|---|---|---|
| `orders` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2197-31588) |
| `orders/hourly` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2197-28912) |
| `orders/hourly_order_details` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1626-30683) |
| `orders/hourly_order_details/show_visits/previous` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9081-30591) |
| `orders/hourly_order_details/show_visits/upcoming` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1587-13309) |
| `orders/mediation` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2197-30066) |
| `orders/mediation_order_details` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2197-34675) |
| `orders/mediation_order_details_unpaid` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2759-23991) |
| `orders/medical` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2197-29777) |
| `orders/medical_order_details` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2197-34120) |
| `orders/monthly` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2197-29488) |
| `orders/monthly_order_details` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2197-33524) |
| `orders/order_details/contact_form_bottom_sheet` | Bottom sheet | 393×432 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=7239-18296) |
| `orders/order_details/contact_method_bottom_sheet` | Bottom sheet | 393×244 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=7263-19172) |
| `orders/order_details/invoice_bottom_sheet` | Bottom sheet | 393×567 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=7239-18283) |
| `orders/order_details/service_rating_bottom_sheet` | Bottom sheet | 393×439 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=7239-18290) |
| `orders/order_details/visits_bottom_sheet` | Bottom sheet | 393×532 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=7239-18272) |
| `orders/visits/favorite_replaced_worker_bottom_sheet` | Bottom sheet | 393×184 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26847) |
| `orders/visits/favorite_worker_popup` | Bottom sheet | 393×184 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9081-31414) |
| `orders/visits/favorite_worker_result_popup` | Bottom sheet | 393×276 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9081-31496) |
| `orders/visits/replace_worker` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23874) |
| `orders/visits/replace_worker_bottom_sheet` | Bottom sheet | 393×236 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26768) |
| `orders/visits/replace_worker_result_bottom_sheet` | Bottom sheet | 393×262 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26926) |
| `orders/visits/reschedule_visit_bottom_sheet` | Bottom sheet | 393×488 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9081-31157) |
| `orders/visits/unfavorite_worker_result_popup` | Bottom sheet | 393×276 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9308-24382) |
| `orders/visits/worker_rating_bottom_sheet` | Bottom sheet | 393×440 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9081-31316) |

## المزيد

| الإطار | النوع | المقاس | Figma |
|---|---|---|---|
| `more` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1102-14096) |

## الملف الشخصي

| الإطار | النوع | المقاس | Figma |
|---|---|---|---|
| `profile/complete_profile` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=852-6153) |
| `profile/dashboard` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1288-15668) |
| `profile/edit_profile` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1299-16601) |

## العناوين

| الإطار | النوع | المقاس | Figma |
|---|---|---|---|
| `addresses/add_new_address` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1299-18163) |
| `addresses/add_new_address/edit_selected` | Bottom sheet | 393×576 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1299-18472) |
| `addresses/add_new_address/selected_on_map` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1299-18171) |
| `addresses/default` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1102-14144) |
| `addresses/empty` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1102-14155) |

## الشركات

| الإطار | النوع | المقاس | Figma |
|---|---|---|---|
| `companies` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1626-29037) |
| `companies/company_info` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1625-16915) |

## الإشعارات

| الإطار | النوع | المقاس | Figma |
|---|---|---|---|
| `notifications` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1603-15795) |
| `notifications/notifications_setting_popup` | Bottom sheet | 393×276 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1603-16063) |

## المساعدة والدعم

| الإطار | النوع | المقاس | Figma |
|---|---|---|---|
| `help_and_support` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1626-29419) |
| `help_and_support/create_tickets` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1831-18112) |
| `help_and_support/empty` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1818-18417) |
| `help_and_support/faqs` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1831-15200) |
| `help_and_support/tickets_history` | شاشة | 393×852 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1831-18208) |

## العاملات

| الإطار | النوع | المقاس | Figma |
|---|---|---|---|
| `workers/worker_photo_viewer_bottom_sheet` | Bottom sheet | 393×447 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-25815) |
| `workers/worker_profile_bottom_sheet` | Bottom sheet | 393×497 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9298-23032) |
| `workers/worker_profile_bottom_sheet/replace_worker` | Bottom sheet | 393×549 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23794) |
| `workers/worker_profile_bottom_sheet/view` | Bottom sheet | 393×549 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9329-23713) |
| `workers/worker_video_bottom_sheet` | Bottom sheet | 393×624 | [فتح](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=9354-26601) |
