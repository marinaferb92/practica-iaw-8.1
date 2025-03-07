# Práctica Plesk
En esta práctica vamos a llevar a cabo la Creación y Configuración de Plesk, Plesk es una plataforma de software que nos permite alojar y administrar gráficamente aplicaciones web.

## 1.Creación de una instancia EC2 en AWS
En primer lugar creamos un grupo de seguridad con las siguientes caracteristicas 

**Reglas de entrada**
22: SSH (TCP)

80: HTTP (TCP)

443: HTTPS (TCP)

ICMP

8443: (TCP)

**Reglas de salida**

permitir todo el tráfico de salida para cualquier dirección IP

Una vez hecho esto crearemos una instancia con las siguientes caracteristicas y le asignaremos una Ip elastica
``
Nombre de la instancia: plesk.
Imagen (AMI): Última versión disponible de Ubuntu Server.
Arquitectura: x86.
Tipo de instancia: t2.medium (2 vCPUs, 4 GB de RAM).
Par de claves: vockey.
Grupo de seguridad: Crear un grupo de seguridad para plesk.
Almacenamiento: 30 GB de disco EBS.
``
![image](https://github.com/user-attachments/assets/d1cf7f5b-644f-4bd3-8044-a0e291974713)

## 2.Instalación de Plesk en la instancia EC2

Descargamos en script de instalación de Plesk
`wget https://autoinstall.plesk.com/plesk-installer`
Le damos permisos de ejecución 
`chmod +x plesk-installer`
y lo ejecutamos de la siguiente manera para hacer la instalacion de forma desatendida
`./plesk-installer install plesk`

Una vez finalizado veremos el siguiente mensaje, en el nos darán el enlace para acceder a la configuración del administrador.

![Lzk6UNC0IJ](https://github.com/user-attachments/assets/7370c836-c49c-465b-b445-fa6a37062b9c)

![6X9dUROuFw](https://github.com/user-attachments/assets/06d3fa1b-a864-48d0-80c0-b329cbd97203)

## 3.Gestión de dominios y subdominios en Plesk
Para acceder a los sitios sin modificar archivos en nuestra máquina local, usaremos nip.io, un servicio de DNS wildcard.

### 3.1 Crear un dominio en Plesk
Nuesto primer paso será el de crear un dominio para nuestra dirección IP. Para ello accederemos a **Websites & Domains** y y seleccionamos  **Add Domain**

![ZzUYb2Hm4I](https://github.com/user-attachments/assets/6ed9d104-f495-409d-92ae-30ff38576886)
![cmOrHxQ9q6](https://github.com/user-attachments/assets/9f72f75f-2950-4372-8450-361cab408e52)

Esto nos creará el Dominio con *www* por defecto para quitarlo iremos a *Hosting Settings* y en *Preferred domain* elegiremos el dominio sin el encabezado *wwww*
![image](https://github.com/user-attachments/assets/92969f20-a9d9-4108-a381-0b774a7b0656)
![2vwG7rnwts](https://github.com/user-attachments/assets/732d373b-e146-402d-963b-aea3ee52ca62)

### 3.2 Crearemos un certificado para este dominio
Para ello entraremos en la pestaña de *SSL/TLS Certificates* desde el *Dashboard* del dominio que hemos creado

![naHDOiKQ0U](https://github.com/user-attachments/assets/a4eef15e-2ebd-478f-80ec-dfa88f1bfe80)

Pulsamos sobre *Secure the Domain name* y pulsamos en *Get it free*
![DdaqfM4MP8](https://github.com/user-attachments/assets/90a5e4e7-f683-4627-b5d3-970bbba20c4c)

Una vez hecho esto podemos ver que nuestro sitio esta considerado como seguro 
![uA4MI8MtmH](https://github.com/user-attachments/assets/9a26827a-3d16-43c5-b633-474671681fc5)
![SW2WZpOzoq](https://github.com/user-attachments/assets/3958ee84-f186-4f8a-9385-71a611dcaca9)

## 4.Despliegue de WordPress con WP Toolkit

Con Plesk podemos instalar Wordpress de una forma muy sencilla a través de *WP Toolkit*
Vamos a *Applications* y el *Scan* encontrará la instalación de **Wordpress**, pulsamos en instalar.

![image](https://github.com/user-attachments/assets/545d0540-f17d-4f08-a029-89b52e998418)

Una vez terminado podemos ver que nos da la opcion ya de realizar configuraciones sobre esta

Si entramos en la pestaña de Wordpress podemos ver que ya está el sitio web creado y que podemos acceder a el

![image](https://github.com/user-attachments/assets/4c29ee01-775d-4839-b3f3-11868badc25e)
![image](https://github.com/user-attachments/assets/7b32f325-7485-47c6-bf1f-6f5f31d31ba2)

Desde *Log in* podremos acceder al administrador de Wordpress  configurar el sitio como queramos 
![s8T3flN91D](https://github.com/user-attachments/assets/1ebfc659-3d9e-478a-9865-35a8ac7593db)
![2vbCK0Z24B](https://github.com/user-attachments/assets/972cbe5e-a48a-4de9-9e78-f785111a9c95)
![Yx1QoHRDBC](https://github.com/user-attachments/assets/8a76f195-6ac9-46a3-bfd9-3d8bc6c0b987)






