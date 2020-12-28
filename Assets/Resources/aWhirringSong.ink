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
    Luka parece muy bueno en su trabajo, aunque me da algo de pena.% #italics
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
~character = "Narrador%Narrator"
~sprite = ""

El autobusero toca el claxon dos veces y te pregunta si no bajas hoy en esta parada.%
Cuando levantas la cabeza de tu revista encuentras la cárcel parada frenet a ti, con sus muros de cemento y sus cuatro torres que parecen querer tocar  el cielo.%
Doblas una de las esquinas de la revista antes de levantarte. Este sábado hay una audición para teclista en un grupo local.%

*[Dejar propina al autobusero%]
~questionId = 29
Dejas un par de monedas sueltas en la ventanilla del conductor.%
El hombre sonríe y te abre la puerta deseándote un buen día.%
*[Bajar del autobús%]
~questionId = 30
Con la cabeza de nuevo enterrada en tu revista casi tropiezas al bajar de las escaleras del autobús.%
El conductor suelta una risita contenida antes de cerrar la puerta.%
-
->PrisonReception

=PrisonReception
~background = "reception"
~character = "Luka%Luka"
~sprite = "Luka"
Otra vez tarde. Incluso te has superado.%
Hoy han sido cinco minutos completos.%

~character = "Johan%Johan"
~sprite = "Luka"
Lo siento, tengo que coger el autobús para venir. Había mucho tráfico hoy.%

~character = "Luka%Luka"
~sprite = "Luka"
Dime, ¿a cuántos robos armados equivalen cinco minutos?%

~character = "Johan%Johan"
~sprite = "Luka"
*[Esto...¿dos?%]
~questionId = 31
~character = "Luka%Luka"
~sprite = "Luka"
¡¿Dos?! Si fuera así me habrían robado hasta los calcetines, chaval.%
*[¿Tres? Eso creo, vaya%]
~questionId = 32
~character = "Luka%Luka"
~sprite = "Luka"
¡¿Tres?! Si fuera así me habrían robado hasta los calcetines, chaval.%
*[No demasiado, medio robo quizás%]
~questionId = 33
~character = "Luka%Luka"
~sprite = "Luka"
¿Medio robo no te parece demasiado? Quizás debería robarte medio almuerzo más tarde.%

-
~character = "Luka%Luka"
~sprite = "Luka"
Hemos hecho el reparto de tareas para hoy.%
Te toca turno de lavandería.%

~character = "Johan%Johan"
~sprite = "Luka"
¿Lavandería? No entiendo cómo voy a usar el táser para lavar la ropa.%

~character = "Luka%Luka"
~sprite = "Luka"
Y yo no entiendo cómo puedes llegar tarde todos los días.%
Ahora largo, ve al establo a pedir calzoncillos sucios.%

~character = "Narrador%Narrator"
~sprite = ""
Luka te da la espalda y se marcha con paso firme.%
Jurarías que puedes ver humo salir de su cabeza.%

->CellCorridor

=CellCorridor
~hour = 1
~character = "Narrador%Narrator"
~sprite = ""
Al llegar al corredor esperas encontrar el mismo alborto que ayer, con presos gritandp e improvisando música desafinada.%
Lo que ayer parecía una taberna se ha convertido hoy en un supermercado, con todos los presos arrastrando sus carritos con ropa sucia hasta llegar a la lavandería.%
Kalev está sentado en su celda, mirando a un lado y a otro con la cesta vacía.%

->SeeKalevChoice

=SeeKalevChoice
*[Acercarte a Kalev%]
~questionId = 34
~background = "cell"
~character = "Narrador%Narrator"
~sprite = "Kalev"
Kalev te mira fijamente a los ojos e inclina la cabeza hacia un lado sin decir una palabra.%

~character = "Johan%Johan"
~sprite = "Kalev"
¿Todo bien por aquí, Kalev?%

