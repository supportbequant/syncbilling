Script sencillo de sincronización entre un BQN y un billing.

## Instalación

El script necesita python 3.10 or posterior con el paquete *requests* versión 2.28.1 (no funciona con versiones posteriores).

### En Ubuntu Linux:
`$ sudo app install python3`

`$ sudo app install pip`

`$ sudo pip3 install requests==2.28.1`

### En Arch Linux:
`$ sudo pacman -S python3`

`$ sudo pip3 install requests==2.28.1`

### En Windows:
1. En una shell de administrador:

`> winget install python`

2. En una shell normal:

`> pip install requests`

#### En Mac OS:
1. Descargas el paquete para MAc del sitio oficial de python:

https://www.python.org/downloads/macos/

2. Instalar el paquete (introduzca la contraseña de Administrator cuando se requiera).

4. En la shell de comandos:

`$ pip3 install requests`

## Configuración

Generar un API token en el billing.

Habilitar la REST API en el BQN.

## Ejecución del script

Cada vez que se requiera una sincronización, ejecute el script. Use la opción -h para ver las opciones, incluidas la IP, usuario y contraseña dell BQN y el servidor y credenciales del billing.

El script no incluye programación de ejecución periódica, que deberá hacerse externamente. En Linux, se puede hacer que el script se ejecute periódicamente usando crontab (por ejemplo cada quince minutos):

`sudo crontab -e`
`*/15 * * * *  <script-con-camino-completo> <parametros-script> > /tmp/last-billing.log`

Ejemplo:

`*/15 * * * *  /home/myaccount/uisp/sync-uisp-bqn -b 192.168.0.121 myuser mypassword billing.server.com api-key > /tmp/last-billing.log`


## Limitaciones conocidas

- La primera ejecución puede llevar minutos. Las siguientes enviarán al BQN solo los cambios y serán más rápidas.
- Si la sincronización falla, no habrá reintentos (deberán hacerse externamente, por ejemplo en la sihguiente ejecución programada).

## Relación entre entidades del BQN entities con el esquema del billing

Mire los comentarios de la opción -h para más información.
