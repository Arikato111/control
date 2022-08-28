# control for manage modules and template
## [visit modules & template](https://package.anytion.com/package/)

---

### ตัวช่วยจัดการ Modules & template for PHP

[Docs](#docs)

[Get started](#get-started)

---

## Get started

### ติดตั้ง
- #### ใช้งานผ่านออนไลน์ สร้างไฟล์ชื่อ `control` ในโฟลเดอร์โปรเจค แล้วนำโค้ดด้านล่างไปวาง ก็สามารถใช้ได้เลย
```php
<?php
eval(substr(file_get_contents('https://raw.githubusercontent.com/Arikato111/control/master/control'), 6));
```

- #### ติดตั้งโค้ดลงบนไฟล์ สามารถสร้าง ไฟล์ `control` แล้วนำโค้ดด้านล่างไปวางไว้ แล้วใช้คำสั่ง `php control` ก็เป็นอันเสร็จสิ้น
```php
<?php
file_put_contents('control', file_get_contents('https://raw.githubusercontent.com/Arikato111/control/master/control'));
```

---

## Docs

### What is control ?
`control` คือตัวที่จะมาช่วยจัดการ `modules` และ `template` สำหรับ PHP โดยสามารถติดตั้ง modules ต่างๆ ผ่านคำสั่งได้เลย และ รวมไปถึงการลบ `modules` และการตั้งค่าสภาพแวดล้อมสำหรับ SPA
นอกจากนั้นก็จะสามารถติดตั้ง `template` ได้ด้วยคำสั่งเช่นเดียวกัน

### การใช้งาน

แทน `#` ด้วย `php`

### คำสั่งเกี่ยวกับ โปรเจค
` # control init ` คือการสร้างไฟล์ `package.json` ที่จะเก็บข้อมูลต่างๆ และรวมไปถึง modules ที่ติดตั้งด้วย ซึ่งต้องใช้เป็นอย่างแรก
- `#control init -y` สามารถใช้ เพื่อตกลงทั้งหมด ซึ่งจะได้ไฟล์ **package.json** ที่มีค่าเป็น default 

`# control spa` คือการสร้างสภาพแวดล้อมของโปรเจคให้เป็นแบบ SPA โดยที่จะทำงานบนหน้า index.php เพียงหน้าเดียว

`# control update`  คือการอัพเดทไฟล์ `control` ให้เป็นเวอร์ชั่นล่าสุด

` # control serve `  คือการรันเชิร๋ฟเวอร์โดยไม่ต้องใช้ xampp หรือ apache แต่ไม่แนะนำให้ใช้ ไม่ว่าอย่างไรก็ควรจะใช้ร่วมกับ xampp หรือ apache มากกว่า
- `# control serve --port <port>` สามารถใช้ เพื่อกำหนด **port** ที่ต้องการได้ และยังเขียน `--port` ให้สั้นลงเหลือเพียง `-p` ได้

### การจัดการ   modules
`# control list` คือการดูรายชื่อ **modules** ที่ติดตั้งในโปรเจค

`# control install` คือการติดตั้ง modules ตามรายการใน package.json 
- สามารถเขียน `install` ให้สั้นลงเหลือ `i` ได้


`# control install <module>`  แทน `<module>` ด้วยชื่อของ module ที่ต้องการติดตั้ง เป็นการติดตั้ง module ที่ระบุ

`# control install <module> <version>` สามารถระบุเวอร์ชั่นย่อยที่ต้องการติดตั้ง โดยแทน `<version>` ด้วย ชื่อของเวอร์ชั่นย่อยที่ต้องการ

`# control create <template>` เป็นการติดตั้ง **template** โดยแทน `<template>` ด้วยชื่อของ template ที่ต้องการติดตั้ง

`# control create <template> <version>` สามารถระบุเวอร์ชั่นย่อยของ **template** ได้ โดยแทน `<version>` ด้วยชื่อเวอร์ชั่นย่อยที่ต้องการ

`# control remove <module>` เป็นการลบ module ที่เคยติดตั้งไปแล้ว โดยแทน `<module>` ด้วยชื่อ module ที่ต้องการลบ
- สามารถเขียน `remove` ให้สั้นลงเหลือ `rm` ได้


### ติดตั้ง modules จาก Url github

#### สำคัญ ต้องใช้ Url ที่ระบุ branch ด้วย โดยคลิกเลือก branch ก่อนทำการ copy

`# control url install <github-branch-url>` ติดตั้ง module โดยแทน `<github-branch-url>` ด้วย Url ที่คัดลอกมา

`# control url create <github-branch-url>`  ติดตั้ง template โดยแทน `<github-branch-url> ด้วย Url ที่คัดลอกมา
