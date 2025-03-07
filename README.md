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
y lo ejecutamos de la siguiente manera para 