~character = "Narrador%Narrator"
~sprite = "Kalev"
El preso abre los ojos, sorprendido por oirte pronunciar su nombre.%
Niega con la cabeza, indicando que te marches.%

~character = "Johan%Johan"
~sprite = "Kalev"
Bueno, si necesitas cualquier cosa estaré por aquí.%

->SeeKalevChoice
*[Seguir recorriendo el pasillo%]
~questionId = 35
~background = "cellcorridor"
~character = "Narrador%Narrator"
~sprite = ""
Sigues recorriendo el pasillo hasta toparte con Luka apoyado frente a la máquina expendedora.%
Tiene los brazos cargados de chocolatinas y sujeta un café a duras penas.%
->VendingMachine

=VendingMachine
~background = "vendingmachine"
~character = "Luka%Luka"
~sprite = "Luka"
¿Qué tal va todo, pipiolo? ¿Te has atragantado ya con algún calcetín?%
~sfx = "Risa"

~character = "Narrador%Narrator"
~sprite = "Luka"
Luka comienza a reírse, lanzando trocitos de chocolate y cacahuete en todas direcciones.%

~character = "Johan%Johan"
~sprite = "Luka"
Todo bien, de momento solo me he tragado...%
~sfx = "Muertepreso_3"
~character = "Narrador%Narrator"
~sprite = ""
Un estruendo seco suena a tu espalda. Luka se sobresalta y lanza café y chocolatinas por los aires.%
Alguien comienza a gritar entre sonidos de plástico cayendo.%
Te asalta un olor metálico mientras el grto hace eco por el pasillo.%

~character = "Luka%Luka"
~sprite = "Luka"
¡Joder!
Chaval, mira a ver qué demonios ha pasado por allí, anda.%
Yo tengo que recoger todo esto.%

~character = "Narrador%Narrator"
~sprite = ""
Luka se agacha y comienza a apilar las chocolatinas de vuelta en sus brazos con la verdadera diligencia de un agente de la ley.%
Te das la vuelta y caminas hasta encontrar la fuente de los gritos.%
->StanislavVsKalev

=StanislavVsKalev
~background = "cell"
~character = "Narrador%Narrator"
~sprite = ""
Stanislav se tapa la cara con ambas manos frente a Kalev, que está envuelto con una manta hasta el cuello.%
Su ropa está tirada en una cesta de plástico en el suelo, cubierta con algunas gotas de sangre.%

~character = "Johan%Johan"
~sprite = ""
*[¡¿Qué está pasando aquí?!%]
~character = "Kalev%Kalev"
~sprite = "Kalev"
...%...

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¿Que si pasa algo? Ese desgraciado me acaba de dar un puñetazo.%
*[¿Stanislav? ¿Estás bien?%]
~character = "Kalev%Kalev"
~sprite = "Kalev"
...%...

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¿Que si estoy bien? Claro, estoy perfectamente.%
Solo me acaba de partir la nariz un maldito neandertal.%
-

~character = "Johan%Johan"
~sprite = ""
*[Llevar a Stanilav a la enfermería%]
~questionId = 36
->HelpStanislav

*[Interrogar a Kalev%]
~questionId = 37
->HelpKalev

=HelpStanislav
~character = "Johan%Johan"
~sprite = ""
¡Luka! ¡Eh, Luka!%
Encárgata de Kalev. Yo voy con Stanislav a la enfermería.%

~character = "Narrador%Narrator"
~sprite = ""
Luka llega a la celda con chocolatinas metidas entre los bolsillos.%

~character = "Luka%Luka"
~sprite = "Luka"
Así me gusta, cadete. ¡Con decisión!%
No te preocupes, sé encargarme de esta gente.%
Te esperan unos días en mi fortaleza de la soledad.%
->Infirmary

