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
~character = "Narrador%Narrator"
~sprite = ""
Lo último que esperabas ver en una celda era la luna, redonde y de un blanco brillante.%
Un hombre bajito te da la espalda con los pantalones bajados hasta los tobillos. Decides darte la vuelta hasta escuchar el sonido de la cisterna.%

~character = "¿?%???"
~sprite = "Stanislav"
¡Oh disculpa! No sabía que estabas ahí. Me hubiera aguantado un poco más.%
No es digno de mí que me encuentren con los pantalones bajados.%

~character = "Narrador%Narrator"
~sprite = "Stanislav"
El hombre emite una carcajada enctrecortada, quizás más comparable con el gruñido de un cerdo.%

~character = "¿?%???"
~sprite = "Stanislav"
Perdoa mis modales, ni siquiera me he presentado.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Soy Stanislav. Ten mi tarjeta.%

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Stanislav te tiende una servilleta con algo escrito en el frente. "Stanislav Volkov. Economista." La doblas y la guardas en el bolsillo de tu uniforme.%
No sabes cómo puede haber conseguido tinta, pero prefieres no averiguarlo de momento.%

~character = "Johan%Johan"
~sprite = "Stanislav"
No te preocupes. Tendría que haber hecho más ruido. Soy Johan, me han asignado a este corredor. Creo que nos veremos bastante por aquí.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Eso espero. Es raro ver una cara amigable en este lugar.%
Ahora si me disculpas, tengo que continuar con mi, uhmm, transacción.%

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Te das la vuelta y escuchas la tapa del váter abrirse de nuevo. Será mejor continuar hacia otro lugar.%
->CorridorChoice

=OtherCells
~background = "cellcorridor"
~sfx = "Gente de fondo hablando"
~character = "Narrador%Narrator"
~sprite = ""
Las celdas al fondo del pasillo están llenas de presos uniformados, unos tambaleándose y otros dando vueltas en el sitio.%
Todos apartan la vista cuando les miras a la cara.%
Será mejor dejarles por hoy.%
->CorridorChoice

=Isolation
~background = "heavydoor"
~character = "Narrador%Narrator"
~sprite = ""
Al final del corredor esperan dos gruesas puertas de acero. Incluso la luz de las ventanas parece evitarlas.%
Pensar en su interior, un agujero frío y estrecho, te roba el aliento y el equilibio.%
Apoyas un brazo sobre la pared para mantenerte en pie. Das media vuelta, huyendo de las dos puertas.%
->CorridorChoice

=VendingMachine
~background = "vendingmachine"
~character = "Narrador%Narrator"
~sprite = ""
Luka te espera apoyado contra la pared y dando sorbos de su café.%

~character = "Luka%Luka"
~sprite = "Luka"
Si que has tardado. ¿Qué tal ha ido?%

~character = "Johan%Johan"
~sprite = "Luka"
*[No ha estado mal.%] 
~questionId = 16
    No ha estado mal. Stanislav parece muy agradable.%
    
    ~character = "Luka%Luka"
    ~sprite = "Luka"
    Ten cuidado con ese tipo, a diferencia del resto sabe mantener una conversación.%
    Aquí dentro eso puede ser más peligroso que dos biceps de acero.%

*[Podría haber ido mejor.%]
~questionId = 17
    Podría haber ido mejor. Aquel preso alto y rubio ni siquiera me ha dirigido la palabra.%
    ~character = "Luka%Luka"
        ~sprite = "Luka"
        No te preocupes, ese tipo no suele hablar con nadie.%
        Se pasa el día leyendo en su celda y haciendo ejercicio. Ni siquiera recuerdo cómo se llama...%
        
-
~character = "Luka%Luka"
~sprite = "Luka"
No le des demasiadas vueltas. Lo más importante de este trabajo es no llevarte nada a cuestas cuando te marches a casa.%
Vamos, ya casi hemos terminado el tour.%
->ElectricChair

