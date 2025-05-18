# Práctica #6 Creación de un contenedor personalizado para una aplicación frontend con Docker

## 1. Título

**Práctica No 6: Creación de una imagen personalizada para una aplicación frontend de Vite**

## 2. Tiempo de duración

La duración estimada para esta práctica es de aproximadamente 1 hora.

## 3. Fundamentos

En esta práctica se utilizaron los conocimientos sobre Docker para crear un contenedor para  una aplicación frontend desarrollada con Vite y TypeScript. A diferencia del uso de `docker-compose`, se construyó una imagen personalizada a partir de un `Dockerfile`, permitiendo tener un mayor control sobre la configuración y el entorno de ejecución de la aplicación.

En el procesos se realizó la creación de un archivo `Dockerfile`, la copia de los archivos necesarios del proyecto, la instalación de dependencias y la exposición del puerto correspondiente para servir la aplicación desde el contenedor.

## 4. Conocimientos previos

Docker es una herramienta que permite empaquetar aplicaciones en contenedores ligeros y portátiles. Cada contenedor incluye todo lo necesario para ejecutar la aplicación, como el código, las dependencias y las configuraciones, lo que garantiza la funcionalidad en cualquier entorno, según **(Docker Documentation, 2025)**.

Vite es un entorno de desarrollo frontend rápido y moderno que permite construir aplicaciones web eficientes. Este entorno, compatible con frameworks como React, Vue o Svelte, destaca por su capacidad de recarga instantánea y compilación optimizada, de acuerdo con **(Yu, 2023)**.

React, como define Domínguez et al. **(2021)**, es una biblioteca de JavaScript desarrollada por Facebook que facilita la creación de interfaces de usuario mediante componentes reutilizables. Su enfoque declarativo, junto con el uso del DOM virtual, permite actualizaciones rápidas y eficientes de la interfaz gráfica, lo que lo convierte en una herramienta ideal para aplicaciones dinámicas y escalables.

Cuando se combinan tecnologías como React, Vite y Docker, se logra un entorno de desarrollo robusto, moderno y portátil. El archivo `Dockerfile`, tal como indica Merkel **(2014)**, permite definir los pasos necesarios para construir una imagen de contenedor personalizada, adecuada tanto para desarrollo como para producción. Este enfoque de múltiples etapas permite separar la lógica de compilación del entorno de producción, generando así una imagen más liviana y optimizada. Como explica Dev **(2022)**, esta práctica mejora el rendimiento y facilita la integración continua en proyectos web modernos.


## 5. Objetivos a alcanzar

- Crear un archivo Dockerfile para contenerizar una aplicación frontend.
    
- Construir una imagen personalizada de Docker para la aplicación.
    
- Ejecutar un contenedor basado en la imagen creada.
    
- Verificar el funcionamiento de la aplicación a través del navegador.
    

## 6. Equipo necesario

- Computador con sistema operativo **MacOS 13.7.1** o similar con Docker instalado.
    
- **Visual Studio Code** como editor de código.
    
- Terminal.
    
- Docker instalado y en ejecución.
    
- Conexión a Internet para instalar dependencias del proyecto y descargar la imagen base.
    

## 7. Material de apoyo

- Documentación oficial de Docker
    
- Documentación de Vite y Node.js
    
- Repositorio local del proyecto frontend
    
- Material de Apoyo del EVA (Guia de Comandos Docker)
    
- Video de Prática y de la Clase (EVA)


## 8. Procedimiento

**Paso 1:** Clonamos el proyecto frontend con Vite y TypeScript del enlace dado en git.com, instalamos sus dependencias y lo ejecutamos, se observa que se ejecuta en el puerto

Figura 1. **"Fronted Ejecutado"**



**Paso 2:** Creamos un archivo `Dockerfile` en la raíz del proyecto, y escribimos su respectivo contenido, que son instrucciones para su construcción.

Figura 2. **"Archivo Dockerfile creado e introducidas sus instrucciones"**

**Paso 3:** Construimos la imagen personalizada con el comando `build`, y verificamos su creacion.

Figura 3. **"Comando docker build -t leo-frontend"**


**Paso 4:** Creada la imagen, la ejecutamos junto con el contenedor `suda-fronted-container`, también se define asigna el puerto, realizamos su verificación:

Figura 4. **"Comando docker run -d -p  "**


**Paso 5:** Accedemos al frontend desde el navegador ingresando a `http://localhost:8000`.

Figura 5. **"Ventana del frontend ejecutado en el navegador"**


## 9. Resultados esperados

La práctica permitió crear una imagen personalizada que contiene una aplicación frontend desarrollada con Vite y TypeScript. Se logró ejecutar el contenedor correctamente, accediendo a la aplicación desde el navegador mediante el puerto expuesto.

El uso de Docker permitió encapsular la aplicación junto con todas sus dependencias, asegurando su portabilidad y eliminando problemas relacionados con el entorno de ejecución. A pesar de depender de una API externa para su funcionalidad completa, la interfaz frontend se ejecuto mediante un contenedor, como se aprecia en la `Figura 5`.

## 10. Bibliografía

- Dev, P. (2022). _Fullstack Development with React and Docker_. Packt Publishing.
    
- Docker Documentation. (2025). _What is Docker?_. https://docs.docker.com/get-started/overview/
    
- Domínguez, A., Ramírez, F., & López, J. (2021). _Desarrollo de aplicaciones web modernas con React_. _Revista Iberoamericana de Tecnología_, 17(3), 45–57.
    
- Merkel, D. (2014). Docker: Lightweight Linux containers for consistent development and deployment. _Linux Journal_, 2014(239), 2.
    
- Yu, E. (2023). _Vite: The Next Generation Frontend Tooling_. [https://vitejs.dev](https://vitejs.dev)
    

---