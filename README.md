# Talleres 7: SQL: Sentencias básicas y setup - Cantera 2 - Sofka

## Tabla De Contenido.
1. [Información General](#información-general)
1. [Requerimientos](#requerimientos)
1. [Implementación](#implementación)
1. [Instalación](#instalación)
1. [Tecnologías](#tecnologías)
1. [Enlaces](#enlaces)
1. [Autor](#autor)

---

## Información General

Crear una base de datos en MySQL que incluya la primera, segunda y tercera forma normal de SQL.

--- 

### Requerimientos
 
#### La base de datos consiste en dar solución a una tienda que contiene lo siguiente:

1. La tienda tiene productos y proveedores
1. La tienda vende productos y tiene clientes
1. La tienda solo tiene un vendedor, el dueño
1. Los clientes no están registrados pero si se pide el número de documento y tipo de documento para poder hacer la venta.

#### Entregables dos scripts SQL en dos archivo .sql, el cual, cuando este script se ejecute en MySQL deberá hacer lo siguiente:

- Primer script:
    - Crear las tablas requeridas con las relaciones necesarias
    - Llenar las tablas con información previa para poder manipular la base de datos a nivel de datos.
    - Realizar dos borrados lógicos y dos borrados físicos de ventas realizadas.
    - Modificar tres productos en su nombre y proveedor que los provee.
- Segundo script:
    - Consulta SQL donde pueda obtener los productos vendidos digitando tipo de documento y número de documento.
    - Consultar productos por medio del nombre, el cual debe mostrar quien o quienes han sido sus proveedores.
    - [PLUS no obligatorio] Crear una consulta que me permita ver qué producto ha sido el más vendido y en qué cantidades de mayor a menor.

---

### Implementación

En este proyecto se implementó SQL como lenguaje de programación y mysql workbench como entorno gráfico de diseño de bases de datos.


## Base de Datos Tienda

## Listado de entidades y atributos.

### productos  **( ED )**  <!-- Entidad de datos -->
- producto_id  **( PK )** <!-- Llave primaria -->
- nombre
- descripción
- precio
- provedor_id  **( FK )**  <!-- Llave foránea -->


### proveedores **( ED )**  <!-- Entidad de datos -->
- proveedor_id  **( PK )** <!-- Llave primaria -->
- nombre
- dirección
- teléfono


### clientes        **( ED )**  <!-- Entidad de datos -->
- cliente_id        **( PK )** <!-- Llave primaria -->
- tipo_documento    **(UQ)**  <!-- Campo unico --> 
- numero_documento  **(UQ)**  <!-- Campo unico -->
- nombre
- apellido
- dirección
- teléfono


### ventas    **( ED )**  <!-- Entidad de datos -->
- ventas_id   **( PK )** <!-- Llave primaria -->
- cliente_id  **( FK )**  <!-- Llave foranea -->
- producto_id **( FK )**  <!-- Llave foranea -->
- cantidad
- tipo_documento   
- numero_documento  
- fecha
- precio
- estado


### vendedor      **( ED )**  <!-- Entidad de datos -->
- vendedor_id     **( PK )** <!-- Llave primaria -->
- nombre   
- apellido   
- dirección
- teléfono


## Relaciones

1. Un **proveedor** provee varios **productos**     (_1 - M_).
1. Un **cliente** pueden tener varias **Ventas**    (_1 - M_).
1. Un **producto** pueden tener varias **ventas**   (_1 - M_).


## Modelo Entidad Relación

![](./Modelo-Entida-Relacion.png)



## Glosario

- **PK** _Primary Key_
- **FK** _Foreing Key_
- **UQ** _Unique Attribute_
- **ED** Entidad de datos
- **EP** Entidad Pivote
- **EC** Entidad Catálogo

---

### Instalación

1. Abrir la terminal del Windows.

1. Si no tiene conocimiento de la terminal, ingrese al siguiente link para que realice una breve introducción: https://learn.microsoft.com/es-es/windows/terminal/

1. Clonar el repositorio colocando en la terminal de Windows, el comando: git clone https://github.com/Mendoalon/Taller-7-SQL.git

1. Abrir la aplicación MySQL Workbench.

1. Si no tiene conocimiento de la aplicacion MySQL Workbench, ingrese al siguiente link para que realice una breve introducción e instalación: https://www.youtube.com/watch?v=0p9J9SmCX8M

1. Tener la aplicación MySQL Workbench abierta y ubicarse en la barra superior, en la pestaña file, presionar click y seleccionar Open SQL Script.

1. Abrir el proyecto clonado de nombre: Taller-7-SQL.

1. Encontrará la estructura dos archivos de nombres: PrimerScript.sql y SegundoScrip.sql.

1. Seleccione primero el archivo PrimerScript.sql

1. Luego realice el mismo proceso del paso 6 y seleccione el archivo SegundoScrip.sql

1. El aplicativo MySQL Workbench mostrará dos pestañas en la parte superior.

1. Seleccione la pestaña PrimerScript y ubiqué el icono de "rayo", genera click y ejecutará la creación de las tablas con sus consultas.

1. Para la segunda pestaña de nombre SegundoScrip realicé el paso anterior y ejecutar la consultas solicitadas.

1. Cada archivo cuenta con la documentación necesaria para su entendimiento.


Observación: Para el correcto funcionamiento de la aplicación favor realicé los paso como se le indican.

---

### Tecnologías

El taller fue desarrollado usando.

- Tecnología: MySQL.
- Editor: MySQL Workbench.

---

### Enlaces  

1. Enlace del repositorio GitHub:  https://github.com/Mendoalon/Taller-7-SQL.git

---

### Autor  
 # Luis Alberto Mendoza Alonso.