=ElectricChair
~background = "closeddoor"
~sfx = "Zumbido"
~character = "Narrador%Narrator"
~sprite = ""
Siguiendo a Luka te paras frente a una puerta cerrada. Un zumbido monótono suena desde el otro lado.%
Tiene tres candados distintos y una cerradura con llave.%

~character = "Johan%Johan"
~sprite = "Luka"
Oye Luka, ¿y esta puerta?%

~character = "Luka%Luka"
~sprite = "Luka"
Oh, no te preocupes por eso. Esa zona está fuera de límites para ti.%
Se está haciendo tarde. Déjame enseñarte la cantina y vamos a tomar algo de paso.%
->Canteen

=Canteen
~hour = 2
~background = "canteen"
~sfx = "Gente de fondo hablando"
~character = "Narrador%Narrator"
~sprite = ""
Un olor mediocre, como el de una infusión con demasiada agua, sube desde las ollas de la cantina.%
En los platos de los presos solo alcanzas a ver masas informes de color grisáceo.%
Aún así, la mediocridad resulta deliciosa para el estómago del hambriento.%
Esperas con la pierna inquieta y la boca hecha agua a que Luka llegue a la mesa del comedor con vuestras bandejas.%

~character = "Luka%Luka"
~sprite = "Luka"
Y bueno, pipiolo, ¿qué tal el primer día de trabajo?%
No te acostumbres a que te acompañe a todos lados. Estoy muy solicitado por aquí, ¿sabes?%

~character = "Narrador%Narrator"
~sprite = "Luka"
Un grupo de guardias de la mesa de al lado apartan la mirada y sueltan una carcajada antes de maarcharse.%

~character = "Johan%Johan"
~sprite = "Luka"
*[Hablar del preso alto y rubio%]
~questionId = 18
    Ese preso alto y rubio parece interesante. Me pregunto cómo habrá terminado aquí...%
    
    ~character = "Luka%Luka"
    ~sprite = "Luka"
    Se llama Kalev y entró aquí hace un par de años. No sé muy bien por qué, pero seguro que por algo terrible.%
    Es un tipo raro.%
    Nunca se quita el uniforme ni se ducha con el resto de presos.%
    
    ~character = "Johan%Johan"
    ~sprite = "Luka"
    ¿Y siempre es tan callado?%
    
    ~character = "Luka%Luka"
    ~sprite = "Luka"
    No le he escuchado decir ni una sola palabra en estos dos años.%
    Cuando pide comida simplemente señala con la cabeza hacia la olla que quiere.%
    Ya te digo, es un tipo muy raro.%
    
*[Hablar de Stanislav%]
~questionId = 19
Stanislav parece un tipo bastante majo. Pensé que no habría gente así en la cárcel.%

    ~character = "Luka%Luka"
    ~sprite = "Luka"
    Ten cuidado con ese tipo. Su lengua está más afilada que cualquier punzón improvisado con el que te puedan amenazar.%
    Me alegro de que haya terminado entre rejas.%
    
    ~character = "Johan%Johan"
    ~sprite = "Luka"
    ¿Ha hecho algo grave?%
    
    ~character = "Luka%Luka"
    ~sprite = "Luka"
    ¿No lees el periódico nunca, pipiolo?%
    Ese tipo es uno de los mayores enemigos de este país. Un absoluta decepción para el gobierno.%
    Pero dejemos el tema ya. Hablar de política me cierra el apetito.%
    
*[Hablar de la comida%]
~questionId = 20
No puedo hablar con el estómago vacío. No hemos comido nada en todo el día. ¿Va a ser siempre así?%

    ~character = "Luka%Luka"
    ~sprite = "Luka"
    Acostúmbrate.%
    Estamos algo faltos de personal ahora. Solo podemos hacer pausas para cenar.%
    Míralo por el lado bueno, entre el ejercicio y esta diéta echarás unos buenos músculos en esos palillos que tienes por brazos.%

-
*[Comer de la bandeja]
~character = "Narrador%Narrator"
~sprite = ""
Ningún preso amenazante, zumbido extraño o puerta misteriosa podía prepararte para la visión más horrible que tendrías en tu primer día.%
En un instante, Luka se ha convertido en un borrón de manos moviéndose y trozos de comida saltando por los aires.%
Antes siquierea de que empieces tu bandeja la suya ya está vacía y reluciente.%