=Infirmary
~background = "infirmary"
~character = "Narrador%Narrator"
~sprite = ""
Llegas a la enfermería con Stanislav. La sangre comienza a brotar entre sus dedos mientras intenta taparse la nariz.%
Los enfermeros le sientan en una camilla y le inclinan la cabeza hacia adelante.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Gracias por lo de ahí dentro.%
Ese tipo es de lo más raro que hay por aquí.%

~character = "Johan%Johan"
~sprite = "Stanislav"
No hay de qué, por eso me pagan. O eso espero.%
Oye, ¿y qué le ha pasado antes?%

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Los enfermeros aprietan un pañueño contra la nariz de Stanislav hasta extraer un pequeño coágulo.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Estaba terminando de recoger mi ropa cuando miré hacia su celda. Estaba tranquilo, dejando la camiseta en su cesta.%
En cuanto vio que le estaba mirando se tapó con una manta y me dio un puñetazo.%

~character = "Johan%Johan"
~sprite = "Stanislav"
¿Te ha pegado por verle sin camiseta?

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Stanislav frunce el ceño cuando los enfermeros le insertan unos papeles húmedos por la nariz.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Eso creo.%
Nunca deja que nadie le vea desnudo. Ha pasado semanas enteras sin ducharse por no poder ir él solo.%
No entiendo tanto alboroto por unos tatuajes. Ni siquiera le quedan mal.%

~character = "Johan%Johan"
~sprite = "Stanislav"
¿Qué tipo de tatuajes? ¿Alguna fecha de aniversario de una ex?%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Ojalá, pero no.%
Tiene un montón de arañas en el brazo.%
Aléjate de ese tipo. He tenido encuentros con gente de ese... bueno, de ese mundillo.%
Nunca sale bien. Demasaida sangre.%

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Stanislav comienza a llorar cuando lso enfermeros le sacan los pañuelos enrojecidos y le insertan unos nuevos.%

~character = "Johan%Johan"
~sprite = "Stanislav"
...%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¿Te ha comido la lengua el gato, eh?5
No te preocupes, yo estoy limpio. Jamás contrataría a esa gente.%
Y dime, ¿cómo alguien tan... cándido ha terminado aquí?%

~character = "Johan%Johan"
~sprite = "Stanislav"
Me lo recomendó una antigua compañera de trabajo. Es algo temporal, pero se supone que pagan bien.%
He tenido bastante suerte. Es mucho más divertido que freír patatas.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¿Suerte? Je, sí, bueno...%
Al menos tú llevas ese otro uniforme y tienes la nariz intacta.%
¿Y qué piensas hacer después? ¿Quitarle el puesto de sargento a Luka?5

~character = "Johan%Johan"
~sprite = "Stanislav"
No no, Luka es único en su especie. Nadie podría sustituirle.%
Quiero ser músico.%
Es un mundo difícil, y más con poco dinero, pero voy a darlo todo por intentarlo.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Anda, ¿quién lo iba a decir? La música es tan bonita como exigente.%
De hecho, tuve el placer de conocer a Yuri Pletinov hace un par de años.%
Gran tipo, mejor compositor.%
Aunque peor bebedor de lo que dicen.%

~character = "Johan%Johan"
~sprite = "Stanislav"
¡¿En serio?!%
Adoro a Yuri, he aprendido un montón de sus libros.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Acabo de tener una gran idea, chico.%
¿Qué te parece si te lo presento? Me debe algunos favores.%

~character = "Johan%Johan"
~sprite = "Stanislav"
¿Puedes hacer eso? Sería genial, Stanislav.%
Tengo varios CDs que me gustaría enseñarle. No sé cómo podría recompensártelo.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Bueno, creo que yo sí lo sé.%
Necesito mandar una carta a un ex amigo y resulta complicado desde aquí dentro.%
Más aún con la nariz partida.%
¿Podrías ayudarme?%

