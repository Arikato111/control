# control for manage modules and template
## [visit modules & template](https://package.anytion.com/package/)

### วิธีใช้งาน นำไฟล์ control ไปไว้ใน project แล้วก็สามารถใช้งานได้
ตัวอย่างคำสั่ง
```
php control list
```
คือการดู รายการ modules ที่ติดตั้งไว้
สามารถใช้ 
```
php control help
```
เพื่อดูคำสั่งเพิ่มเติมได้ รวมทั้งติดตั้ง modules & template
ดู modules & template ได้ที่ [visit modules & template](https://package.anytion.com/package/)

ทางเลือกการใช้งาน สร้างไฟล์ชื่อ `control` แล้วนำโค้ดด้านล่างไปวาง ก็สามารถใช้ได้
```php
<?php
eval(substr(file_get_contents('https://raw.githubusercontent.com/Arikato111/control/master/control'), 6));
```

หรือหากต้องการติดตั้งไฟล์ สามารถสร้าง ไฟล์ `control` แล้วนำโค้ดด้านล่างไปวางไว้ แล้วใช้คำสั่ง `php control` ก็เป็นอันเสร็จสิ้น
```php
<?php
file_put_contents('control', file_get_contents('https://raw.githubusercontent.com/Arikato111/control/master/control'));
```