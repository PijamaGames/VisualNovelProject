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

->PrisonEntrance
=PrisonEntrance
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
-~sfx = "Celda_Cerrando" 
->Recepction

=Recepction
~background = "reception"
~character = "Narrador%Narrator"
~sprite = ""
En la ventanilla de recepción solo encuentras un teléfono descolgado, una taza de café a medio tomar y una revista playboy con páginas arrancadas.%
Quien sea que trabaje aquí parece que tardará un tiempo en volver.%

*[Dar un toque en la ventanilla%]
~questionId = 0
~sfx = "Golpear_Ventana"
*[Tocar el timbre%]
~sfx = "Timbre"
~questionId = 1

-
~character = "Narrador%Narrator"
~sprite = ""
El sonido hace eco en la habitación.%
Nadie responde.%
Desplzas el peso de tu cuerpo de una pierna a otra mirando el reloj.%

*[Esperar en recepción%]
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
~questionId = 2
*[¿Hotel Delfín Negro?]
~questionId = 3
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
~background = "locker"

~character = "Narrador%Narrator"
~sprite = ""
La sala de personal cuenta con taquillas hasta donde alcanza la vista. Cada una con su propio cerrojo cubierto de grasa, por supuesto.% 
Un olor a humanidad, testosterona y un retorcido sentido de la justicia llena la habitación.%

~character = "Luka%Luka"
~sprite = "Luka"
Primera parada, nuestro propio camerino. Vitrinas hasta arriba de herramientas y uniformes reforzados.%
Siempre para defensa propia, por supuesto.%

~character = "Johan%Johan"
~sprite = "Luka"
*[¿Cuál de estas taquillas es la mía?%]
~questionId = 4
*[¿Y dónde dejo mis cosas?%]
~questionId = 5

- ~character = "Luka%Luka"
~sprite = "Luka"
¡Pilla!%

~character = "Narrador%Narrator"
~sprite = "Luka"
Luka sonríe y lanza una llave en tu dirección. La paras a escasos centímetros de tu cara.%
Taquilla 42.%

~character = "Luka%Luka"
~sprite = "Luka"
Mira dentro. Tu regalo de bienvenida te espera.%

~character = "Narrador%Narrator"
~sprite = ""
Te peleas con el candado oxidado hasta poder abrir la taquilla.%
~sfx = "Abrir taquilla"
Dentro te espera un uniforme negro recién planchado y una caja de madera.%
*[Abrir la caja%]
-
~sfx = "Abrir_Caja"
~character = "Narrador%Narrator"
~sprite = ""
Dentro encuentras una porra, un par de esposas y un táser con algo firmado en el lateral.%
"Solo para defensa propia. Luka"%

~character = "Luka%Luka"
~sprite = "Luka"
Andando cadete, no podemos perder el tiempo. Siguiente parada: sala de recreo.%

->Brakroom

=Brakroom
~background = "breakroom"
~character = "Narrador%Narrator"
~sprite = ""
~sfx = "Zumbido"
Tres sofás rodean una televisión en el centro de la sala. Inunda la habitación con un zumbido estático.%
En una de las esquinas, tres presos están agazapados sobre una mesa de billar. Uno de ellos golpea a otro cuando cuela la bola negra en el agujero incorrecto.%

~character = "Luka%Luka"
~sprite = "Luka"
Aquí es donde encontrarás a la peor de la escoria. No a los peligrosos, oh no. Esos se pasan el día dale que te pego con el gimnasio.%
Aquí encontrarás a los vagos. Todo el día viendo la televisión o jugando al billar.%
¡A picar piedras le ponía yo!%

~character = "Johan%Johan"
~sprite = "Luka"
*[Ya...%]
~questionId = 6
*[La verdad que...%]
~questionId = 7

-
~character = "Luka%Luka"
~sprite = "Luka"
Me alegra que estemos de acuerdo. Ahora vayámonos de aquí. No aguanto estar con estos tipejos.%
Sígueme, te enseñaré donde los verdaderos hombres se entretienen.%
->Yard

=Yard
~background = "yard"
~character = "Narrador%Narrator"
~sprite = ""
Un par de bancos de ejercicio con charcos de sudor debajo te dan la bienvenida al patio de la prisión.%
Hay manchas rojas y marrones restregadas por las redes de las porterías y canastas.%
No puedes decir exactamente qué son, pero sabes que hay cosas que es mejor no preguntar.%

~character = "Luka%Luka"
~sprite = "Luka"
¿Has estado alguna vez en una granja?%