~character = "Johan%Johan"
~sprite = "Stanislav"
*[Claro, la mandaré en cuanto llegue a casa%]
~questionId = 38
~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Genial Johan.%
Si todo sale bien, la siguiente carta que mandes será para Yuri.%
*[¿Quién es ese amigo?%]
~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
~questionId = 39
Ex amigo.%
Digamos que es la razón por la que estoy en esta... situación tan curiosa.%
Ya te contaré esa historia otro día.%
Dime, ¿la enviarás entonces?%

~character = "Johan %Johan"
~sprite = "Stanislav"
Claro, la mandaré en cuanto llegue a casa.%

-
~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Stanislav saca un papel de dentro de su pantalón, aunque no quieres saber de dónde en concreto.%
Lo restriegas con la manga antes de guardarlo en el bolsillo.%
Un par de guardias irrumpen en la enfermería para llevar a Stanislav de vuelta a su celda.%
Le agarran por los hombros y comienzan a esposarle hasta dejarle rojas las muñecas.%
Stanislav te guiña el ojo antes de ser arrastrado hasta su celda.%
Decides ir a ver qué tal le ha ido a Luka.%
Cuando termina de sacar nuevas chocolatinas de la máquina expendedora camináis juntos hacia la cantina.%

->Canteen

=HelpKalev
~background = "cell"
~character = "Johan%Johan"
~sprite = ""
¡Luka! ¡Eh, Luka!%
Lleva a Stanislav a la enfermería.%
Yo me encargo de Kalev.%

~character = "Narrador%Narrator"
~sprite = ""
Luka llega a la celda con chocolatinas derretidas metidas en los bolsillos.%

~character = "Luka%Luka"
~sprite = "Luka"
Así me gusta, cadee. ¡Con decisión!%
Avisaré a otros guardias para que te echen un cable.%
Aguanta a ese podiosero en su sitio, ¿quieres?%
Yo me llevo al hocico roto a la enfermería.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¡¿Hocico roto?!%

~character = "Luka%Luka"
~sprite = "Luka"
Andando, cerdito. Vamos al veterinario.%

~character = "Narrador%Narrator"
~sprite = ""
Luka se lleva a Stanislav hacia la enfermería.%

~character = "Johan%Johan"
~sprite = "Kalev"
Bueno, por fin solos. Hacerse el poli malo es difícil.%
Dime, ¿puede saberse por qué le has partido la nariz a Stanislav?%

~character = "Kalev%Kalev"
~sprite = "Kalev"
...%...

~character = "Narrador%Narrator"
~sprite = "Kalev"
Kalev te mantiene la mirada sin pestañear.%
La camiseta se le hincha al ritmo calmado de su repsiración.%

~character = "Johan%Johan"
~sprite = "Kalev"
Mira... Sé que no te gusta hablar, pero no puedo ayudarte si no cooperas.%
Quiero que esto salga lo mejor posible para ambos.%
¿Por qué le has pegado?%

~character = "Narrador%Narrator"
~sprite = "Kalev"
Kalev baja la mirada al suelo, con los ojos algo enrojecidos.%

~character = "Kalev%Kalev"
~sprite = "Kalev"
Ha visto cosas que nadie debería ver aquí dentro.%

~character = "Johan%Johan"
~sprite = ""
Bueno, es un primer paso...% #italics

~character = "Johan%Johan"
~sprite = "Kalev"
Eso no me dice demasiado, Kalev. ¿Qué es lo que ha visto?%

~character = "Narrador%Narrator"
~sprite = "Kalev"
Kalev juguetea con su camiseta, retorciéndose las mangas en la muñeca.%
Se acerca un poco a ti y comienza a susurrar.%

~character = "Kalev%Kalev"
~sprite = "Kalev"
Ha visto mis tatuajes.%
La araña.%
La estrella.%
El alambre de espino.%
Todos. Los ha visto todos, joder.%

~character = "Johan%Johan"
~sprite = "Kalev"
Oh vaya...

