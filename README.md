
# API de Recetas de Postres de Harry Potter

Bienvenido a la API de Recetas de Postres inspiradas en las películas de Harry Potter. Aquí te proporcionamos información sobre cómo utilizar la API y los pasos necesarios para configurar el proyecto en tu entorno local.

## Tecnologías Utilizadas

La API está construida utilizando las siguientes tecnologías:

- **Node.js:** Plataforma de ejecución para JavaScript del lado del servidor.
- **Express.js:** Framework web para Node.js que simplifica la creación de API y aplicaciones web.
- **MySQL:** Sistema de gestión de bases de datos relacional utilizado para almacenar información sobre las recetas y las películas.
- **dotenv:** Módulo de Node.js para cargar variables de entorno desde un archivo `.env`.
- **cors:** Middleware para Express.js que permite solicitudes desde diferentes dominios.

## Instalación de Dependencias

Antes de arrancar el proyecto, asegúrate de tener Node.js instalado en tu ordenador. Luego, sigue estos pasos:

1. **Clona el Repositorio:**
   - Abre tu terminal y ejecuta el siguiente comando para clonar el repositorio:

     ```bash
     git clone <URL_DEL_REPOSITORIO>
     ```

2. **Instala las Dependencias:**
   - Ve al directorio del proyecto:

     ```bash
     cd nombre_del_directorio
     ```

   - Ejecuta el siguiente comando para instalar las dependencias necesarias:

     ```bash
     npm install cors dotenv express mysql2
     ```

3. **Configura las Variables de Entorno:**
   - Crea un archivo llamado `.env` en el directorio raíz del proyecto.
   - Agrega las siguientes variables con los valores correspondientes:

     ```env
     HOST=nombre_del_host_de_tu_bd
     DBUSER=nombre_de_usuario_de_tu_bd
     PASS=contraseña_de_tu_bd
     DATABASE=nombre_de_tu_base_de_datos
     ```

   - Este archivo `.env` se utiliza para evitar el filtrado accidental de datos sensibles.

4. **Inicia el Servidor Local:**
   - Ejecuta el siguiente comando para iniciar el servidor local:

     ```bash
     npm run dev
     ```

5. **Explora la API:**
   - Una vez que el servidor esté en funcionamiento, puedes acceder a la API en `http://localhost:3001` (o el puerto que hayas configurado).

## Ejemplos de Uso

### Obtener todas las recetas

- **Método:** GET
- **Endpoint:** `/recipes`

### Obtener información de una receta por ID

- **Método:** GET
- **Endpoint:** `/recipes/:id` (reemplaza `:id` con el ID de la receta)

### Agregar una nueva receta

- **Método:** POST
- **Endpoint:** `/recipes`
- **Body:** Envía los datos de la receta en formato JSON.

### Actualizar una receta existente por ID

- **Método:** PUT
- **Endpoint:** `/recipes/:id` (reemplaza `:id` con el ID de la receta)
- **Body:** Envía los datos actualizados de la receta en formato JSON.

### Eliminar una receta por ID

- **Método:** DELETE
- **Endpoint:** `/recipes/:id` (reemplaza `:id` con el ID de la receta)

Esperamos que esta guía te sea útil para comprender y utilizar mi API de Recetas de Postres de Harry Potter. ¡Disfruta explorando el mundo culinario mágico de Hogwarts! 🧙‍♂️🍪
