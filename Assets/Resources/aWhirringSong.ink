VAR background = "" //Nombre imagen background
VAR character = ""  //Nombre personaje que habla
VAR day = -1        //Día
VAR questionId = -1 //Id opción (para bdd)
VAR sfx = ""    //Nombre sfx
VAR music = ""  //Nombre canción
VAR hour = -1   //Hora del día (0, 1, 2; Mañana, tarde y  noche
VAR sprite = "" //Nombre sprite del personaje

->Day_One
==Day_One==
~day = 1
~hour = 0

->Prison_entrance
=Prison_entrance
~background = "prisonentrance"
~character = "Narrador%Narrator"
~sprite = ""
Poca gente espera acabar en la cárcel a los 26 años.%
Para ti es el gran sueño. O al menos un para cumplir tu sueño.%
Buscas el camino a tu libertad entre muros de cemento gris y barrotes oxidados.%

~character = "Johan%Johan"
~sprite = ""
Primer día, allá vamos.% #italics


*[Entrar por la puerta principal%] 
~questionId = 0
-~sfx = "Celda_Cerrando" 
->Prison_recepcion

=Prison_recepcion
~background = "reception"
~character = "Narrador%Narrator"
~sprite = ""
En la ventanilla de recepción solo encuentras un teléfono descolgado, una taza de café a medio tomar y una revista playboy con páginas arrancadas.%
Quien sea que trabaje aquí parece que tardará un tiempo en volver.%

*[Dar un toque en la ventanilla%]
~questionId = 1
~sfx = "Golpear_Ventana"
*[Tocar el timbre%]
~sfx = "Timbre"
~questionId = 2

-
~character = "Narrador%Narrator"
~sprite = ""
El sonido hace eco en la habitación.%
Nadie responde.%
Desplzas el peso de tu cuerpo de una pierna a otra mirando el reloj.%

*[Esperar en recepción%]
~questionId = 3
-
~character = "Narrador%Narrator"
~sprite = ""
Te apoyas en la ventanilla y sacas una revista de tu bolsillo.Lees una crítica sobre el nuevo teclado Leinsf MK600.%
~sfx = "Pasos_1"
Según empiezas a leer suenan pasos en un pasillo a tu espalda, cada vez más rápido, acelerando.% 
Una mano te golpea la espalda con fuerza.%

~character = "Luka%Lukar"
~sprite = "Luka"
Llegas tarde, novato.%
Soy Luka, tu nuevo compañero de trabajo.%

~character = "Johan%Johan"
~sprite = "Luka"
Disculpa, es la primera vez que vengo, no hay nadie en recepción y, bueno...%
Estoy bastante perdido.%
Además solo han pasado dos minutos.%

~character = "Luka%Luka"
~sprite = "Luka"
Quieto ahí. Cada 10 minutos sucede un robo a mano armada.%
¿Crees que una quinta parte de un robo no meree tu atención?%

~character = "Johan%Johan"
~sprite = "Luka"
Esto..%
Bueno, no sabía que...%

~character = "Luka%Luka"
~sprite = "Luka"
¿Sí o no?%

~character = "Johan%Johan"
~sprite = "Luka"
Sí, supongo que si lo piensas así 2 minuto es bastante tiempo.%

~character = "Luka%Luka"
~sprite = "Luka"
Así me gusta, pipiolo.%
Ya te darás cuenta de lo que son 2 minutos aquí dentro.%
Ahora sígueme, comienza el tour guiado por el gran Hotel Delfín Negro.%
Le ruego no pierda de vista al guía y mantenga las manos alejadas de cualquier celda o persona con bozal.%

~character = "Johan%Johan"
~sprite = "Luka"
*[¿Disculpa?]
~questionId = 4
*[¿Hotel Delfín Negro?]
~questionId = 5
-

~character = "Luka%Luka"
~sprite = "Luka"
Sí. Mi hotel. 5 estrellas de puro cemento, acero y justicia.%
Comida fría, libros viejos y gimnasios sudados. Las mejores instalaciones para la peor de la escoria.%

~character = "Narrador%Narrator"
~sprite = ""
Sigues a Luka por los pasillos estrechos.%
~sfx = "Risa"
Sus carcajadas retumban por toda la cárcel mientras señala a un lado y a otro.%
->Locker

=Locker
->END