~character = "Kalev%Kalev"
~sprite = "Kalev"
No puedo dejar que nadie lo sepa.%
Ellos... No saben que me he escapado.%
Tenía que dejarlo, por mi bien, por el de...

~character = "Narrador%Narrator"
~sprite = "Kalev"
La voz de Kalev comienza a quebrarse.%

~character = "Kalev%Kalev"
~sprite = "Kalev"
Tenía que dejarlo.%

~character = "Johan%Johan"
~sprite = "Kalev"
No te preocupes, aquí dentro estás a salvo.%
Los guardias... Bueno, yo te protegeré. Pero no puedes montar estas escenas.%
¿No has pensado que llamarás más la atención?%

~character = "Kalev%Kalev"
~sprite = "Kalev"
Sí. Sí, tienes razón.%
No supe como reaccionar.%
Nadie podía saberlo.%
Nadie.%

~character = "Johan%Johan"
~sprite = "Kalev"
Nadie que te quiera hacer daño, Kalev.%

~character = "Kalev%Kalev"
~sprite = "Kalev"
No es a mí a quien quieren hacer daño. ¿Lo entiendes?%

~character = "Johan%Johan"
~sprite = "Kalev"
Ya... Empieza por no volver a hacer esto. Veré en qué más puedo ayudarte.%

~character = "Kalev%Kalev"
~sprite = "Kalev"
Hay algo más que puedes hacer. O eso creo, no quiero pedirte demasiado.%
Ni meterte en problemas.%

~character = "Johan%Johan"
~sprite = "Kalev"
*[¿De qué se trata?%]
-
~character = "Narrador%Narrator"
~sprite = "Kalev"
Kalev mira a un lado y a otro del pasillo antes de levantar el colchón.%
Saca un sobre mal cerrado, a punto de romperse.%

~character = "Kalev%Kalev"
~sprite = "Kalev"
¿Podrías... podrías enviar esto a una dirección?%
Yo no puedo hacerlo desde aquí dentro.%

~character = "Johan%Johan"
~sprite = "Kalev"
¿Qué hay en el sobre?%

~character = "Narrador%Narrator"
~sprite = "Kalev"
Kalev abre el sobre durante unos pocos segundos. Está repleto de billetes.%
No puedes contarlo todo, pero hay al menos 20.000 rublos.%

~character = "Kalev%Kalev"
~sprite = "Kalev"
Llevo ahorrando esto desde que entré en prisión.%
No es demasiado, pero espero que mi... la persona que va a recibir el sobre sepa usarlo bien.%

~character = "Johan%Johan"
~sprite = "Kalev"
*[Está bien, dame la dirección%]
-

~character = "Narrador%Narrator"
~sprite = "Kalev"
Le dejas un boli y una hoja de tu libreta a Kalev.%
El preso escribe la dirección con renglones temblorosos.%

~character = "Kalev%Kalev"
~sprite = "Kalev"
Gracias.%
Mucha gracias.%

~character = "Narrador%Narrator"
~sprite = "Kalev"
Kalev se acerca más y te da un abrazo a través de los barrotes.%
El preso comienza a temblar y le escuchas llorar sobre tu hombro.%

~character = "Johan%Johan"
~sprite = "Kalev"
No hay de qué, estoy aquí para ayudaros.%
Intenta no meterte en problemas con el resto de guardias ahora.%

~character = "Narrador%Narrator"
~sprite = ""
Tres guardias irrumpen en la celda de Kalev. Le cogen de los hombros y se lo llevan a rastras.%
Kalev te sonría mientras le llevan por el pasillo hasta la sala de aislamiento.%
Te acercas a Luka, que está sacando una nueva tanda de chocolatinas de la máquina expendedora. Juntos camináis hasta la cantina.%

->Canteen


=Canteen
~background = "canteen"
~hour = 2
~sfx = "Gente de fondo hablando"
~character = "Luka%Luka"
~sprite = "Luka"
¡Hola, chaval!%

