# Changelog

Todos los cambios notables de este proyecto se documentarán en este archivo.

El formato está basado en [Keep a Changelog](https://keepachangelog.com/es-ES/1.1.0/)
y este proyecto se adhiere a [Versionado Semántico](https://semver.org/lang/es/).

## [Unreleased]

## [1.1.0] - 2026-11-10

### Added

- Guía de contribución (`CONTRIBUTING.md`) con el flujo de trabajo, convenciones de código (GDScript, HTML/CSS/JS) y formato de reporte de bugs.
- Política de seguridad (`SECURITY.md`) con versiones soportadas, alcance y canales de reporte de vulnerabilidades.
- Código de conducta (`CODE_OF_CONDUCT.md`) para la comunidad del proyecto.
- Nueva versión del informe APA del proyecto: `docs/InformeEEST1_LPR2026_PIA_GAMY_Multiplataformero_v.0.2.2.pdf`.
- Se agregó el CHANGELOG a la estructura de carpetas del README.

### Changed

- Se reorganizó el repositorio: el juego pasó de `arcade_game/` a `backend/test-multiplataformero/` y el sitio web de `web/` a `frontend/`.
- Se actualizó el README principal con la nueva estructura de carpetas.

### Removed

- Se eliminó la versión anterior del informe APA (`docs/Informe GAMY - v.0.2.0 BORRADOR.pdf`).
- Se eliminaron los README internos de `arcade_game/` y `web/`.

## [1.0.0] - 2026-10-30

### Added

- CHANGELOG del proyecto con el historial completo de versiones.
- Documento de prueba en `docs/manuales/prueba.md`.

### Changed

- Se actualizó el título principal del menú del juego.
- Se completó la reorganización del repositorio en `arcade_game/`, `web/` y `docs/`.

## [0.9.2] - 2026-10-14

### Changed

- Se actualizó el mapa de entrada (Input Map) del proyecto con nuevas teclas para el personaje.
- Se ajustó el menú principal para reflejar los nuevos controles.

## [0.9.1] - 2026-10-11

### Changed

- Se rediseñó la página principal del sitio web con nuevas secciones y contenido.
- Se actualizaron los estilos del sitio (colores, espaciado y distribución).

## [0.9.0] - 2026-10-07

### Changed

- Se renombraron las carpetas del proyecto: `GAME` → `arcade_game`, `website` → `web` y `documentacion` → `docs`.
- Se actualizaron el README principal y los README internos con la nueva estructura.
- Se unificaron los nombres de archivos, imágenes y escenas del juego.

### Removed

- Se eliminaron copias duplicadas del sitio web, del juego y de la documentación.
- Se eliminaron archivos de prueba y material obsoleto de los directorios de documentación.

## [0.8.0] - 2026-09-23

### Added

- README principal con descripción, características, controles, badges, estructura de carpetas y guía de instalación.
- Sección de contribuidores y de licencia en el README.

### Changed

- Se reorganizó la documentación del proyecto (informe APA, presentaciones y tríptico).
- Se corrigieron enlaces, formato y errores de tipeo del README.

### Removed

- Se eliminó el prototipo de juego anterior (RPG).
- Se eliminaron wireframes, trípticos e informes PDF obsoletos.

## [0.7.0] - 2026-09-03

### Added

- Niveles 5 y 6 del juego.
- Menú principal con navegación entre escenas.
- Contador de muertes en pantalla.
- Juego auxiliar de referencia para pruebas de jugabilidad.

### Changed

- Se renombró el juego de "ArepaRide" a "MultiPlataformero".
- Se actualizó la versión del proyecto en el README.

## [0.6.0] - 2026-07-02

### Added

- Rediseño del index del sitio web con foto de perfil del equipo.
- Script JavaScript para el sitio web (`web/script/script.js`).

### Fixed

- Se corrigieron las rutas de las imágenes del sitio web.

### Changed

- Se actualizaron el contenido y los títulos de las páginas de historia y presentación.

## [0.5.0] - 2026-06-29

### Added

- Sistema de cofres con hitbox de interacción.
- Inventario con slots, ítems y panel de interfaz.
- Contenido adicional de la campaña RPG.
- Documentos de presentación y tríptico del proyecto.

### Fixed

- Se corrigieron las colisiones de los cofres.

### Changed

- Se ajustó el sistema de inventario y la recolección de ítems (en progreso).

## [0.4.0] - 2026-05-24

### Added

- Menú principal de prueba con logo y fondo propios.
- Primer escenario jugable (Acto 1) con paredes y colisiones.
- Sala del boss con texturas.
- Wireframes de media fidelidad.

### Fixed

- Se corrigió la hitbox del personaje.
- Se corrigieron errores de distribución del mapa y de colocación de texturas.
- Se corrigió el centrado de los sprites del jugador.
- Se corrigió la validación y la redirección del login.

## [0.3.0] - 2026-05-14

### Added

- Sitio web del proyecto con página principal y hoja de estilos.
- Pantalla de login.
- Sistema de movimiento del personaje con sprites animados (PR #2).
- Sprites y tilesets para paredes, pisos y personaje.
- Inventario toggleable con la tecla C.
- Licencia MIT.

### Fixed

- Se corrigieron las rutas de las imágenes y el CSS del login.

### Changed

- Se reorganizaron las carpetas del repositorio (`CODES` → `WEB`, assets y escenas del juego).

### Removed

- Se eliminaron archivos temporales, ZIPs de Godot y material ajeno al proyecto.

## [0.2.0] - 2026-04-15

### Added

- Primer prototipo del juego en Godot (`Juego/GAME.zip`).
- Escenas y scripts base del proyecto (`project.godot`, `node_2d.tscn`).

### Changed

- Se agruparon todos los archivos de Godot en un único paquete.

### Removed

- Se eliminaron versiones anteriores del prototipo y carpetas duplicadas.

## [0.1.0] - 2026-03-18

### Added

- Estructura inicial del repositorio.
- README con la descripción del proyecto.
- Documento de "carpeta de campo" con los primeros lineamientos.
