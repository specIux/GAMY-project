CONTROL:
	- Palanca de movimiento 
	- 2 botones

inputs: W, A, S D (adelante, atras, derecha izquierda)
	Z
	X
	C 

El proyecto se realizara en Godot Engine, utilizando el lenguaje GDscript (similar a Python).

El control estara programado por un Arduino, este mandara señales al codigo al script en Godot, y las interpretara como input. El control tendra una palanca de movimiento
que tendra 5 posibles estados (neutro, adelanta, atras, izquierda o derecha) y 3 botones, llamados "Z", "X" y "C"

18/03: 
	- creacion de repositorio de github
	

19/03 
   - Investigacion Y Analisis de las funciones de GitHub y como exportar e importar archivos .zip a Godot al repositorio

 25/03 
- Github: Agregar a los profesores para que tengan acceso al repositorio (DOCS Importantes: ReadMe.md ; License ; .gitignore)
- VSC (Python, HTML, C++)

  Organizacion para el Proyecto: Tipo de Juego: RPG en 2D (diseñado en Godot Engines)
  - Personajes, Mapa (8/16 bits) = pixel art
  - Pixel Art : Krita ; Pixelorama ; Piskel ; Aseprite ; 

 26/03 
-  Estudios de los distintos lenguajes de programacion
-  Lectura de "Guia Maestra" para encaminar el proyecto  
-  Conceptos base 
    El proyecto es un: Videojuego
    Tipo: RPG, combate por turnos
    Arte: Sprites pixeleados en 2D
    PVE: Bullet hell (basado en undertale/deltarune)
    Historia: Pendiente, debe ser simple, sin quemarse mucho la cabeza
    Motor: Godot
    Lenguaje: GDScript
- Ciclo del juego
   La idea actual es que el flujo del juego sea un selector de misiones con un posible modo sandbox, podria asemejarse al selector de weeks de Friday Nigger Funkin, quizas siendo misiones distintas,  en las cuales ni bien 
   se seleccionan, podrian haber cinematicas o dialogos y luego empieza el combate directo

   9/4
- Arte y visuales
   El estilo de los sprites en general deberia ser de baja resolucion y la paleta de colores no deberia ser muy amplia para menos trabajo, quizas 16bits. Todo lo que sea soundtrack, musica, efectos de sonido, etc. lo          sacariamos de internet, paginas dedicadas sin copyright, Youtube u otros sitios, no hay planes de componer nada. 

- Lore/Historia
  En principio solo deberia haber un protagonista, sin aliados mas allá de algun que otro npc de decoracion que podria tener dialogos. El enfoque deberia ser comico/satira, sin mucho sentido o significado profundo. El        conflicto principal seria el siguiente: [IDEA 1: Un trabajador de delivery tiene que hacer pedidos, y las cosas que se interponen en su camino, como por ejemplo: un semaforo en rojo, se transformen en npcs enemigos. El     objetivo seria ir avanzando de enemigo en enemigo hasta un boss final y luego de eso llegar a entregar el pedido, y que ese sea el final.][IDEA 2: un delivery va a entregar un pedido que parece normal.Al llegar se lo da    a un viejo gaga, que tiene pinta de algo mistico, en vez de darle dinero como paga, le entrega otro paquete, este le dice que lo tiene que llevar al otro lado del  barrio, le advierte que personas malevolas se lo van a     querer quitar. A medida que va  transcurriendo la historia el veneco va a tener que hacer otros pedidos/misiones secundarias para ganar bolivares y mejorar su armadura, vehiculo,][IDEA 3: Que sea un venezolano cruzando     la frontera y el objetivo sea llegar al otro lado]

  - Hoy probamos crear animaciones con objetos PixelArt para descargarlos y pasarlos a Godot Engines.
  - 

