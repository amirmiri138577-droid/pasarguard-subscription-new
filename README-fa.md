# قالب سفارشی صفحه Subscription برای PasarGuard

این پوشه شامل فایل HTML پیوست‌شده و Dockerfile برای جایگزینی صفحه عمومی Subscription در PasarGuard است.

## فایل‌ها

- `index.html`: صفحه سفارشی فارسی
- `Dockerfile`: ساخت image بر پایه image رسمی PasarGuard

## استقرار در Railway

1. این دو فایل را در یک Repository عمومی یا خصوصی GitHub قرار دهید.
2. در Railway یک Service از همان Repository بسازید.
3. در `Dockerfile` مقدار `PASARGUARD_TAG` را با نسخه‌ای که سرویس فعلی شما استفاده می‌کند یکسان کنید.
4. همان Environment Variables سرویس قبلی را وارد کنید.
5. همان Volume دیتای PasarGuard را به سرویس جدید متصل کنید.
6. Deploy کنید.
7. لینک قبلی Subscription را با حالت ناشناس و چند User-Agent مختلف تست کنید.

## نکته

این فایل فقط ظاهر و نحوه نمایش را تغییر می‌دهد. اطلاعات از API خود PasarGuard گرفته می‌شوند. اگر endpoint `/links` در نسخه فعلی شما وجود نداشته باشد، بخش لینک‌های کانفیگ ممکن است خالی بماند؛ در این حالت باید endpoint یا نسخه سازگار صفحه بررسی شود.

هرگز توکن Subscription را در GitHub، لاگ‌ها یا فایل عمومی قرار ندهید.
