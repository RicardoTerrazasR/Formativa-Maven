# Proyecto Web: Sistema de Gestión de Correos

Este proyecto es una aplicación web que permite gestionar el envío de correos electrónicos de manera eficiente, utilizando tecnologías como Java, JSP, HTML, CSS y una integración con una base de datos Oracle.

## Descripción

El proyecto consiste en una plataforma de gestión de correos que permite enviar, recibir y almacenar correos electrónicos a través de una interfaz web. Está diseñado para interactuar con una base de datos Oracle y usar una API de correo para enviar mensajes.

## Tecnologías Usadas

- **Java**: Lenguaje principal del backend.
- **JSP (JavaServer Pages)**: Para la creación dinámica de páginas web en el backend.
- **HTML & CSS**: Para la creación del frontend y diseño visual.
- **Mail API**: Para el envío de correos electrónicos.
- **Oracle**: Base de datos utilizada para almacenar la información de los usuarios y los correos enviados/recibidos.
- **SQL Developer**: Herramienta para gestionar la base de datos Oracle.

## Instalación

Para instalar y ejecutar este proyecto localmente, sigue estos pasos:

1. **Clonar el repositorio:**
    ```bash
    git clone https://github.com/usuario/repositorio.git
    ```

2. **Instalar dependencias:**
   Si tienes dependencias adicionales, usa Maven o Gradle para instalarlas (si aplica).
   
3. **Configurar la base de datos:**
   - Crea una base de datos en Oracle y configura las credenciales.
   - Usa SQL Developer para importar las tablas necesarias.

4. **Configurar el servidor de aplicaciones (por ejemplo, Tomcat):**
   Asegúrate de tener un servidor como Apache Tomcat configurado y listo para ejecutar aplicaciones JSP.

5. **Ejecutar el servidor:**
   Inicia el servidor y accede a la aplicación en tu navegador.

## Uso

Una vez que el servidor esté en funcionamiento, podrás acceder a la plataforma en tu navegador web. Desde allí podrás:

- **Enviar correos electrónicos.**
- **Ver el historial de correos enviados.**
- **Administrar las configuraciones de usuario.**

## Capturas de Pantalla

### Frontend

#### Pantalla de inicio

![Pantalla de inicio](https://github.com/user-attachments/assets/1290ee27-3ce6-4fc0-9275-635060f9a68f)

#### Composición de correos electrónicos

![Composición de correos](https://github.com/user-attachments/assets/4f3b6155-9d22-4ad5-ada0-826d694fdd82)

#### Historial de correos enviados

![Historial de correos](https://github.com/user-attachments/assets/470ed2bc-1fae-404d-b14a-286ee77b7f04)

### Backend

#### Configuración de la base de datos en Oracle

![Base de datos Oracle](https://github.com/user-attachments/assets/1774e032-8cbb-4add-b735-bc401e54aa94)

#### Interfaz de administración en el backend

![Interfaz de administración](https://github.com/user-attachments/assets/dc02c93e-7e28-4041-bf1f-dc50980d9087)

## Contribuciones

Las contribuciones son bienvenidas. Si deseas contribuir, por favor sigue estos pasos:

1. Haz un fork del repositorio.
2. Crea una rama para tu nueva funcionalidad (`git checkout -b feature-nueva`).
3. Realiza tus cambios y haz un commit (`git commit -am 'Añadir nueva funcionalidad'`).
4. Sube los cambios (`git push origin feature-nueva`).
5. Abre un pull request.

## Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para más detalles.

---

### Badge de Tecnologías Usadas

![Java](https://img.shields.io/badge/Java-%23f89820?style=flat&logo=java&logoColor=white)
![JSP](https://img.shields.io/badge/JSP-%23FF4500?style=flat&logo=java&logoColor=white)
![Oracle](https://img.shields.io/badge/Oracle-%23f80000?style=flat&logo=oracle&logoColor=white)
![Mail API](https://img.shields.io/badge/Mail_API-%23FF6347?style=flat&logo=gmail&logoColor=white)

---

Este proyecto fue creado con el objetivo de mejorar la eficiencia en el envío de correos electrónicos en plataformas web. ¡Si tienes alguna sugerencia o problema, no dudes en abrir un issue!
