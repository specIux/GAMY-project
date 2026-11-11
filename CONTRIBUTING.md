# Guía de Contribución

¡Gracias por tu interés en contribuir a **GAMY-project**! 

Este documento explica cómo podés colaborar con el desarrollo de **MultiPlataformero**, nuestro juego 2D de plataformas hecho en [Godot Engine](https://godotengine.org), y con su sitio web complementario.

## Tabla de contenidos

- [Código de conducta](#código-de-conducta)
- [¿Cómo puedo contribuir?](#cómo-puedo-contribuir)
- [Configuración del entorno](#configuración-del-entorno)
- [Estructura del repositorio](#estructura-del-repositorio)
- [Flujo de trabajo](#flujo-de-trabajo)
- [Convenciones de código](#convenciones-de-código)
- [Commits y CHANGELOG](#commits-y-changelog)
- [Pull Requests](#pull-requests)
- [Licencia](#licencia)

## Código de conducta

Al participar en este proyecto aceptás cumplir con nuestro [Código de Conducta](CODE_OF_CONDUCT.md). Léelo antes de empezar. Esperamos que todas tus interacciones (issues, pull requests, revisiones y discusiones) respeten esas normas.

## ¿Cómo puedo contribuir?

Cualquier aporte es bienvenido. Algunas formas de colaborar:

###  Reportar bugs

Si encontrás un error en el juego (trampas que no funcionan, colisiones incorrectas, el mago atraviesa paredes, el contador de muertes no suma, etc.) o en el sitio web:

1. Buscá primero en los [issues existentes](https://github.com/specIux/GAMY-project/issues) para no duplicar el reporte.
2. Abrí un [issue nuevo](https://github.com/specIux/GAMY-project/issues/new) e incluí:
   - **Título claro y descriptivo.**
   - **Pasos para reproducir** el problema.
   - **Comportamiento esperado** vs. **comportamiento obtenido**.
   - **Versión del juego** (revisá el [CHANGELOG](CHANGELOG.md)).
   - Tu versión de **Godot Engine** y tu sistema operativo.
   - Capturas de pantalla o clips si ayudan a entender el problema.

###  Proponer mejoras

Ideas de nuevos niveles, trampas, mecánicas de juego, mejoras de UI (contador de muertes, menú principal) o rediseños del sitio web. Abrí un issue con la etiqueta correspondiente y describí tu propuesta con el mayor detalle posible.

###  Aportar arte, sprites y sonido

- Los sprites se ubican en `backend/test-multiplataformero/assets/sprites/`.
- La música y los efectos de sonido, en `backend/test-multiplataformero/assets/musica/` y `backend/test-multiplataformero/assets/sonidos/`.
- Asegurate de tener los derechos o la licencia correspondiente del material aportado, y mencioná al autor original en el PR.

###  Mejorar la documentación

Correcciones al `README.md`, este documento, el informe en `docs/` o nuevos manuales dentro de `docs/manuales/`.

## Configuración del entorno

### Prerrequisitos

| Herramienta | Versión recomendada |
| :--- | :--- |
| [Godot Engine](https://godotengine.org/download/) | **4.7** (o superior) |
| [Git](https://git-scm.com/downloads) | Cualquiera reciente |

> [!IMPORTANT]
> El proyecto usa el renderizador **GL Compatibility** y fue creado con **Godot 4.7**. Abrirlo con versiones muy distintas puede romper escenas, `.tres` o el Input Map.

### Pasos

1. Cloná el repositorio:

   ```bash
   git clone https://github.com/specIux/GAMY-project.git
   cd GAMY-project
   ```

2. Abrí Godot Engine → **Importar** → seleccioná el archivo:

   ```
   backend/test-multiplataformero/project.godot
   ```

3. Presioná <kbd>F5</kbd> para ejecutar el juego desde el editor.

4. Para probar el sitio web, abrí `frontend/index.html` en tu navegador (no requiere servidor).

## Estructura del repositorio

```
GAMY-project
├─ backend/
│  └─ test-multiplataformero/   # Proyecto Godot (juego)
│     ├─ assets/                # Sprites, música y sonidos
│     ├─ Escenas/               # Escenas .tscn y scripts .gd
│     ├─ Shaders/               # Shaders del personaje
│     └─ project.godot          # Configuración del proyecto
├─ frontend/                    # Sitio web (HTML / CSS / JS)
│  ├─ index.html
│  ├─ styles.css
│  └─ script/script.js
└─ docs/                        # Informe, manuales y documentación
```

## Flujo de trabajo

1. **Abrí un issue primero** para discutir cambios grandes (nuevos niveles, cambios de mecánicas, rediseños del sitio).
2. Creá una rama descriptiva desde `main`:

   ```bash
   git checkout -b feature/nueva-trampa
   ```

   Prefijos sugeridos:

   | Prefijo | Uso |
   | :--- | :--- |
   | `feature/` | Nuevas funciones, niveles, trampas |
   | `fix/` | Corrección de bugs |
   | `docs/` | Cambios en documentación |
   | `assets/` | Sprites, música, sonidos |
   | `web/` | Cambios del sitio web |

3. Hacé tus cambios y probalos en Godot (el juego debe ejecutarse sin errores con <kbd>F5</kbd>).
4. Subí tu rama y abrí un **Pull Request** hacia `main`.

## Convenciones de código

### GDScript (juego)

Seguimos el [estilo oficial de GDScript](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html):

- **Snake_case** para archivos, funciones y variables (`contador_muertes.gd`, `contenedor_monedas.gd`).
- **PascalCase** para clases y nodos.
- Sangría con **tabs** (configurado por el `.editorconfig` del proyecto).
- Comentarios y nombres en **español**, como el resto del proyecto.
- Usá señales (`signals`) y tipado estático (`: int`, `: Node2D`) cuando sea posible.

> [!WARNING]
> No edites manualmente los archivos generados automáticamente:
> - `*.import` (importaciones de assets de Godot)
> - `*.uid` (identificadores de scripts y escenas)
> - `*.tres` generados por el editor, salvo que sepas lo que hacés.

### HTML / CSS / JavaScript (sitio web)

- `frontend/index.html`: HTML5 semántico.
- `frontend/styles.css`: CSS3, clases en kebab-case (`background-black`).
- `frontend/script/script.js`: JavaScript moderno, variables con `const`/`let`, funciones descriptivas.
- Rutas relativas para imágenes y videos (`frontend/imagenes/`, `frontend/videos/`).

### Escenas y assets

- Las escenas nuevas van en `backend/test-multiplataformero/Escenas/`, en la subcarpeta correspondiente (por ejemplo `Escenas/Moneda/`, `Escenas/Trampa/`).
- Nombrá los niveles como `nivel_N.tscn`.
- Los tilesets y shaders se administran desde `tile_sets/` y `Shaders/`.

## Commits y CHANGELOG

- Escribí mensajes de commit **en español** y en tiempo presente: `Agrega nivel 7`, `Corrige colisión de la trampa corta`.
- Usá [Conventional Commits](https://www.conventionalcommits.org/es/) si te resulta cómodo:

  ```text
  feat: agrega nivel 7 con trampas de largo alcance
  fix: corrige contador de muertes al reiniciar nivel
  docs: actualiza controles en el README
  ```

- Si tu aporte es notable para los jugadores, agregá una entrada en la sección `## [Unreleased]` del [`CHANGELOG.md`](CHANGELOG.md), siguiendo el formato [Keep a Changelog](https://keepachangelog.com/es-ES/1.1.0/) y el [Versionado Semántico](https://semver.org/lang/es/).

## Pull Requests

Al abrir un [Pull Request](https://github.com/specIux/GAMY-project/compare):

1. Referenciá el issue relacionado (`Closes #12`).
2. Describí **qué cambiaste y por qué**.
3. Contanos **cómo lo probaste** (por ejemplo: "Ejecuté los 6 niveles en Godot 4.7 sin errores").
4. Si cambiaste algo visual del juego o del sitio, incluís **capturas de pantalla o GIFs** antes/después.
5. Mantené el PR enfocado en **un solo cambio**; si tenés varias ideas, abrí PRs separados.

Un mantenedor del equipo [@SpecIux](https://github.com/SpecIux), [@Xen-alt10](https://github.com/Xen-alt10), [@Fazyhub666](https://github.com/Fazyhub666) o [@M0l4dora](https://github.com/M0l4dora) revisará tu PR y podrá pedirte ajustes antes de fusionarlo.

## Licencia

Al contribuir a GAMY-project, aceptás que tus aportes se distribuyan bajo la [Licencia MIT](LICENSE) del proyecto.
