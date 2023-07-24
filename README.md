 [![Diapositiva1.jpg](https://i.postimg.cc/nchZkGWj/Diapositiva1.jpg)](https://postimg.cc/Lhwr4L22)


# Turismo De Aventura

&nbsp;
### Organigrama de Equipo de Trabajo

&nbsp;
[![organigrama.png](https://i.postimg.cc/PryCJW3f/organigrama.png)](https://postimg.cc/mtcL6HWK)


&nbsp;
### Información del Proyecto
| Empresa / Organización   |  AMDL SOFTWARE & TECNOLOGY |
| ------------ | ------------ |
| Proyecto   |  Turismo de Aventura  |
| Fecha de preparación  | 05/06/2023  |
| Cliente  |  MTI. Marco Antonio Ramirez |
| Patrocinador Oficial  | MTI. Marco Antonio Ramirez H.  |
| Gerente / Líder de Proyecto  | Daniela Álvarez Ramírez H.  |

&nbsp;
### Historial de Versiones
| Fecha  | Versión  | Autor  | Organización  |Descripción   |
| ------------ | ------------ | ------------ | ------------ | ------------ |
| 05/06/2023  |1.0|  Alfredo Solis Sanchez | AMDL SOFTWARE & TECNOLOGY | Primera Versión  |   

&nbsp;
### Responsables
| Nombre y Apellido  | Cargo  | Departamento u Organización  | Fecha  |Firma   |
| ------------ | ------------ | ------------ | ------------ | ------------ |
| Daniela Álvarez Ramírez  |  Líder/DB Manager | AMDL SOFTWARE & TECNOLOGY | 05/06/2023  |   |
|  Alfredo Solis Sánchez | Analista  | AMDL SOFTWARE & TECNOLOGY  | 05/06/2023  |   |
|  Lesly Yareth Hernández Bonilla  | Frontend   | AMDL SOFTWARE & TECNOLOGY  |  05/06/2023 |   |
| Marco Antonio Rosas González  | Backend  |  AMDL SOFTWARE & TECNOLOGY | 05/06/2023  |   |

&nbsp;
### Proposito
Turismo de Aventura
<p align="justify"> 
Dicho documento cuenta con las especificaciones necesarias para el desarrollo del software “Turismo de Aventura” comprendiendo las siguientes partes del mismo.
Roles de trabajo para los diferentes representantes, el alcance del mismo, los requerimientos funcionales y no funcionales, así como las funcionalidades del mismo sistema descritas por los requerimientos.</p>

&nbsp;
### Alcance del producto / Software
<p align="justify"> 
Realización de una aplicación para Wear OS, implementada para la recomendación de lugares turísticos en cada uno de los diferentes pueblos mágicos del estado de Puebla.</p>

1. Da al usuario el o los lugares turísticos, en el cual el usuario se encuentre. 
2. Describe el lugar turístico con la información mas relevante
3. Se muestra una imagen de ayuda de referencia hacia el usuario. 
4. Da la ubicación del lugar turístico para una mejor ayuda. 

&nbsp;
### Funcionalidades del producto
<p align="justify"> Dichas funcionalidades del producto favorecen al usuario para una mejor experiencia hacia el mismo sistema. Manteniendo una buena experiencia hacia el mismo.</p>
 
1. Datos registrados. Se tendrá una cantidad de datos de los lugares donde incluyan sus características indicadas anteriormente. 
2. Búsqueda de pueblos mágicos. Contará con una lista de los pueblos mágicos los cuales se encuentran dentro del estado de Puebla. 
3. Búsqueda de lugares. La misma funcionalidad de búsqueda de los lugares de cada pueblo mágico dentro del estado de Puebla, será detallada y especifica para la mejor experiencia de cada usuario. 
4. Descripción del lugar. Proporciona información concisa y de interés para los usuarios, incluyendo el nombre, el cual será de suma importancia para la interpretación de los datos, su descripción del mismo y una referencia visual para mejor experiencia. 
5. GPS. Se obtienen las indicaciones del lugar seleccionado, dando las indicaciones necesarias y el servicio de maps.

&nbsp;
### Requerimientos Funcionales
1. El aplicativo permitirá la visualización de los diferentes pueblos mágicos del estado de Puebla. 
2. Al seleccionar algún pueblo mágico, la solicitud pasara al siguiente paso de flujo de trabajo de aprobación configurado en el sistema por defecto. 
3. Dado lo anterior, se mostrará las atracciones turísticas de pueblo mágico seleccionado. 
4. El sistema permitirá únicamente la visualización de la información deseada. 
5. Al seleccionar el lugar turístico, se mostrará información relevante del mismo.
6. 
7. Se permitirá el registro de una calificación por parte del usuario hacia los diferentes pueblos mágicos y sus atractivos turísticos para cada uno de ellos. 

&nbsp;
### Requerimientos No Funcionales

1. El sistema deberá ser capaz de contener la información necesaria y disponible cuando el usuario interactúe con la misma. 
2. Toda funcionalidad del sistema deberá ser optimizada para una buena experiencia. 
3. Los datos de puntuación hacia los pueblos mágicos deberán ser optimizados y guardados para futuros cambios al sistema. 
4. El sistema contara con un respaldo para la información almacenada. 
5. La usabilidad para el usuario deberá ser agradable para el mismo.
6. El sistema debe poseer interfaces graficas bien diseñadas. 
7. El tiempo para iniciar el sistema deberá ser optimo. 
8. La probabilidad de fallo del sistema deberá ser mínima. 
9. La aplicación deberá ser compatible con diferentes versiones.
10. La memoria RAM ocupada para la aplicación deberá ser considerable bajo ciertas condiciones.
11. La interfaz del usuario será implementada para adaptarse a diferentes dispositivos.

&nbsp;
### Reglas de Negocio

1. Para  poder visualizar los pueblos magicos, el usuario debera presionar el boton el cual lo dirije a las siguientes pantallas.
2. Para  poder visualizar los lugares turisticos de los diferentes pueblos magicos, el usuario debera presionar el boton el cual lo dirije a las siguientes pantallas.
3. Solo si el usuario cumple con ciertas condiciones, el sistema obtendra uan respuesta satisfactoria.
4. El aplicativo podra ser instalado en diferentes dispositivos, obteniendo una compatibilidad.

&nbsp;
### Aplicación General y Diagrama de Arquitectura
[![Aplicaci-n-General.png](https://i.postimg.cc/vTLJQcG0/Aplicaci-n-General.png)](https://postimg.cc/30NS1r4G)
&nbsp;
[![Arquitectura-Software.png](https://i.postimg.cc/9XtKwwjp/Arquitectura-Software.png)](https://postimg.cc/Lh5NrX5Y)


&nbsp;
### Clases y características de usuarios

Usuario Cliente
- Tipo de usuario cliente.
- Persona con conocimientos básicos para poder manejar el sistema.
- Habilidad en dispositivos.
- El usuario cliente tendrá que ejecutar las siguientes actividades dentro del 	sistema:

1. Realizar registro dentro del sistema. 
2. Gestionar sus datos del perfil. 
3. Visualización de pueblos mágicos del estado de Puebla. 
4. Selección de pueblos mágicos.
5. Visualización de lugares turísticos dentro de cada pueblo mágico del estado  	de Puebla. 
6. Dar calificación de puntuación a los pueblos mágicos. 

Usuario Administrador
- Tipo de usuario administrador.
- Persona con conocimientos para realización del sistema. 
- Administración de todo el sistema. 
- El usuario administrador tendrá que ejecutar las siguientes actividades dentro del sistema:

1. Creación de roles de usuario.
2. Añadir roles de usuario. 
3. Dar de baja a usuarios. 
4. Crear usuarios.
5. Gestión del sistema.

&nbsp;
### Entorno Operativo
Entorno de Desarrollo de Software: Android Studio es el entorno de desarrollo integrado oficial para la plataforma Android. 

Sistema Operativo del Aplicativo: El sistema operativo brindara al aplicativo sus herramientas correspondientes. 

WearOs:Dentro de este entorno se desarrollara el aplicativo, ofreciendonos funcionalidades especificas de estos dispositivos. 

Sistema Web:Una Aplicación web consumida a traves de numerosos dispositivos, ofreciendo ventajas a nuestro sistema. 

UI Alexa:El aplicativo consumido bajo esta tecnología interectuara con los diferentes usuarios finales. 

API: El aplicativo consumira FastAPI con sus respectivas funcionalidades.



&nbsp;
### Requerimientos de interfaces externas
#### Interfaces de usuario
&nbsp;


Interfaz de inicio para Wear Os.
- Interacción a través de elementos gráficos.
- El usuario contara con esta interfaz una vez que se tenga el aplicativo y se inicie el mismo.
- Se cuenta con el botón de iniciar para poder entrar al aplicativo.

Interfaz de Pueblo Mágicos para Wear Os.
- Interacción a través de elementos gráficos. 
- El usuario contara con esta interfaz una vez que le de iniciar y se mostrara la información siguiente. 
- El usuario puede seleccionar cualquier pueblo mágico. 
- Se cuenta con el botón de regresar para ir a la pantalla anterior. 

Interfaz de lugares turísticos para Wear Os.
- Interacción a través de elementos gráficos. 
- El usuario contara con esta interfaz una vez que se seleccione el pueblo mágico deseado.  
- El usuario puede seleccionar cualquier lugar turistico. 
- Se cuenta con el botón de regresar para ir a la pantalla anterior. 

Interfaz de descripción del lugar turistico para Wear Os.
- Interacción a través de elementos gráficos. 
- El usuario contara con esta interfaz una vez que se seleccione el lugar turistico deseado.  
- Se cuenta con el botón de regresar para ir a la pantalla anterior.

  &nbsp;
  
|  Interfaz de inicio para Wear Os | Interfaz de Pueblo Mágicos para Wear Os  | Interfaz de lugares turísticos para Wear Os  |  Interfaz de descripción del lugar turistico para Wear Os |
| :------------: | :------------: | :------------: | :------------: |
|  <img src="https://i.postimg.cc/6pzJFH0F/image.png" width="200"/> | <img src="https://i.postimg.cc/QdPtRxS2/image.png" width="200"/>  |  <img src="https://i.postimg.cc/DwgVXC4B/image.png" width="200"/> |  <img src="https://i.postimg.cc/HLxN7Tgk/image.png" width="200"/> |


  &nbsp;
#### Interfaces de hardware
Soporte con dispositivos:
 - Wear Os
 - Web 
 - UI Alexa

 #### Interfaces de software
 Base de Datos
 
 #### Interfaces de comunicación

  





