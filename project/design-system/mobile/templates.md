# Templates

صفحة Figma: [`templates`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1738-14228).

الـ Templates شاشات كاملة متكررة بحالات مختلفة. الشاشات في `screens` تستخدمها كـ instance واحد بدل إعادة بناء الشاشة.

| Template | الـ Variants | تستخدمه الشاشات |
|---|---|---|
| [`home`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1738-17755) | `active_tab=` hourly × `address=` not_selected · selected | `home`، `home/no_address_selected` |
| [`orders`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2197-26789) | `state=` hourly · monthly · medical · mediation | `orders`، `orders/hourly`، `orders/monthly`، `orders/medical`، `orders/mediation` |
| [`order_details`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2197-32206) | `state=` hourly · monthly · medical · mediation | `orders/*_order_details` |
| [`reservation_success`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=2485-23331) | `type=` default · lead | كل شاشات `*/reservation_successfully` و`reservation_successfully_lead` |
| [`reservation_failed`](https://www.figma.com/design/mCPCipJETTjSW7GD8vsrzY/Belkhedma-App?node-id=1728-14702) | — | كل شاشات `*/reservation_failed` |

## متى تعمل template جديد؟
لما يكون عندك شاشة تتكرر بنفس الهيكل في أكثر من 3 أماكن، والاختلاف بينها في المحتوى أو الحالة فقط.
