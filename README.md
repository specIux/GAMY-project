<div align="center">

# MultiPlataformero

MultiPlataformero es un juego 2D básico en donde un mago tiene que recoger todas las monedas del castillo, pasando trampas, para pasar a los siguientes escenarios (niveles) 

[![Godot](https://img.shields.io/badge/Godot-4.x-478cbf?logo=godotengine&logoColor=white)](https://godotengine.org)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Plataforma](https://img.shields.io/badge/Plataforma-Windows%20%7C%20Web-orange.svg)]()
[![Last Commit](https://img.shields.io/github/last-commit/specIux/GAMY-project)](https://github.com/specIux/GAMY-project/commits/main/)  

  

</div>     

>[!Note]
>Para poder ejecutar nuestro juego se debe instalar [Godot Engine](https://godotengine.org/download/windows/) -> LINK PARA DESCARGAR LA APLICACION

## Lenguajes Utilizados
A lo largo del proyecto hemos utilizados multiples lenguajes de programacion para el desarrollo de nuestro juego, principalmente hemos utilizado GDScript como lenguaje base para el codigo fuente del proyecto. Además de ese lenguaje tambien se utilizaron: 
- CSS / HTML
- JavaScript

Y se pueden observar en la siguiente carpeta: [GAME](/arcade_game)

## Estructuras de Carpetas

```
GAMY-project
├─ arcade_game
│  ├─ README.md
│  └─ test-multiplataformero
│     ├─ .editorconfig
│     ├─ assets
│     │  ├─ musica
│     │  │  ├─ musica.import
│     │  │  ├─ musica.wav
│     │  │  └─ musica.wav.import
│     │  ├─ sonidos
│     │  │  ├─ sonido_moneda.wav
│     │  │  └─ sonido_moneda.wav.import
│     │  └─ sprites
│     │     ├─ mago_spritesheet.png
│     │     ├─ mago_spritesheet.png.import
│     │     ├─ tileset.png.import
│     │     ├─ tileset_mazmorra.png
│     │     └─ tileset_mazmorra.png.import
│     ├─ Escenas
│     │  ├─ Bordes
│     │  │  └─ bordes.tscn
│     │  ├─ Contador_muertes
│     │  │  ├─ contador_de_muertes.tscn
│     │  │  ├─ contador_muertes.gd
│     │  │  ├─ contador_muertes.gd.uid
│     │  │  ├─ contador_ui.gd
│     │  │  └─ contador_ui.gd.uid
│     │  ├─ Contenedor moneda
│     │  │  ├─ contenedor_monedas.gd
│     │  │  ├─ contenedor_monedas.gd.uid
│     │  │  └─ contenedor_monedas.tscn
│     │  ├─ Final
│     │  │  └─ escena_final.tscn
│     │  ├─ Menu
│     │  │  ├─ menu_principal.gd
│     │  │  ├─ menu_principal.gd.uid
│     │  │  └─ menu_principal.tscn
│     │  ├─ Moneda
│     │  │  ├─ moneda.gd
│     │  │  ├─ moneda.gd.uid
│     │  │  └─ moneda.tscn
│     │  ├─ nivel_1
│     │  │  └─ nivel_1.tscn
│     │  ├─ nivel_2
│     │  │  └─ nivel_2.tscn
│     │  ├─ nivel_3
│     │  │  └─ nivel_3.tscn
│     │  ├─ nivel_4
│     │  │  └─ nivel_4.tscn
│     │  ├─ nivel_5
│     │  │  └─ nivel_5.tscn
│     │  ├─ nivel_6
│     │  │  └─ nivel_6.tscn
│     │  ├─ Personaje
│     │  │  ├─ material_personaje_rojo.tres
│     │  │  ├─ personaje.gd
│     │  │  ├─ personaje.gd.uid
│     │  │  ├─ personaje.tscn
│     │  │  └─ sprite_frame.tres
│     │  ├─ Principal
│     │  │  ├─ escena_principal.gd
│     │  │  ├─ escena_principal.gd.uid
│     │  │  └─ escena_principal.tscn
│     │  ├─ prueba_fisicas
│     │  │  └─ prueba_fisicas.tscn
│     │  ├─ Trampa
│     │  │  ├─ trampa.gd
│     │  │  ├─ trampa.gd.uid
│     │  │  └─ trampa.tscn
│     │  ├─ Trampa corta
│     │  │  └─ trampa_corto_alcance.tscn
│     │  └─ Trampa larga
│     │     └─ trampa_larga.tscn
│     ├─ icon.svg
│     ├─ icon.svg.import
│     ├─ project.godot
│     ├─ Shaders
│     │  └─ shader_rojo.tres
│     └─ tile_sets
│        └─ mazmorra.tres
├─ documentacion
│  ├─ Informe GAMY - v.0.2.0 BORRADOR.pdf
│  └─ INFORME-APA.md
├─ LICENSE
├─ README.md
└─ website
   ├─ IMGS
   │  ├─ background-black.png
   │  ├─ godot.jpg
   │  ├─ pfp_prueba.jpeg
   │  ├─ pfp_prueba2.png
   │  ├─ pfp_prueba3.png
   │  └─ pfp_prueba4.jpg
   ├─ index.html
   ├─ script
   │  └─ script.js
   └─ styles.css

```

<div align="center">

## Contribuidores

<table>
<tr>
  <td align="center"><a href="https://github.com/Xen-alt10"><img src="https://github.com/Xen-alt10.png" width="80px;" alt=""/><br /><sub><b>Xen-alt10</b></sub></a></td>
  <td align="center"><a href="https://github.com/SpecIux"><img src="https://github.com/SpecIux.png" width="80px;" alt=""/><br /><sub><b>SpecIux</b></sub></a></td>
  <td align="center"><a href="https://github.com/Fazyhub666"><img src="https://github.com/Fazyhub666.png" width="80px;" alt=""/><br /><sub><b>Fazyhub666</b></sub></a></td>
  <td align="center"><a href="https://github.com/M0ladora"><img src="https://github.com/M0ladora.png" width="80px;" alt=""/><br /><sub><b>M0ladora</b></sub></a></td>
</tr>
</table>

</div>   

## Licencia
Podés usar, modificar y distribuir el software libremente (incluso comercialmente), siempre que incluyas el aviso de copyright original, y sin ninguna garantía por parte del autor [LICENCIA](LICENSE/).


     


