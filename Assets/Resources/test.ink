VAR day = 0
VAR background = ""
VAR character = ""

->FirstDay

==FirstDay==
~day = 1
->Entrance

=Entrance
~background = "prisonexterior"

~character = "Narrador%Narrator"
Poca gente espera acabar en la carcel a los 26 años. %English text goes here.  
Para ti es todo un sueño. %English text goes here.
O al menos un paso para cumplir tu sueño. %English text goes here.

Entre muros grises de cemento y barrotes pulidos buscas encontrar el camino a tu libertad. %English text goes here.

~character = "Johan (V.O)%Johan (V.O)"
Primer día, allá vamos. %English text goes here.

* [Entrar por la puerta principal %English text goes here.]  -> Reception

=Reception
~background = "reception"

~character = "Narrador%Narrator"
En la ventanilla de recepción solo encuentras un teléfono descolgado, una taza de café y una revista Playboy con páginas arrancadas. %English text goes here.
Quien sea que trabaje aquí parece que tardará un tiempo en volver. %English text goes here.

* [Dar un toque en la ventanilla %English text goes here.]
* [Tocar el timbre %English text goes here.]

- ~character = "Narrador%Narrator"
El sonido hace eco en la habitación. %English text goes here.
Nadie responde. %English text goes here.
Desplazas el peso de tu cuerpo de una pierna a otra mirando el reloj. %English text goes here.
Suenan pasos en un pasillo a tu espalda, cada vez más lejos, acelerando. %English text goes here.
Una mano te golpea la espalda con fuerza. %English text goes here.

~character = "Luka%Luka"
Llegas tarde, novato. %English text goes here.
Soy Luka, tu nuevo compañero de trabajo. %English text goes here.

~character = "Johan%Johan"
Disculpa, es mi primer día, no hay nadie en recepción y, bueno... Estoy bastante perdido. %English text goes here.
Además, solo han pasado 2 minut— %English text goes here.

~character = "Luka%Luka"
Quieto ahí. %English text goes here.
Cada 10 minutos sucede un robo a mano armada. %English text goes here.
Dime, ¿crees que un quinto de robo no merece tu atención? %English text goes here.

~character = "Johan%Johan"
Esto... %English text goes here.
Bueno, no sabía que... %English text goes here.

~character = "Luka%Luka"
¿Sí o no? %English text goes here.

~character = "Johan%Johan"
Sí, supongo que si lo pones así 2 minutos es bastante tiempo. %English text goes here.

~character = "Luka%Luka"
Así me gusta, pipiolo. %English text goes here.
Ya te darás cuenta de lo que son 2 minutos aquí dentro. %English text goes here.
Ahora sígueme, comienza el tour guiado por el gran Hotel Delfín Negro. %English text goes here.
Le ruego no pierda de vista al guía y mantenga las manos alejadas de cualquier celda o persona con bozal. %English text goes here.

* [¿Disculpa? %English text goes here.]
* [¿Hotel Delfín Negro? %English text goes here.]
-
~character = "Luka%Luka"
Sí, mi hotel. %English text goes here.
5 estrellas de puro cemento, acero y justicia. %English text goes here.
Comida fría, libros viejos y gimnasios sudados. %English text goes here.
Las mejores instalaciones para la peor de la escoria. %English text goes here.

~character = "Narrador%Narrator"
Sigues a Luka por los pasillos estrechos. %English text goes here.
Sus carcajadas retumban por toda la carcel mientras señala a un lado y a otro. %English text goes here.
->Armoury

=Armoury
~background = "locker"

~character = "Narrador%Narrator"
La sala de personal cuenta con taquillas hasta donde alcanza la vista, cada una con su propio cerrojo cubierto de una capa de grasa. %English text goes here.
Un olor a humanidad, testosterona y un retorcido sentido de la justicia llena la habitación. %English text goes here.

~character = "Luka%Luka"
Primera parada, nuestra propia batcueva. %English text goes here.
Vitrinas adornadas con herramientas por doquier y uniformes reforzados. %English text goes here.
Siempre para defensa propia, por supuesto. %English text goes here.

* [¿Cuál de estas taquillas es la mía? %English text goes here.]
* [¿Y dónde puedo dejar mis cosas? %English text goes here.]
- 
~character = "Luka%Luka"
¡Pilla! %English text goes here.

~character = "Narrador%Narrator"
Luka sonríe y lanza una llave en tu dirección. %English text goes here.
La paras a escasos centímetros de tu cara. %English text goes here.
Taquilla 42. %English text goes here.

~character = "Luka%Luka"
Mira dentro. %English text goes here.
Tu regalo de bienvenida te espera. %English text goes here.

~character = "Narrador%Narrator"
Te peleas con el candado oxidado y grasiento hasta poder abrir la taquilla. %English text goes here.
Dentro te espera un uniforme negro recién planchado y una caja de madera. %English text goes here.
*[Abrir la caja %English text goes here.]
-
~character = "Narrador%Narrator"
Dentro encuentras una porra, un par de esposas y un taser con algo firmado en el lateral. %English text goes here.
"Solo para defensa propia - Luka" %English text goes here.

~character = "Luka%Luka"
Andando cadete, no estamos para perder el tiempo. %English text goes here.
Siguiente parada: sala de recreo. %English text goes here.

->END