~character = "Luka%Luka"
~sprite = "Luka"
¿Todo bien, novato? Estás más pálido que cuando te encontré en la recepción.&

~character = "Johan%Johan"
~sprite = "Luka"
*[Veo que tenías hambre%]
~questionId = 21
    ~character = "Luka%Luka"
    ~sprite = "Luka"
    Ah, no hay nada mejor que la comida de esta cafetería, chaval.%
    Es como una buena cerveza, la apreciarás más con el tiempo.%
    
*[No, nada. Estoy bien]
~questionId = 22
    ~character = "Luka%Luka"
    ~sprite = "Luka"
    Si tú lo dices...

-
~character = "Luka%Luka"
~sprite = "Luka"
Date prisa y termina tu plato. No quiero llegar tarde a casa.%
Esta noche hay partido.%

~character = "Narrador%Narrator"
~sprite = ""
Bajas la cabeza y te comes la comida de tu bandeja.%
Cuando terminas la cafetería está completamente vacía.%

~character = "Luka%Luka"
~sprite = "Luka"
Vamos chaval, hora de irse a casa.%

~character = "Narrador%Narrator"
~sprite = "Luka"
Sigues a Luka hasta salir de la cafetería y la cárcel.%
->PrisonExit

=PrisonExit
~background = "prisonentrance"
~character = "Luka%Luka"
~sprite = "Luka"
Hasta mañana, cadete.%
Recuerda, no le des muchas vueltas a nada de lo que veas aquí dentro.%
Intenta distraerte un rato en casa.%

~character = "Narrador%Narrator"
~sprite = "Luka"
Luka te da un abrazo sorprendentemente reconfortante antes de marcharse en su coche.%
->FlatDoorstep

=FlatDoorstep
~background = "apartmentdoor"
~character = "Narrador%Narrator"
~sprite = ""
Coges el último autobús hasta el centro de la ciudad y llegas a la puerta de tu psio.%
Cuando rebuscas en tus pantalones no escuchas el esperado tintineo de las llaves.%

->DoorChoice
=DoorChoice
*[Llamar al timbre%]
~questionId = 23
    ~character = "Narrador%Narrator"
    ~sprite = ""
    Pulsas el timbre, pero solo te responde un zumbido eléctrico y un pequeño chispazo en el dedo.%
    ->DoorChoice
*[Golpear a la puerta%]
~questionId = 24
    ~character = "Narrador%Narrator"
    ~sprite = ""
    ~sfx = "Golpear_Ventana"
    Golpeas la puerta con los nudillos hasta dejarlos rojos.%
    Suspiras aliviado al escuchar pasos desde el otro lado.%
    
    ~character = "Fay%Fay"
    ~sprite = "Fay"
    ¿Johan? ¿Qué es este alboroto?%
    
    ~character = "Johan%Johan"
    ~sprite = "Fay"
    Menos mal, Fay.%
    Mira, me he dejado las llaves en...%
    Bueno, no sé dónde me las he dejado.%
    ¿Puedes abrir?%
    
    ~character = "Fay%Fay"
    ~sprite = "Fay"
    Claro, tonto. Pasa.%
    ->Flat

=Flat
~background = "apartmententrance"
~character = "Narrador%Narrator"
~sprite = ""
Al abrir la puerta encuentras un salón con algunas latas de cerveza aplastadas tiradas por el suelo.%
Encima de la mesa hay un portátil con un vídeo a todo volúmen.%
Es otro de esos juegos de estrategia que tanto le gustan a Fay.%

~character = "Fay%Fay"
~sprite = "Fay"
Disculpa el desorden. Han venido amigos esta tarde.%
No sé si te acordarás, pero hoy había partido de semifinales.%
Mañana lo recojo todo, prometido.%

~character = "Johan%Johan"
~sprite = "Fay"
Sin problemas.%
¿Qué tal fue el partido? ¿Hoy jugábais los Featherknights?%