~character = "Narrador%Narrator"
~sprite = "Luka"
Luka te da una palmada en la espalda que resuena por toda la cantina.%

~character = "Luka%Luka"
~sprite = "Luka"
Estoy orgulloso de cómo manejaste la situación.%

{HelpStanislav} ->CanteenStanislav
{HelpKalev} -> CanteenKalev

=CanteenStanislav
~character = "Luka%Luka"
~sprite = "Luka"
¿Qué tal está el viejo de Stanislav?%

~character = "Johan%Johan"
~sprite = "Luka"
Le han arreglado la nariz lo mejor que han podido.%
Pasarán unos días hasta que le deje de doler.%

~character = "Luka%Luka"
~sprite = "Luka"
Eso es bueno, eso es bueno.%
Y yo que esperaba que se la sustituyeran por la de un cerdo%

~character = "Johan%Johan"
~sprite = "Luka"
Ya...%
¿Y qué hay de Kalev? ¿Qué le va a pasar?%

~character = "Luka%Luka"
~sprite = "Luka"
Le espera un día en la fortaleza de la soledad al fondo del pasillo.%
Eso le ablandará un poco.%
Tendrías que haber visto cómo lloraba.%

~character = "Narrador%Narrator"
~sprite = ""
Apartas la mirada de Luka tras su comentario.%
La comida de la bandeja no tiene mejor pinta, pero hundes la cuchara en el puré amarillento.%

~character = "Luka%Luka"
~sprite = "Luka"
¿Todo bien, pipiolo?%
Nunca había visto a alguien nuevo comerse esta basura tan rápido.%

~character = "Johan%Johan"
~sprite = "Luka"
*[Espero que aguanta ahí dentro%]
*[Debe de ser duro estar ahí solo%]
-
~character = "Luka%Luka"
~sprite = "Luka"
¡Bah, no digas tonterías!%
Ese puto mafioso tiene lo que se merece.%

~character = "Narrador%Narrator"
~sprite = ""
Terminas tu bandeja, dejando tan solo unas migajas de puré de patatas.%

~character = "Johan%Johan"
~sprite = "Luka"
Tengo que irme a casa ya.%
El último autobús está a punto de salir.%

->CanteenStanislav

=CanteenKalev
~character = "Luka%Luka"
~sprite = "Luka"
Le has echado agallas para quedarte solito con el armario ese, ¿eh?%
Los tienes cuadraos, novato.%

~character = "Johan%Johan"
~sprite = "Luka"
La verdad es que impone bastante. Lo verdaderamente difícil ha sido hacerle hablar.%
¿Qué tal está Stanislav?%

~character = "Luka%Luka"
~sprite = "Luka"
Mejor. Le llevé al veterinario y ya le han curado el hocico.%
A ver si así aprende a olisquear su propia mierda.%

~character = "Johan%Johan"
~sprite = "Luka"
Ah vaya... Me... Me alegro de que esté mejor.%

~character = "Narrador%Narrator"
~sprite = ""
Apartas la mirada de Luka tras su comentario.%
Miras tu comida, pero el puré marrón no resulta especialmente apetecible.%
Ver cómo Luka lo devora tampoco ayuda.%

~character = "Luka%Luka"
~sprite = "Luka"
Bueno, ¿qué? ¿No tienes hambre? ¡Que tienes que crecer, tirillas!%

~character = "Johan%Johan"
~sprite = "Luka"
*[Lo de Stanislav me ha quitado un poco el apetito%]
*[Nada... simplemente pensaba en Stanislav. Espero que se recupere%]

-
~character = "Luka%Luka"
~sprite = "Luka"
Buah, pues serás el único que se preocupa por el tipejo ese.%
Es el parias de este sitio.%

~character = "Narrador%Narrator"
~sprite = ""
Comienzas a comer. La cuchara doblada será una mejor compañera de conversación.%

