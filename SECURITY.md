# Política de Seguridad

Este documento describe la política de seguridad de **GAMY-project** (*MultiPlataformero*), el juego 2D de plataformas desarrollado en Godot Engine, junto con su sitio web estático.

## Versiones soportadas

| Versión | Soportada |
| :---: | :---: |
| 1.0.x  | ✅ |
| < 1.0  | ❌ |

Solo recibimos reportes de seguridad para la versión más reciente publicada en la rama `main`. Las versiones anteriores (0.x) se consideran prototipos de desarrollo y no reciben correcciones de seguridad. Podés consultar la versión actual en el [CHANGELOG](CHANGELOG.md).

## Cómo reportar una vulnerabilidad

Si descubrís una vulnerabilidad de seguridad en este proyecto:

1. **No abrás un issue público** describiendo el problema.
2. Reportala de forma privada a través del [reporte privado de vulnerabilidades de GitHub](https://github.com/specIux/GAMY-project/security/advisories/new), o contactá en privado a un mantenedor del equipo:
   - [@SpecIux](https://github.com/SpecIux)
   - [@Xen-alt10](https://github.com/Xen-alt10)
   - [@Fazyhub666](https://github.com/Fazyhub666)
   - [@M0l4dora](https://github.com/M0l4dora)

Incluí en tu reporte:

- Descripción del problema y su impacto potencial.
- Pasos o prerrequisitos para reproducirlo.
- Archivos o componentes afectados (`Escenas/`, `assets/`, `frontend/`, etc.).
- Posible solución, si tenés una propuesta.

Te responderemos a la brevedad y mantendremos informado el avance del reporte. Una vez resuelta la vulnerabilidad, publicaremos un advisory y el fix quedará registrado en el [CHANGELOG](CHANGELOG.md).

## Alcance

### Está dentro del alcance

- Vulnerabilidades en los scripts GDScript del juego (`backend/test-multiplataformero/`).
- Errores en escenas, shaders o configuración (`project.godot`) que puedan causar comportamiento peligroso o corrupto.
- Problemas de seguridad en el sitio web (`frontend/`): inyección de HTML/JS, enlaces o recursos externos maliciosos.
- Archivos del repositorio que expongan información sensible (claves, credenciales, datos personales del equipo).

### Está fuera del alcance

- Vulnerabilidades del motor **Godot Engine** en sí: reportalas directamente al [equipo de Godot](https://github.com/godotengine/godot/security/policy).
- Problemas en dependencias o servicios de terceros (navegador, hosting del sitio, GitHub).
- Bugs del juego que no tienen impacto de seguridad (el mago atraviesa una pared, una moneda no se recoge, etc.): esos corresponden a un [issue normal](https://github.com/specIux/GAMY-project/issues).
- Ataques que requieran acceso físico al equipo o control total de la máquina de la víctima.

## Buenas prácticas para contribuidores

- **Nunca subas credenciales** (claves de API, contraseñas, tokens) al repositorio, ni siquiera para pruebas.
- No incluyas datos personales del equipo (correos privados, domicilios) en el código ni en los assets.
- Si agregás assets de terceros (sprites, música, fuentes), verificá su licencia antes de subirlos.
- Reportá cualquier contenido malicioso que encuentres en issues o pull requests del repositorio.

## Licencia

Este proyecto se distribuye bajo la [licencia MIT](LICENSE). El manejo de reportes de seguridad sigue esta política y las normativas de [GitHub Security Advisories](https://docs.github.com/es/code-security/security-advisories).
