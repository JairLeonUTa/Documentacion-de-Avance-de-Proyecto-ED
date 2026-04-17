# 🎬 SmartCine WEB - Sistema de Gestión para Videoclub

![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-323330?style=for-the-badge&logo=javascript&logoColor=F7DF1E)
![Bootstrap](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)

## 📖 Acerca del Proyecto
**SmartCine WEB** es un aplicativo web diseñado para la gestión integral de un videoclub comercial. El objetivo principal de este proyecto es resolver problemas comunes de retrasos y falta de trazabilidad en procesos de ventas, alquileres, reservas y control de inventario. 

Este proyecto fue desarrollado como **Proyecto Integrador de la asignatura Estructura de Datos** para la **Universidad Técnica de Ambato (UTA)**. Demuestra la aplicación práctica de Estructuras de Datos (Lineales y No Lineales) en un entorno de software realista.

## 🧠 Estructuras de Datos Implementadas
El núcleo lógico del sistema se basa en la implementación de las siguientes estructuras de datos, cada una resolviendo un requerimiento funcional (RF) específico del negocio:

| Estructura | Módulo / Funcionalidad | Descripción (Regla de Negocio) |
| :--- | :--- | :--- |
| **Lista Simple** | *Inventario (Admin)* | Gestión principal del catálogo. Permite inserciones dinámicas y bajas definitivas de nodos (películas).
| **Lista Doble** | *Historial (Cliente)* | Almacena las transacciones del cliente permitiendo una navegación cronológica bidireccional.
| **Lista Circular** | *Cartelera (Cliente)* | Muestra los estrenos en un bucle infinito (carrusel) sin interrupciones. 
| **Pila (LIFO)** | *Devoluciones (Empleado)* | "Buzón Rápido": El empleado procesa primero la última película que el cliente depositó físicamente. 
| **Cola (FIFO)** | *Reservas (Empleado)* | Asignación de copias agotadas respetando estrictamente el orden de llegada de los clientes. 
| **Árbol N-ario** | *Jerarquía (Admin)* | Organización estructurada del catálogo bajo el formato: `Categoría > Género > Subgénero`. 
| **Grafo** | *Recomendaciones (Cliente)* | Motor inteligente que conecta nodos (películas) mediante aristas de similitud (ej. mismo director o actor).

---
🔐 Credenciales de Acceso (Pruebas)
El sistema cuenta con un enrutamiento basado en roles. Puedes utilizar las siguientes credenciales por defecto para explorar los diferentes módulos:
Administrador (Gestión de inventario, Árbol y Reportes)
Usuario: admin
Clave: 1234
Empleado (Punto de venta, Buzón LIFO, Reservas FIFO y Cobro de multas)
Usuario: empleado
Clave: 1234
Cliente (Catálogo, Historial Doble, Grafo y Alquileres)
Usuario: cliente
Clave: 1234

Estructura de Archivos
📦 SmartCine-WEB
 ┣ 📜 index.html            # Punto de entrada (Login e Inicialización de LocalStorage)
 ┣ 📜 admin.html            # Dashboard del Administrador (CRUD Listas, Árbol, Reportes)
 ┣ 📜 empleado.html         # Terminal Operativa (Pila LIFO, Cola FIFO, Punto de Venta)
 ┣ 📜 cliente.html          # Portal Cliente (Carrusel, Catálogo, Grafo de Sugerencias)
 ┣ 📜 perfil_cliente.html   # Configuración de cliente e Historial de Multas
 ┣ 📜 perfil_empleado.html  # Estadísticas de rendimiento del empleado
 ┣ 📜 registro.html         # Creación de cuentas nuevas
 ┗ 📜 recuperar.html        # Simulación de recuperación de credenciales

 🎓 Autores y Contexto Académico

Universidad Técnica de Ambato (UTA) 
Carrera: Ingeniería de Software 
Asignatura: Estructura de Datos 
Docente: Ing. José Caiza 
Equipo de Desarrollo:
Acurio Lopez Paul Medardo 
Leon Tusa Jair Alexander 
Zamora Arroba Alan Santiago 
Periodo: Enero - Julio 2026