~character = "Fay%Fay"
~sprite = "Fay"
Oh no no. Nos eliminaron en octavos.%
Ha estado bien, algo aburrido hacia el final.%
Podrían haber terminado antes si hubieran jugado mejor su rush build, pero bueno...%

~character = "Johan%Johan"
~sprite = "Fay"
Al menos sabéis por donde entrárles en vuestro próximo partido.%
Estoy seguro de que ganaréis el año que viene.%

~character = "Fay%Fay"
~sprite = "Fay"
Ya... Eso espero.%
Por cierto Johan, ¿te importa pasarme una cerveza de la nevera?%
Están en la segunda balda.%
Mientras voy a recoger un poco el salón.%

~background = "apartmentkitchen"
~character = "Narrador%Narrator"
~sprite = ""
Caminas hasta la cocina mientras Fay se marcha al salón.%
Escuchas ruidos de latas, crujidos de papel y algo pesado siendo arrastrado.%

~character = "Johan%Johan"
~sprite = ""
*[¿Todo bien, Fay?%]
~questionId = 25
    ~character = "Fay%Fay"
    ~sprite = "Fay"
    Sí sí, no te preocupes. Tú traeme esa cerveza, porfi.%
*[Abrir la nevera%]
~questionId = 26

-
~character = "Narrador%Narrator"
~sprite = ""
Abres la puerta de la nevera, pero no encuentras ninguna lata.%
En la segunda balda hay una enorme tarta con un 24 de cera encima.%
Tiene escrito "¡Felicidades Johan!" encima con sirope de fresa.%

~character = "Johan%Johan"
~sprite = "Fay"
Oh Fay, no tenías por qué molestarte...%

~character = "Fay%Fay"
~sprite = "Fay"
Shhh.%
Tú tráeme la cerveza al salón, por favor.%

~character = "Narrador%Narrator"
~sprite = ""
Coges la tarta con ambas manos y vuelves al salón.%
Fay espera tras una enorme caja envuelta en papel de regalo.%

~background = "apartmententrance"
~character = "Fay%Fay"
~sprite = "Fay"
¡Sorpresa!%
Feliz cumpleaños, Johan.%

~character = "Johan%Johan"
~sprite = "Fay"
Fay...%

~character = "Fay%Fay"
~sprite = "Fay"
Vamos, ¿no te me vas a poner a llorar ahora, verdad?%

~character = "Narrador%Narrator"
~sprite = ""
Te acercas a la caja mientras la sonrisa de Fay crece más y más.%
Quitas una capa de papel y otra hasta dejar la caja al descubierto.%
Miras con ojos abiertos el frontal mientras un título te devuelve la mirada: Leinsf MK600.%

~character = "Johan%Johan"
~sprite = "Fay"
¡¿Estás de broma?!%
No... No puedo aceptar esto, Fay. Este teclado es demasiado caro.%
Además, no creo que pudiera sacarle partido con mias habilidades...%

~character = "Fay%Fay"
~sprite = "Fay"
No no, no sigas por ahí, Johan.%
¿De verdad voy a tener que devolverlo con lo que me ha costado conseguirlo?%

~character = "Johan%Johan"
~sprite = "Fay"
No...%
No, claro que no.%
Supongo que tendré que quedármelo entonces.%

~character = "Fay%Fay"
~sprite = "Fay"
Vaya chasco, ¿eh?%

~character = "Johan%Johan"
~sprite = "Fay"
Total. Ahora podré competir contigo en hacer ruido a horas intempestivas.%

~character = "Fay%Fay"
~sprite = "Fay"
Bah, no me llegas ni al tobillo, chaval.%
Ahora en serio, mola verte sonreír.%
Deberías hacerlo más.%

~character = "Johan%Johan"
~sprite = "Fay"
Sí.%
Sí, lo cierto es que sienta bien.%

~character = "Fay%Fay"
~sprite = "Fay"
Y dime, ¿no te vas de fiesta con tus amigos?%
Es tu cumpleaños, hombre. Hay que celebrarlo.%