~character = "Johan%Johan"
~sprite = "Luka"
*[Lo cierto es que tenía un amigo...%]
~questionId = 8
*[No, nunca%]
~questionId = 9

~character = "Luka%Luka"
~sprite = "Luka"
Pregunta retórica, pipiolo. Es importante que tu ganado haga algo de ejercicio. Si no estarán tristes y menos cooperativos.%
Pues bueno, cuando vengas al patio tú seras su granjero. Tendrás que evitar problemas y malas leches por aquí.%

~character = "Johan%Johan"
~sprite = "Luka"
*[Entiendo.%]
~questionId = 10
~character = "Luka%Luka"
~sprite = "Luka"
Directo al grano, me gusta.%
*[¿Y cobraré sueldo extra de granjero?%]
~questionId = 11
~character = "Luka%Luka"
~sprite = "Luka"
Da las gracias si no cobras por parte de los presos. La granja es un trabajo de riesgo.%

-Sigamos por aquí, vamos a ver el establo.%

->CellCorridor

=CellCorridor
~hour = 1
~background = "cellcorridor"
~character = "Narrador%Narrator"
~sprite = ""
~sfx = "Gente de fondo hablando"
Siguiendo a Luka llegas al corredor principal de la prisión. Quién hubiera pensado que un pasillo podría tener tanto poder.%
Cuatro paredes y un techo pueden decidir la vida de una persona, ponerla en pausa.%
Aún así, si cerraras los ojos pensarías que estás en una taberna, llena de gritos ininteligibles, armónicas desafinadas y llantos de borrachos.%

~character = "Luka%Luka"
~sprite = "Luka"
y esta es nuestra atracción principal. 30 metros cuadrados de pura desolación, aunque ha visto tiempos mejores.%
Tendrías que haber estado aquí hace una década. Este pasillo estaba tan lleno que tuvimos que improvisar nuevas celdas con contenedores de plástico.%
Ah, qué tiempos aquellos...%

~character = "Johan%Johan"
~sprite = "Luka"
Bueno, no parece estar tan mal ahora. Los presos, perdona, el ganado parece estar contento.%

~character = "Luka%Luka"
~sprite = "Luka"
Si tú lo dices.%

~character = "Johan%Johan"
~sprite = "Luka"
Y dime, ¿qué ha hecho toda esta gente para acabar aquí?%

~character = "Luka%Luka"
~sprite = "Luka"
Bueno, tenemos un poco de todo. La variedad es la esencia de la vida. No te quiero arruinar la sorpresa.%
¿Por qué no hablas con ellos y se lo preguntas?%
Te esperaré junto a la máquina expendedora. Tanto hablar me está dejando la garganta peor que una noche de partido.%

~character = "Narrador%Narrator"
~sprite = ""
->CorridorChoice

=CorridorChoice
*[Mirar celda a la izquierda%]
~questionId = 12
->Kalev

*[Mirar celda a la derecha%]
~questionId = 13
->Stanislav

*[Mirar celdas al fondo%]
~questionId = 14
->OtherCells

*[Ir al final del pasillo%]
~questionId = 15
->Isolation

+{Kalev and Stanislav and OtherCells and Isolation}[Volver con Luka%]
->VendingMachine

=Kalev
~background = "cell"
~character = "Narrador%Narrator"
~sprite = "Kalev"
Un hombre alto y rubio está tras los barrotes. Lee un papel sobre su cama sin siquiera mirarte a los ojos.%
Golpeas los barrotes con tu porra para llamar su atención.%
Guarda el papel bajo la almohada y tira de la manga izquierda de su uniforme, bajándola completamente hasta cubrirse la muñeca.%

~character = "Johan%Johan"
~sprite = "Kalev"
Buenas tardes, venía a presentarme. Soy Johan.%
Me han asignado a este corredor, creo que nos vamos a ver bastante por aquí.%

~character = "¿?%???"
~sprite = "Kalev"
...

~character = "Narrador%Narrator"
~sprite = "Kalev"
En cuanto dejas de hablar vuelve a sacar el papel de debajo de la almohada.5
Parece agarrar con más fuerza las mangas de su uniforme.%
->CorridorChoice

=Stanislav
~background = "cell"
->CorridorChoice

=OtherCells
~background = "cellcorridor"
->CorridorChoice

=Isolation
~background = "heavydoor"
->CorridorChoice

=VendingMachine
~background = "vendingmachine"


->END













































