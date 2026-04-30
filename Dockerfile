# 1. เลือก Base Image: เราเอา NGINX ขนาดเล็ก (alpine) มาเป็นตัวตั้งต้น
FROM nginx:alpine

# 2. คัดลอกไฟล์: เอาไฟล์ index.html ของเรา ไปทับไฟล์หน้าแรกเดิมของ NGINX ใน Container
COPY index.html /usr/share/nginx/html/index.html

# 3. ระบุ Port: บอกให้รู้ว่า Container นี้จะให้บริการผ่าน Port 80
EXPOSE 80