~character = "Johan%Johan"
~sprite = "Luka"
Tengo que irme a casa ya.%
El último autobús está a punto de salir.%

->BusKalev

=BusStanislav
~background = "bus"
~character = "Narrador%Narrator"
~sprite = ""
Pasas todo el trayecto con tu mochila posada en las piernas, rodeándola con los brazos.%
No puedes parar de abrirl y cerrarla para asegurarte de que la carta de Stanislav sigue dentro.%
Te bajas en tu parada, sacas la carta de la mochila y compruebas que todo está en orden.%
Terminas de pegar el sello, que lleva impreso el un casco obrero, antes de meter la carta en el buzón y volver a casa.%


->Flat

=BusKalev
~background = "bus"
~character = "Narrador%Narrator"
~sprite = ""
Pasas todo el trayecto con tu mochila posada en las piernas, rodeándola con los brazos.%
No puedes parar de abrirl y cerrarla para asegurarte de que la carta de Kalev sigue dentro.%
Te bajas en tu parada, sacas la carta de la mochila y compruebas que todo está en orden.%
Te llama la atención el sello, que lleva impresa la bandera de Estonia.%
Insertas la carta en el primer buzón que encuentras antes de volver a casa.%

->Flat

=Flat
~background = "apartmententrance"
~character = "Narrador%Narrator"
~sprite = ""
Entras en tu piso y dejas caer el abrigo al suelo junto a la mochila.%
Te sientras frente al teclado y das un largo suspiro.%

~character = "Fay%Fay"
~sprite = "Fay"
¡Pero vamos a ver! ¡¿Dónde está el support?!%

~character = "Johan%Johan"
~sprite = ""
Va a ser una noche larga...% #italics

~character = "Narrador%Narrator"
~sprite = ""
Comienzas a hacer ajustes con el teclado y, con paso aletargado, empiezas a tocar.%

TODO Añadir las canciones que puedes tocar
*[Canción 1%]
~music = ""
*[Canción 2%]
~music = ""

-
~character = "Narrador%Narrator"
~sprite = ""
Ves unos mechones rubios asomarse por el marco de la puerta.%
Miras a Fay a los ojos y das una cabezada contra el teclado.%

~character = "Fay%Fay"
~sprite = "Fay"
Uff.%
¿Día duro en el trabajo?%

~character = "Narrador%Narrator"
~sprite = "Fay"
Asientes despacio, arrastrando las bolsas de los ojos con cada movimiento.%

~character = "Johan%Johan"
~sprite = "Fay"
Ha habido una pelea entre dos presos.%
He tenido que intervernir.%

~character = "Fay%Fay"
~sprite = "Fay"
Uy qué valiente. ¿Cuántos porrazos has tenido que darles?%
Con esos brazos seguro que solo has necesitado medio golpe.%
Dos como mucho.%

~character = "Narrador%Narrator"
~sprite = "Fay"
Intentas sonreír, pero solo consigues dar otra cabezada sobre el teclado.%

~character = "Fay%Fay"
~sprite = "Fay"
Creo que deberías irte a dormir.%
Un teclado tan caro no merece estos cabezazos.%

~character = "Narrador%Narrator"
~sprite = "Fay"
*[Irte a dormir%]
~questionId = 40
Te levantas del teclado y arrastras los pies hasta llegar a tu habitación.%
*[Despedirte de Fay%]
~questionId = 41
Apoyas la mano en el hombro de Fay y le vuelves a dar las gracias por el regalo antes de irte a dormir.%

-
->BedroomNight

=BedroomNight
~background = "bedroom"
~character = "Narrador%Narrator"
~sprite = ""
Caes rendido en la cama sin siquiera quitarte el uniforme.%

->Day_Three


==Day_Three==
~day = 3
~hour = 0

->BedroomMorning

=BedroomMorning
~background = "bedroom"
~character = "Narrador%Narrator"
~sprite = ""

->END













































