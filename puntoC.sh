PARA LA IMAGEN
docker build -t elchapa24/2parcial-ayso:v1.0
docker image ls
docker push elchapa24/2parcial-ayso:v1.0

PARA EL HOMEBANKING
vim dockerfile:
FROM nginx
COPY appHomeBanking /usr/share/nginx/html
vim index.html:
<h1> titulo index parcial </h1>
vim contacto.html:
<h1> Numero de contacto </h1>
<h2> Nombre: ezequiel </h2>
<h2> Apellido: echevarria </h2>
<h2> Contacto: 656565656565 </h2>
docker build -t elchapa24/homebanking:v1.0 .
docker push elchapa24/homebanking:v1.0
docker run -d -p 8080:80 elchapa24/2parcial-ayso:v1.0
docker image ls
docker container ls
docker stop 00b54b7dfd11