~character = "Johan%Johan"
~sprite = "Fay"
Vamos a salir el sábado, hoy no me puedo quedar hasta tarde.%
Mañana entro pronto a trabajar.%

~character = "Fay%Fay"
~sprite = "Fay"
¡Mierda!%
Olvidé preguntarte por el primer día de tabajo.%
¿Qué tal ha ido? Debe dar miedo trabajar en una cárcel...

~character = "Johan%Johan"
~sprite = "Fay"
Bastante bien. Supongo que conoces gente... interesante.%
Es muy agotador. Casi no podemos ni pararnos a comer.%
De hecho, creo que me voy a ir a la cama. Estoy molido.%

~character = "Fay%Fay"
~sprite = "Fay"
Oh claro, sin problema.%
¿Quieres que te ayude a mover el teclado?%

~character = "Johan%Johan"
~sprite = "Fay"
Creo que lo dejaré en el salón un tiempo, si no te importa, claro.%

~character = "Fay%Fay"
~sprite = "Fay"
Todo tuyo. Estoy deseando escucharte probarlo.%
Buenas noches, Johan.%
Trataré de no gritar mucho en las partidas de esta noche.%

~character = "Johan%Johan"
~sprite = "Fay"
Eso espero, me estoy quedando sin tapones.%
Hasta mañana, Fay.%
->Bedroom

=Bedroom
~background = "bedroom"
~character = "Narrador%Narrator"
~sprite = ""
Un fuerte olor a cerrado te golpea al abrir la puerta de tu cuarto. El ambientador que dejaste sobre la mesa lleva días gastado.%
->BedroomChoice

=BedroomChoice
*[Mirar el escritorio]
->Desktop
*[Mirar la estantería]
->Bookshelf
*{Bookshelf and Desktop} [Meterse en la cama]
->Bed

=Desktop
Pasas el dedo sobre tu sintetizador en el escritorio, tocando suavemente sus notas.%
Presionas sobre una de sus esquinas hasta terminar de pegar una pegatina de los Featherknights.%
->BedroomChoice

=Bookshelf
Sacas un libro y lo sostienes, pesado, en tus manos: Acústica, Armonía y Funciones tonales, por Yuri Pletinov.%
Está lleno de marcadores en los lados y la espina está algo desgastada.%
A los pies de la estantería descansa tu guitarra marrón, con algunas zonas de madera desconchada.%
->BedroomChoice

~character = "Johan%Johan"
~sprite = ""
=Bed
*[Pensar en el trabajo%]
~questionId = 27
    Luka parece muy bueno en su trabajo, aunque me da algo de pena.%
    ¿Cómo debe de sentirse?% #italics
    Tantos años trabajando en ese sitio...% #italics

*[Pensar en Fay]
~questionId = 28
    Fay... ¿De dónde habrá sacado tanto dinero para ese teclado?% #italics
    Espero que le siga yendo bien en el futuro. Especialmente después de todo lo que ha pasado.% #italics

-
~character = "Narrador%Narrator"
~sprite = ""
Continúas mirando fijamente un punto en el techo hasta quedarte dormido, con el sonido de las gotas como tu canción de cuna favorita.%
->Day_Two


==Day_Two==

->BedroomMorning
=BedroomMorning
~day = 2
~hour = 0
~background = "bedroom"

~character = "Fay%Fay"
~sprite = "Fay"
¡¿Qué dices?!%
No no. ¡¿Cómo que ha sido mi culpa?!%
Por favor, si nos has dejado vendidos ahí atrás.%
No te estoy echando la culpa, solo te estoy explicando por qué no es MI culpa.%

~character = "Narrador%Narrator"
~sprite = ""
Una de las ventajas que tiene vivir con Fay es que ahorras mucho dinero en despertadores.%
Miras el reloj aún tumbado en la cama, con la cabeza medio hundida en la almohada.%
Las 8 en punto.%
Te levantas de un salto de la cama y, aún con los vaqueros a medio subir, sales corriendo por la puerta del piso.%
->Bus

=Bus
~background = "bus"


->END













































