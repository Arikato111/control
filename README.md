# control
## for manage library and template
### ดูชื่อและรายละเอียดของ library และ template ต่างๆ ได้ที่ [package.anytion](https://package.anytion.com/package/)

---

### ตัวช่วยจัดการ library & template for PHP

[Docs](#docs)

[Get started](#get-started)

[For linux](#for-linux)

---

## Get started

### ติดตั้ง

ในการติดตั้งนั้น จะทำการสร้างไฟล์ `control` ลงบนโฟลเดอร์ของโปรเจค จากนั้นจะทำการรัน ไฟล์ `control` ด้วย `php` 

- ### ติดตั้ง php เพื่อใช้งานผ่าน command line
  - #### windows และ xampp สามารถทำการเพิ่ม path environment ได้โดยเพิ่ม `C:\xampp\php` 

  - #### linux ทำการรันคำสั่ง `sudo apt install php8.1-cli` เพื่อติดตั้ง

- ### ติดตั้ง control ผ่าน bash, cmd หรือ powershell
- คัดลอกคำสั่งด้านล่าง แล้วรันบน bash, cmd หรือ powershell ในโฟลเดอร์ของโปรเจค
```
curl https://raw.githubusercontent.com/Arikato111/control/master/control -o control
```


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
`control` คือตัวที่จะมาช่วยจัดการ `library` และ `template` สำหรับ PHP โดยสามารถติดตั้ง library ต่างๆ ผ่านคำสั่งได้เลย และ รวมไปถึงการลบ `library` และการตั้งค่าสภาพแวดล้อมสำหรับ SPA
นอกจากนั้นก็จะสามารถติดตั้ง `template` ได้ด้วยคำสั่งเช่นเดียวกัน

---

$$  How-to-use-!$$

### การใช้งานคำสั่งต่างๆ 

แทน `#` ด้วย `php`

### เกี่ยวกับ control
`# control --version` เพื่อเช็คเวอร์ชั้นของ **control**

`# control --help` เพื่อดูคำแนะนำการใช้งานคำสั่ง


### คำสั่งเกี่ยวกับ โปรเจค
` # control init ` คือการสร้างไฟล์ `package.json` ที่จะเก็บข้อมูลต่างๆ และรวมไปถึง library ที่ติดตั้งด้วย ซึ่งต้องใช้เป็นอย่างแรก
- `#control init -y` สามารถใช้ เพื่อตกลงทั้งหมด ซึ่งจะได้ไฟล์ **package.json** ที่มีค่าเป็น default 

`# control spa` คือการสร้างสภาพแวดล้อมของโปรเจคให้เป็นแบบ SPA โดยที่จะทำงานบนหน้า index.php เพียงหน้าเดียว

`# control update`  คือการอัพเดทไฟล์ `control` ให้เป็นเวอร์ชั่นล่าสุด

` # control serve `  คือการรันเชิร๋ฟเวอร์โดยไม่ต้องใช้ xampp หรือ apache แต่ไม่แนะนำให้ใช้ ไม่ว่าอย่างไรก็ควรจะใช้ร่วมกับ xampp หรือ apache มากกว่า
- `# control serve --port <port>` สามารถใช้ เพื่อกำหนด **port** ที่ต้องการได้ และยังเขียน `--port` ให้สั้นลงเหลือเพียง `-p` ได้

### การจัดการ   library
`# control list` คือการดูรายชื่อ **library** ที่ติดตั้งในโปรเจค

`# control install` คือการติดตั้ง library ตามรายการใน package.json 
- สามารถเขียน `install` ให้สั้นลงเหลือ `i` ได้


`# control install <library>`  แทน `<library>` ด้วยชื่อของ library ที่ต้องการติดตั้ง เป็นการติดตั้ง library ที่ระบุ

`# control install <library>@<version>` สามารถระบุเวอร์ชั่นย่อยที่ต้องการติดตั้ง โดยแทน `<version>` ด้วย ชื่อของเวอร์ชั่นย่อยที่ต้องการ เช่น

- `# control install wisit-express@type`

- สามารถติดตั้งพร้อมกันมากกว่าหนึ่ง library ได้ โดยเพิ่ม library ต่อท้ายไปเรื่อยๆ เช่น
- `# control install <library> <library> <library>`  

ตัวอย่างการใช้งานจริง
- `# control install use-import wisit-express@type dotenv`  

`# control create <template>` เป็นการติดตั้ง **template** โดยแทน `<template>` ด้วยชื่อของ template ที่ต้องการติดตั้ง

`# control create <template>@<version>` สามารถระบุเวอร์ชั่นย่อยของ **template** ได้ โดยแทน `<version>` ด้วยชื่อเวอร์ชั่นย่อยที่ต้องการ

`# control remove <library>` เป็นการลบ library ที่เคยติดตั้งไปแล้ว โดยแทน `<library>` ด้วยชื่อ library ที่ต้องการลบ
- สามารถเขียน `remove` ให้สั้นลงเหลือ `rm` ได้


### ติดตั้ง library จาก Url github

#### สำคัญ ต้องใช้ Url ที่ระบุ branch ด้วย โดยคลิกเลือก branch ก่อนทำการ copy

`# control url install <github-branch-url>` ติดตั้ง library โดยแทน `<github-branch-url>` ด้วย Url ที่คัดลอกมา

`# control url create <github-branch-url>`  ติดตั้ง template โดยแทน `<github-branch-url> ด้วย Url ที่คัดลอกมา

### For Linux

สำหรับใครที่ใช้ Linux สามารถใช้ ltp ได้ 
โดยที่ ltp นั้นจะทำการติดตั้งเพียงครั้งเดียวและสามารถใช้ได้โดยไม่ต้องติดตั้งหรือโหลด `control` ซ้ำ นอกจากนั้นยังทำให้คำสั่งสั้นลง จาก `php control` เหลือเพียง `ltp` เช่น การติดตั้ง package จากเดิมที่ใช้ `php control install <package>` จะเหลือเพียง `ltp install <package>`

### การติดตั้ง ltp

- #### linux ทำการรันคำสั่ง `sudo apt install php8.1-cli` เพื่อติดตั้ง php ที่ใช้ผ่าน command line

- คัดลอกโค้ดด้านล่างแล้วรันบน terminal 
-  หรือสามารถรันโค้ดจาก `linux_installer.sh` ก็ได้

```bash
curl -o- https://raw.githubusercontent.com/Arikato111/control/master/linux_installer.sh | bash
```
```bash
wget -qO- https://raw.githubusercontent.com/Arikato111/control/master/linux_installer.sh | bash
```

- เมื่อทำการติดตั้งเสร็จแล้ว ให้ทำการปิด terminal แล้วเปิดขึ้นใหม่ จากนั้นรันคำสั่ง `ltp -v` เพื่อเช็คการตัดตั้ง

- ปล. การติดตั้งนี้ใช้ได้เฉพาะกับ **bash**