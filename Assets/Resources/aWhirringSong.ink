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
~music = "Touchpoint"
~background = "prisonentrance"
~character = "Narrador%Narrator"
~sprite = ""
Poca gente espera acabar en la cárcel a los 26 años.%Few people expect to end up in prison at 26.
Para ti es el gran sueño. O al menos un paso para cumplir tu sueño.%It's a big dream for you. Or at least it's a step to achieve your dream.
Buscas el camino a tu libertad entre muros de cemento gris y barrotes oxidados.%You seek the path to yourfreedom among dull concrete walls and rusty bars.

~character = "Johan%Johan"
~sprite = ""
Primer día, allá vamos.%First day, here we go. #italics


*[Entrar por la puerta principal%Enter through the front door] 
~sfx = "Celda_Cerrando" 
->Recepction

=Recepction
~background = "reception"
~character = "Narrador%Narrator"
~sprite = ""
En la ventanilla de recepción solo encuentras un teléfono descolgado, una taza de café a medio tomar y una revista playboy con páginas arrancadas.%At the reception window you only find a phone off the hook, a half-drunk cup of coffe and a playboy magazine with some torn pages.
Quien sea que trabaje aquí parece que tardará un tiempo en volver.%It seems that whoeverworks here will be left for a while.

*[Dar un toque en la ventanilla%Tap the window]
~questionId = 0
~sfx = "Golpear_Ventana"
*[Tocar el timbre%Ring the bell]
~sfx = "Timbre"
~questionId = 1

-
~character = "Narrador%Narrator"
~sprite = ""
El sonido hace eco en la habitación.%The sound echoes in the room.
Nadie responde.%Nobody answers.
Desplzas el peso de tu cuerpo de una pierna a otra mirando el reloj.%You shift your body weight from one leg to the other while looking at the clock.

*[Esperar en recepción%Wait at the reception]
~character = "Narrador%Narrator"
~sprite = ""
Te apoyas en la ventanilla y sacas una revista de tu bolsillo.%You lean on the window and take a magazine out of your pocket.
Lees una crítica sobre el nuevo teclado Leinsf MK600.%You read a review about a keyboard that came out recently: the Leinsf MK600.
~sfx = "Pasos_1"
Según empiezas a leer suenan pasos en un pasillo a tu espalda, cada vez más rápido, acelerando.%Just as you start to read you hear footsteps in a corridor behind you. 
Una mano te golpea la espalda con fuerza.%A hand hits hard on your back.

~character = "Luka%Luka"
~sprite = "Luka"
Llegas tarde, novato.%You're late, rookie.
Soy Luka, tu nuevo compañero de trabajo.%Luka, your new coworker.

~character = "Johan%Johan"
~sprite = "Luka"
Disculpa, es la primera vez que vengo, no hay nadie en recepción y, bueno...%I'm sorry. I'm new here. There is no one at reception and...
Estoy bastante perdido.%I feel a bit lost.
Además solo han pasado dos minutos.%Besides, I'm only 2 minutes late.

~character = "Luka%Luka"
~sprite = "Luka"
Quieto ahí. Cada 10 minutos sucede un robo a mano armada.%Hold on. Every 10 minutes there occurs an armed robbery.
¿Crees que una quinta parte de un robo no meree tu atención?%Do you think a fifth of a robbery isn't worth your attention?

~character = "Johan%Johan"
~sprite = "Luka"
Esto..%
Bueno, no sabía que...%I... Well, I didn't know...

~character = "Luka%Luka"
~sprite = "Luka"
¿Sí o no?%Do you?

~character = "Johan%Johan"
~sprite = "Luka"
Sí, supongo que si lo piensas así 2 minuto es bastante tiempo.%Yeah, I guess that 2 minutes is quite a long time if you put it like that.

~character = "Luka%Luka"
~sprite = "Luka"
Así me gusta, pipiolo.%That sounds better, tyro.
Ya te darás cuenta de lo que son 2 minutos aquí dentro.%You'll realize what 2 minutes mean in here.
Ahora sígueme, comienza el tour guiado por el gran Hotel Delfín Negro.%Now follow me. Time to begin the guided tour through great Black Dolphin Hotel.
Le ruego no pierda de vista al guía y mantenga las manos alejadas de cualquier celda o persona con bozal.%Please do not lose sight of the guide and keep your hands away from any cell or person with a muzzle.

~character = "Johan%Johan"
~sprite = "Luka"
*[¿Disculpa?%Excuse me?]
~questionId = 2
*[¿Hotel Delfín Negro?%Black Dolphin Hotel?]
~questionId = 3
-

~character = "Luka%Luka"
~sprite = "Luka"
Sí. Mi hotel. 5 estrellas de puro cemento, acero y justicia.%Yes. My own hotel. 5 stars of pure concrete, steel and justice.
Comida fría, libros viejos y gimnasios sudados. Las mejores instalaciones para la peor de la escoria.%Cold food, old books and swaty gyms. The best facilites for the worst scum.

~character = "Narrador%Narrator"
~sprite = ""
Sigues a Luka por los pasillos estrechos.%You follow Luka through the narrow corridors.
~sfx = "Risa"
Sus carcajadas retumban por toda la cárcel mientras señala a un lado y a otro.%His laughter echoes throughout all the jail while he points left and right.
->Locker

=Locker
~background = "locker"

~character = "Narrador%Narrator"
~sprite = ""
La sala de personal cuenta con taquillas hasta donde alcanza la vista. Cada una con su propio cerrojo cubierto de grasa, por supuesto.%The staff lounge has lockers as far as the eye can see. Each with its own grease-covered latch, of course.
Un olor a humanidad, testosterona y un retorcido sentido de la justicia llena la habitación.%A smell of sweat, testosterone and a twisted sense of justice fills the room.

~character = "Luka%Luka"
~sprite = "Luka"
Primera parada, nuestro propio camerino. Vitrinas hasta arriba de herramientas y uniformes reforzados.%First stop, our own dressing room. Showcases full of tools and reinforced uniforms.
Siempre para defensa propia, por supuesto.%Always for self defense, of course.

~character = "Johan%Johan"
~sprite = "Luka"
*[¿Cuál de estas taquillas es la mía?%Which locker is mine?]
~questionId = 4
*[¿Y dónde dejo mis cosas?%Where can I leave my stuff?]
~questionId = 5

- ~character = "Luka%Luka"
~sprite = "Luka"
¡Pilla!%Catch it!

~character = "Narrador%Narrator"
~sprite = "Luka"
Luka sonríe y lanza una llave en tu dirección. La paras a escasos centímetros de tu cara.%Luka smiles and throws a key in your direction. You catch it quite close to your face.
Taquilla 42.%Locker 42.

~character = "Luka%Luka"
~sprite = "Luka"
Mira dentro. Tu regalo de bienvenida te espera.%Look inside. Your welcome gift awaits.

~character = "Narrador%Narrator"
~sprite = ""
Te peleas con el candado oxidado hasta poder abrir la taquilla.%You struggle with the rusty padlock until you can finally open the locker.
~sfx = "Abrir taquilla"
Dentro te espera un uniforme negro recién planchado y una caja de madera.%A freshly ironed uniform and a wooden box await you inside.
*[Abrir la caja%Open the box]
-
~sfx = "Abrir_Caja"
~character = "Narrador%Narrator"
~sprite = ""
Dentro encuentras una porra, un par de esposas y un táser con algo firmado en el lateral.%Inside you find a club, a pair of handcuffs and a taser with something written on the side.
"Solo para defensa propia. Luka"%Only for self defense. Luka.

~character = "Luka%Luka"
~sprite = "Luka"
Andando cadete, no podemos perder el tiempo. Siguiente parada: sala de recreo.%Let's go boy, there's no time to lose. Next stop: recreation room.

->Brakroom

=Brakroom
~background = "breakroom"
~character = "Narrador%Narrator"
~sprite = ""
~sfx = "Zumbido"
Tres sofás rodean una televisión en el centro de la sala. Inunda la habitación con un zumbido estático.%Three sofas are arranged around a TV in the center of the room. The room is filled with a static humming.
En una de las esquinas, tres presos están agazapados sobre una mesa de billar.%Three prisoners are crouched on a pool table placed on a corner.
Uno de ellos golpea a otro cuando cuela la bola negra en el agujero incorrecto.%One of them hits the other when he introduces the black ball into the wrong hole.

~character = "Luka%Luka"
~sprite = "Luka"
Aquí es donde encontrarás a la peor de la escoria.%This is where you'll find the worst scum in this prison.
No a los peligrosos, oh no. Esos se pasan el día dale que te pego con el gimnasio.%Not the dangerous ones, no. Those spend the whole day in the yard, non-stop exercising.
Aquí encontrarás a los vagos. Todo el día viendo la televisión o jugando al billar.%Here you'll find the laziest ones. Watching TV and playing pool all day.
¡A picar piedras le ponía yo!%Non-stop digging, that's what they should do!

~character = "Johan%Johan"
~sprite = "Luka"
*[Ya...%Yeah...]
~questionId = 6
*[La verdad que...%I guess you're...]
~questionId = 7

-
~character = "Luka%Luka"
~sprite = "Luka"
Me alegra que estemos de acuerdo. Ahora vayámonos de aquí. No aguanto estar con estos tipejos.%I'm glad we agree on this. Now let's get out of hear. I can't stand being with this slags.
Sígueme, te enseñaré donde los verdaderos hombres se entretienen.%Follow me, I'll show you where real men get entertained.
->Yard

=Yard
~background = "yard"
~character = "Narrador%Narrator"
~sprite = ""
Un par de bancos de ejercicio con charcos de sudor debajo te dan la bienvenida al patio de la prisión.%A pair of exercise benches with pools of sweat underneath them welcome you to the prison yard.
Hay manchas rojas y marrones restregadas por las redes de las porterías y canastas.%There are red and brown stains scrubbed on the goals and baskets nets.
No puedes decir exactamente qué son, pero sabes que hay cosas que es mejor no preguntar.%You can't tell what they're exactly, but you know some questions are better left unanswered.

~character = "Luka%Luka"
~sprite = "Luka"
¿Has estado alguna vez en una granja?%Have you ever been to a farm?

~character = "Johan%Johan"
~sprite = "Luka"
*[Lo cierto es que tenía un amigo...%Well, I had a friend that...]
~questionId = 8
*[No, nunca%No, never]
~questionId = 9
-

~character = "Luka%Luka"
~sprite = "Luka"
Pregunta retórica, pipiolo. Es importante que tu ganado haga algo de ejercicio. Si no estarán tristes y menos cooperativos.%Rethorical question, tyro. It's important for your cattle to exercise. They'd be unhappy and less cooperative otherwise.
Pues bueno, cuando vengas al patio tú seras su granjero. Tendrás que evitar problemas y malas leches por aquí.%Well, you'll be an actual farmer when you come to the yard. You'll have to avoid problems and bad tempers around here.

~character = "Johan%Johan"
~sprite = "Luka"
*[Entiendo%Understood]
~questionId = 10
~character = "Luka%Luka"
~sprite = "Luka"
Directo al grano, me gusta.%Straight to the point. I like that.
*[¿Y cobraré sueldo extra de granjero?%Will I get an extra salary for being a farmer?]
~questionId = 11
~character = "Luka%Luka"
~sprite = "Luka"
Da las gracias si no cobras por parte de los presos. La granja es un trabajo de riesgo.%Be thankful if the prisoners don't pay you with a kick to your gut. Farming is a risky job.

-
Sigamos por aquí, vamos a ver el establo.%Let's continue. We're headed to the stable now.

->CellCorridor

=CellCorridor
~hour = 1
~background = "cellcorridor"
~character = "Narrador%Narrator"
~sprite = ""
~sfx = "Gente de fondo hablando"
Siguiendo a Luka llegas al corredor principal de la prisión.%While following Luka you reach the main corridor of the prison.
Quién hubiera pensado que un pasillo podría tener tanto poder.%Who could have thought that a hallway could convey so much power.
Cuatro paredes y un techo pueden decidir la vida de una persona, ponerla en pausa.%Four walls and a ceiling can decide the life of a person, put it on a hiatus.
Aún así, si cerraras los ojos pensarías que estás en una taberna, llena de gritos ininteligibles, y llantos de borrachos.%Still, if you closed your eyes, you'd think you were in a tavern, full of unintelligible screams and the cries of drunkards who have drank too much.

~character = "Luka%Luka"
~sprite = "Luka"
y esta es nuestra atracción principal. 30 metros cuadrados de pura desolación, aunque ha visto tiempos mejores.%And this is our main attraction. 30 meters of pure desolation. It's seen better times though.
Tendrías que haber estado aquí hace una década.%You should've been here a decade ago. 
Este pasillo estaba tan lleno que tuvimos que improvisar nuevas celdas con contenedores de plástico.%This corridor was so full of cattle that we had to improvise new cells with plastic containers.

Ah, qué tiempos aquellos...%Oh, what times were those...

~character = "Johan%Johan"
~sprite = "Luka"
Bueno, no parece estar tan mal ahora. Los presos, perdona, el ganado parece estar contento.%Well, it doesn't look so bad now. The prisoners, sorry, the cattle seem happy.

~character = "Luka%Luka"
~sprite = "Luka"
Si tú lo dices.%If you say so.

~character = "Johan%Johan"
~sprite = "Luka"
Y dime, ¿qué ha hecho toda esta gente para acabar aquí?%And tell me, what have all these people done to end up here?

~character = "Luka%Luka"
~sprite = "Luka"
Bueno, tenemos un poco de todo. La variedad es la esencia de la vida.%Well, we got a little bit of everything. Variety is the essence of life.
No te quiero arruinar la sorpresa.%Don't want to ruin you the surprise.
¿Por qué no hablas con ellos y se lo preguntas?%Why dont you talk with them and ask them yourself?
Te esperaré junto a la máquina expendedora.%I'll wait for you by the vending machine.
Tanto hablar me está dejando la garganta peor que una noche de partido.%All this talking's making my throath feel worse than a football night.

~character = "Narrador%Narrator"
~sprite = ""
->CorridorChoice

=CorridorChoice
*[Mirar celda a la izquierda%Look at the cell to your left]
~questionId = 12
->Kalev

*[Mirar celda a la derecha%Look at the cell to your right]
~questionId = 13
->Stanislav

*[Mirar celdas al fondo%Look at the cells in the background]
~questionId = 14
->OtherCells

*[Ir al final del pasillo%Go to the end of the corridor]
~questionId = 15
->Isolation

+{Kalev and Stanislav and OtherCells and Isolation}[Volver con Luka%Go back with Luka]
->VendingMachine

=Kalev
~music = "Somber"
~background = "cell"
~character = "Narrador%Narrator"
~sprite = "Kalev"
Un hombre alto y rubio está tras los barrotes.%There's a tall blonde man behind the bars.
Lee un papel sobre su cama sin siquiera mirarte a los ojos.%He's reading a paper on his bed without even looking into your eyes.
Golpeas los barrotes con tu porra para llamar su atención.%You softly hit the bars with your club to draw his attention.
Guarda el papel bajo la almohada y tira de la manga izquierda de su uniforme, hasta cubrirse la muñeca.%He puts away the paper under the pillow and pulls the left sleeve of his uniform, covering his wrist.

~character = "Johan%Johan"
~sprite = "Kalev"
Buenas tardes, venía a presentarme. Soy Johan.%Good afternoon, I came to introduce myself. I'm Johan.
Me han asignado a este corredor, creo que nos vamos a ver bastante por aquí.%I've been assigned to this corridor. I think we are going to see each other a lot around here.

~character = "¿?%???"
~sprite = "Kalev"
...%...

~character = "Narrador%Narrator"
~sprite = "Kalev"
En cuanto dejas de hablar vuelve a sacar el papel de debajo de la almohada.%As soon as you stop talking, he takes the paper back from under the pillow.
Parece agarrar con más fuerza las mangas de su uniforme.%He seems to grip the sleeves of his uniform even tighter.
~music = "Touchpoint"
->CorridorChoice

=Stanislav
~music = "Quier"
~background = "cell"
~character = "Narrador%Narrator"
~sprite = ""
Lo último que esperabas ver en una celda era la luna, redonde y de un blanco brillante.%The last thing you expected to see in a cell was the moon, round and shiny.
Un hombre bajito te da la espalda con los pantalones bajados hasta los tobillos.%A short man turns his back on you with his pants down to his ankles.
Decides darte la vuelta hasta escuchar el sonido de la cisterna.%You decide to turn around until you hear the sound of the cistern.

~character = "¿?%???"
~sprite = "Stanislav"
¡Oh disculpa! No sabía que estabas ahí. Me hubiera aguantado un poco más.%Oh sorry! I didn't know you were there. I would have held on a little longer.
No es digno de mí que me encuentren con los pantalones bajados.%Not worthy of me to get caught with my pants down.

~character = "Narrador%Narrator"
~sprite = "Stanislav"
El hombre emite una carcajada enctrecortada, quizás más comparable con el gruñido de un cerdo.%The man emits a choked laughter. It feels closer to the snarl of a pig than to a human laugh.

~character = "¿?%???"
~sprite = "Stanislav"
Perdoa mis modales, ni siquiera me he presentado.%Pardon my manners, I haven't even introduced myself.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Soy Stanislav. Ten mi tarjeta.%I'm Stanislav.Here, have my card.

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Stanislav te tiende una servilleta con algo escrito en el frente.%Stanislav hands you a napking with something written on the front.
"Stanislav Volkov. Economista." La doblas y la guardas en el bolsillo de tu uniforme.%"Stanislav Volkov. Economist". You fold it up and put it in your uniform pocket.
No sabes cómo puede haber conseguido tinta, pero prefieres no averiguarlo de momento.%You don't know how he could've gotten ink, but you prefer to remain ignorant.

~character = "Johan%Johan"
~sprite = "Stanislav"
No te preocupes. Tendría que haber hecho más ruido.%Don't worry. I should've made more noise.
Soy Johan, me han asignado a este corredor. Creo que nos veremos bastante por aquí.%Im Johan, I've been asigned to this corridor. I think we'll see each other quite a bit around here.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Eso espero. Es raro ver una cara amigable en este lugar.%I hope so. It's weird seeing a friendly face around here.
Ahora si me disculpas, tengo que continuar con mi, uhm, transacción.%Now, if you'll excuse me, I have to continue with my, uhm, transaction.

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Te das la vuelta y escuchas la tapa del váter abrirse de nuevo.%You turn around and hear the toilet seat opening.
Será mejor continuar hacia otro lugar.%It'll be better to continue to another cell.
~music = "Touchpoint"
->CorridorChoice

=OtherCells
~background = "cellcorridor"
~sfx = "Gente de fondo hablando"
~character = "Narrador%Narrator"
~sprite = ""
Las celdas al fondo del pasillo están llenas de presos uniformados, unos tambaleándose y otros dando vueltas en el sitio.%Cells at the end of the corridor are full of uniformed prisoners, some staggering and other walking in circles.
Todos apartan la vista cuando les miras a la cara.%Everyone looks away when you look at their face
Será mejor dejarles por hoy.%Better leave them for today.
->CorridorChoice

=Isolation
~background = "heavydoor"
~character = "Narrador%Narrator"
~sprite = ""
Al final del corredor esperan dos gruesas puertas de acero.%Two heavy steel doors await at the end of the corridor.
Incluso la luz de las ventanas parece evitarlas.% Even the light of the windows seem to avoid them.
Pensar en su interior, un agujero frío y estrecho, te roba el aliento y el equilibio.%Thinking about its interior, a cold and narrow hole, it takes your breath and your balance away.
Apoyas un brazo sobre la pared para mantenerte en pie.%You lean your hand to the wall to keep your balance.
Das media vuelta, huyendo de las dos puertas.% You turn around, fleeing from the two doors.
->CorridorChoice

=VendingMachine
~background = "vendingmachine"
~character = "Narrador%Narrator"
~sprite = ""
Luka te espera apoyado contra la pared y dando sorbos de su café.%Luka waits while leaning against the wall whilst sipping coffee.

~character = "Luka%Luka"
~sprite = "Luka"
Si que has tardado. ¿Qué tal ha ido?%It took you a while. How did it go?

~character = "Johan%Johan"
~sprite = "Luka"
*[No ha estado mal%Not bad] 
~questionId = 16
    No ha estado mal. Stanislav parece muy agradable.%Not badStanislav seems very nice
    
    ~character = "Luka%Luka"
    ~sprite = "Luka"
    Ten cuidado con ese tipo, a diferencia del resto sabe mantener una conversación.%Be careful with that one. Unlike the rest he knows how to hold a conversation.
    Aquí dentro eso puede ser más peligroso que dos biceps de acero.%In here, that can be more dangerous than two biceps of steel.

*[Podría haber ido mejor%Could've been bettter]
~questionId = 17
    Podría haber ido mejor. Aquel preso alto y rubio ni siquiera me ha dirigido la palabra.%Could've been bettter. That tall blonde guy didn't even speak to me.
    ~character = "Luka%Luka"
        ~sprite = "Luka"
        No te preocupes, ese tipo no suele hablar con nadie.%Don't worry about it. That guy never talks to anyone.
        Se pasa el día leyendo en su celda y haciendo ejercicio. Ni siquiera recuerdo cómo se llama...%He spends the day reading and exercising in his cell. I don't even remember his name...
        
-
~character = "Luka%Luka"
~sprite = "Luka"
No le des demasiadas vueltas.%Don't give it too much thought. 
Lo más importante de este trabajo es no llevarte nada a cuestas cuando te marches a casa.%The most important thing about this job is not carrying anything with you when you go home.
Vamos, ya casi hemos terminado el tour.%Come on, we've almost finished the tour.
->ElectricChair

=ElectricChair
~background = "closeddoor"
~sfx = "Zumbido"
~music = "Horror13"
~character = "Narrador%Narrator"
~sprite = ""
Siguiendo a Luka te paras frente a una puerta cerrada.% While following Luka you stop and stand in front of a closed door. 
Un zumbido monótono suena desde el otro lado.%A monotonous whirring sounds on the other side.
La puerta tiene tres candados distintos y una cerradura con llave.%The door has three different padlocks and a key lock.

~character = "Johan%Johan"
~sprite = "Luka"
Oye Luka, ¿y esta puerta?%Hey Luka. What about this room?

~character = "Luka%Luka"
~sprite = "Luka"
Oh, no te preocupes por eso. Esa zona está fuera de límites para ti.%Oh, don't worry about it. This zone is off-limits for you.
Se está haciendo tarde. Déjame enseñarte la cantina y vamos a tomar algo de paso.%It's getting late. Let me show you the canteen and let's eat anything since we are there.

~music = "Touchpoint"
->Canteen

=Canteen
~hour = 2
~background = "canteen"
~sfx = "Gente de fondo hablando"
~character = "Narrador%Narrator"
~sprite = ""
Un olor mediocre, como el de una infusión con demasiada agua, sube desde las ollas de la cantina.%A mediocre smell, like that of an infusion made with too much water, rises from the canteen pots.
En los platos de los presos solo alcanzas a ver masas informes de color grisáceo.%You can only reach to see shapeless grayish masses on the prisoners' plates.
Aún así, la mediocridad resulta deliciosa para el estómago del hambriento.%Still, mediocrity looks delicious for the stomach of those who are hungry.
Esperas con la pierna inquieta y la boca hecha agua a que Luka llegue a la mesa del comedor con vuestras bandejas.%You wait with a restless leg and watering mouth for Luka to to arrive at the table with your trays.

~character = "Luka%Luka"
~sprite = "Luka"
Y bueno, pipiolo, ¿qué tal el primer día de trabajo?%Well tyro. How was your first day of work?
No te acostumbres a que te acompañe a todos lados. Estoy muy solicitado por aquí, ¿sabes?%Don't get used to me going everywhere with you. I'm in high demand here, you know?

~character = "Narrador%Narrator"
~sprite = "Luka"
Un grupo de guardias de la mesa de al lado apartan la mirada y sueltan una carcajada antes de maarcharse.%A group of guards at the next table look away and laugh before leaving.

~character = "Johan%Johan"
~sprite = "Luka"
*[Hablar del preso alto y rubio%Talk about the tall blonde prisoner]
~questionId = 18
    Ese preso alto y rubio parece interesante. Me pregunto cómo habrá terminado aquí...%That tall blonde prisoner looks interesting. I wonder how he ended up here...
    
    ~character = "Luka%Luka"
    ~sprite = "Luka"
    Se llama Kalev y entró aquí hace un par de años.%His name's Kalev. He's in here since a couple of years ago.
    No sé muy bien por qué, pero seguro que por algo terrible.%I don't know why. For doing something terrible, that's for sure.
    Es un tipo raro.%He's a weird guy.
    Nunca se quita el uniforme ni se ducha con el resto de presos.%Never takes off his uniform nor showers with other prisoners.
    
    ~character = "Johan%Johan"
    ~sprite = "Luka"
    ¿Y siempre es tan callado?%Is he always so quiet?
    
    ~character = "Luka%Luka"
    ~sprite = "Luka"
    No le he escuchado decir ni una sola palabra en estos dos años.%I've never heard a word from him in these two years.
    Cuando pide comida simplemente señala con la cabeza hacia la olla que quiere.%He simply nods at the pot he wants when ordering food.
    Ya te digo, es un tipo muy raro.%I said, he's such a weird guy.
    
*[Hablar de Stanislav%Talk about Stanislav]
~questionId = 19
Stanislav parece un tipo bastante majo. Pensé que no habría gente así en la cárcel.%Stanislav seems a pretty nice guy. I thought there wouldn't be people like that in jail.

    ~character = "Luka%Luka"
    ~sprite = "Luka"
    Ten cuidado con ese tipo. Su lengua está más afilada que cualquier punzón improvisado con el que te puedan amenazar.%Be careful with that guy. His tongue's sharper than any improvised awl you could get threatened with.
    Me alegro de que haya terminado entre rejas.%I'm glad he ended up in prison.
    
    ~character = "Johan%Johan"
    ~sprite = "Luka"
    ¿Ha hecho algo grave?%Did he do something serious?
    
    ~character = "Luka%Luka"
    ~sprite = "Luka"
    ¿No lees el periódico nunca, pipiolo?%Don't you ever read newspaper, tyro?
    Ese tipo es uno de los mayores enemigos de este país. Un absoluta decepción para el gobierno.%That guy's one of the greatest enemies of this country. An absolute disappointment for the government.
    Pero dejemos el tema ya. Hablar de política me cierra el apetito.%But let's talk about anything else. Speaking politics spoils my appetite.
    
*[Hablar de la comida%Talk about food]
~questionId = 20
No puedo hablar con el estómago vacío. No hemos comido nada en todo el día. ¿Va a ser siempre así?%I can't think with my stomach empty. We haven't eaten anything for all day. Will it always be like this?

    ~character = "Luka%Luka"
    ~sprite = "Luka"
    Acostúmbrate.%Get used to it.
    Estamos algo faltos de personal ahora. Solo podemos hacer pausas para cenar.%We're a bit understaffed lately. We can only take dinner breaks.
    Míralo por el lado bueno.%Look at the good side of it.
    Entre el ejercicio y esta diéta echarás unos buenos músculos en esos palillos que tienes por brazos.% With this diet and some exercising you'll grow muscles in those toothpick-thin arms of yours.

-
*[Comer de la bandeja%Eat from the tray]
~character = "Narrador%Narrator"
~sprite = ""
Ningún preso amenazante, zumbido extraño o puerta misteriosa podía prepararte para la visión más horrible que tendrías en tu primer día.%No scary prisoners, weird whirring nor a mysterious door could prepare you for the worst sight you'd have in your first day.
En un instante, Luka se ha convertido en un borrón de manos moviéndose y trozos de comida saltando por los aires.%In just an instant, Luka became a blurring made up of hands and chunks of food flying through the air.
Antes siquierea de que empieces tu bandeja la suya ya está vacía y reluciente.%Before you could even start eating, Luka's tray is already empty and gleaming.

~character = "Luka%Luka"
~sprite = "Luka"
¿Todo bien, novato? Estás más pálido que cuando te encontré en la recepción.&Everything all right, rookie? You're paler than when I met you at the reception.

~character = "Johan%Johan"
~sprite = "Luka"
*[Veo que tenías hambre%I see you were hungry]
~questionId = 21
    ~character = "Luka%Luka"
    ~sprite = "Luka"
    Ah, no hay nada mejor que la comida de esta cafetería, chaval.%Oh, there's nothing better than this cafeteria's food, kid.
    Es como una buena cerveza, la apreciarás más con el tiempo.%It's just like a good beer, you'll appreciate it more over time.
    
*[No, nada. Estoy bien%No, it's nothing. I'm ok]
~questionId = 22
    ~character = "Luka%Luka"
    ~sprite = "Luka"
    Si tú lo dices...%If you say so...

-
~character = "Luka%Luka"
~sprite = "Luka"
Date prisa y termina tu plato. No quiero llegar tarde a casa.%Hurry up and finish yours. I don't wanna be home late.
Esta noche hay partido.%There's a match tonight.

~character = "Narrador%Narrator"
~sprite = ""
Bajas la cabeza y te comes la comida de tu bandeja.%You lay your head down and eat the food on your tray.
Cuando terminas la cafetería está completamente vacía.%When you finish eating, the cafeteria is completely empty.

~character = "Luka%Luka"
~sprite = "Luka"
Vamos chaval, hora de irse a casa.%Let's go kid, time to go home.

~character = "Narrador%Narrator"
~sprite = "Luka"
Sigues a Luka hasta salir de la cafetería y la cárcel.%You follow Luka to the exit of the prison.
->PrisonExit

=PrisonExit
~background = "prisonentrance"
~character = "Luka%Luka"
~sprite = "Luka"
Hasta mañana, cadete.%See you tomorrow, boy.
Recuerda, no le des muchas vueltas a nada de lo que veas aquí dentro.%And remember, don't give too much tought to anything you see in here.
Intenta distraerte un rato en casa.%Try to keep yourself distracted for a while at home.

~character = "Narrador%Narrator"
~sprite = "Luka"
Luka te da un abrazo sorprendentemente reconfortante antes de marcharse en su coche.%Luka gives you a surprisingly warming hug before getting into his car.
->FlatDoorstep

=FlatDoorstep
~background = "apartmentdoor"
~character = "Narrador%Narrator"
~music = "Clouds"
~sprite = ""
Coges el último autobús hasta el centro de la ciudad y llegas a la puerta de tu piso.%You take the last bus to the town center and arrive to your flat's door.
Cuando rebuscas en tus pantalones no escuchas el esperado tintineo de las llaves.%When looking into your pockets you don't hear the expected jingle of the keys.

->DoorChoice
=DoorChoice
*[Llamar al timbre%Call at the doorbell]
~questionId = 23
    ~character = "Narrador%Narrator"
    ~sprite = ""
    Pulsas el timbre, pero solo te responde un zumbido eléctrico y un pequeño chispazo en el dedo.%You press the doorbel, but the only response you get is an electric buzz and a little spark on your finger.
    ->DoorChoice
*[Golpear a la puerta%Knock on the door]
~questionId = 24
    ~character = "Narrador%Narrator"
    ~sprite = ""
    ~sfx = "Golpear_Ventana"
    Golpeas la puerta con los nudillos hasta dejarlos rojos.%You knock on the door with your knuckles until they turn red.
    Suspiras aliviado al escuchar pasos desde el otro lado.%You sigh in relief when hearing footspets from the other side of the door.
    
    ~character = "Fay%Fay"
    ~sprite = "Fay"
    ¿Johan? ¿Qué es este alboroto?%Johan? What's all this fuss about?
    
    ~character = "Johan%Johan"
    ~sprite = "Fay"
    Menos mal, Fay.%Thank goodness, Fay.
    Mira, me he dejado las llaves en...%left my keys on...
    Bueno, no sé dónde me las he dejado.%Well, I don't know where I left them.
    ¿Puedes abrir?%Can you open?
    
    ~character = "Fay%Fay"
    ~sprite = "Fay"
    Claro, tonto. Pasa.%Sure, silly boy. Get in.
    ->Flat

=Flat
~background = "apartmententrance"
~character = "Narrador%Narrator"
~sprite = ""
Al abrir la puerta encuentras un salón con algunas latas de cerveza aplastadas tiradas por el suelo.%When you open the door you find a living room filled with some crushed beer cans lying on the ground.
Encima de la mesa hay un portátil con un vídeo a todo volúmen.%There's a laptop on the table with a video blasting out.
Es otro de esos juegos de estrategia que tanto le gustan a Fay.%It's another one of those strategy video games that Fay likes so much.

~character = "Fay%Fay"
~sprite = "Fay"
Disculpa el desorden. Han venido amigos esta tarde.%Excuse the mess. Some friends came this afternoon.
No sé si te acordarás, pero hoy había partido de semifinales.%I dont't know if you remember, but today started the semifinals.
Mañana lo recojo todo, prometido.%I'll clean tomorrow. I promise.

~character = "Johan%Johan"
~sprite = "Fay"
Sin problemas.%No problem.
¿Qué tal fue el partido? ¿Hoy jugábais los Featherknights?%How was the game? Did you Featherknights play today?

~character = "Fay%Fay"
~sprite = "Fay"
Oh no no. Nos eliminaron en octavos.%Nope. We got eliminated in the round of 16.
Ha estado bien, algo aburrido hacia el final.%It was ok. Got a little bit boring towards the end.
Podrían haber terminado antes si hubieran jugado mejor su rush build, pero bueno...%They could've ended much earlier if they had played their rush build better.

~character = "Johan%Johan"
~sprite = "Fay"
Al menos sabéis por donde entrárles en vuestro próximo partido.%At least you'll know what their weaknesses are in your next game.
Estoy seguro de que ganaréis el año que viene.%I'm pretty sure you'll win next year.

~character = "Fay%Fay"
~sprite = "Fay"
Ya... Eso espero.%Yeah... I hope so.
Por cierto Johan, ¿te importa pasarme una cerveza de la nevera?%By the way Johan, would you mind bringing me a beer?
Están en la segunda balda.% They are on the second shelf of the fridge.
Mientras voy a recoger un poco el salón.%Meanwhile I'll clean up the living room a bit.

~background = "apartmentkitchen"
~character = "Narrador%Narrator"
~sprite = ""
Caminas hasta la cocina mientras Fay se marcha al salón.%You walk to the kitchen while Fay goes to the living room.
Escuchas ruidos de latas, crujidos de papel y algo pesado siendo arrastrado.%You hear can noises, paper rustels and something heavy being dragged.

~character = "Johan%Johan"
~sprite = ""
*[¿Todo bien, Fay?%Everything all right, Fay?]
~questionId = 25
    ~character = "Fay%Fay"
    ~sprite = "Fay"
    Sí sí, no te preocupes. Tú traeme esa cerveza, porfi.%Yeah, don't worry. Just bring me my beer please.
*[Abrir la nevera%Open the fridge]
~questionId = 26

-
~character = "Narrador%Narrator"
~sprite = ""
Abres la puerta de la nevera, pero no encuentras ninguna lata.%You open the fridge but you can't find any can.
En la segunda balda hay una enorme tarta con un 24 de cera encima.%On the second shelf there's a cake with a huge 24 made of wax on it.
Tiene escrito "¡Felicidades Johan!" encima con sirope de fresa.%There's something written with strawberry syrup on it: "¡Happy Birthday Johan!".

~character = "Johan%Johan"
~sprite = "Fay"
Oh Fay, no tenías por qué molestarte...%Oh Fay, you didn't have to...

~character = "Fay%Fay"
~sprite = "Fay"
Shhh.%Shhh.
Tú tráeme la cerveza al salón, por favor.%You just bring the beer to the living room please.

~character = "Narrador%Narrator"
~sprite = ""
Coges la tarta con ambas manos y vuelves al salón.%You take the cake with both hands and go back to the living room.
Fay espera tras una enorme caja envuelta en papel de regalo.%Fay's waiting behind of a huge box wrapped in gift paper.

~background = "apartmententrance"
~character = "Fay%Fay"
~sprite = "Fay"
¡Sorpresa!%¡Surprise!
Feliz cumpleaños, Johan.%Happy Birthday Johan.

~character = "Johan%Johan"
~sprite = "Fay"
Fay...%Fay...

~character = "Fay%Fay"
~sprite = "Fay"
Vamos, ¿no te me vas a poner a llorar ahora, verdad?%Come on. You're not going to start crying, are you?

~character = "Narrador%Narrator"
~sprite = ""
Te acercas a la caja mientras la sonrisa de Fay crece más y más.%You get closer to the box while Fay's smile grows wider.
Quitas una capa de papel y otra hasta dejar la caja al descubierto.%You unwrap one layer of gift paper after another until the box is finally uncovered.
Miras con ojos abiertos el frontal mientras un título te devuelve la mirada: Leinsf MK600.%You look at the front of it with your eyes wide open while a title stares back at you: Leinsf MK600.

~character = "Johan%Johan"
~sprite = "Fay"
¡¿Estás de broma?!%Are you kidding?!
No... No puedo aceptar esto, Fay. Este teclado es demasiado caro.%No... I can't accept this, Fay. This keyboard's too expensive.
Además, no creo que pudiera sacarle partido con mias habilidades...%Besides, I don't think I could take advantage of it right now...

~character = "Fay%Fay"
~sprite = "Fay"
No no, no sigas por ahí, Johan.%No. Stop going through there, Johan.
¿De verdad voy a tener que devolverlo con lo que me ha costado conseguirlo?%Am I really having to return it after all it took me to get it?

~character = "Johan%Johan"
~sprite = "Fay"
No...%No...
No, claro que no.%No, of course not.
Supongo que tendré que quedármelo entonces.%I guess I'll have to keep it then.

~character = "Fay%Fay"
~sprite = "Fay"
Vaya chasco, ¿eh?%What a bummer, huh?

~character = "Johan%Johan"
~sprite = "Fay"
Total. Ahora podré competir contigo en hacer ruido a horas intempestivas.%Totally. Now I can compete with you making noise at odd hours.

~character = "Fay%Fay"
~sprite = "Fay"
Bah, no me llegas ni al tobillo, chaval.%Bah, you're not even fit to tie my shoelaces, kiddo.
Ahora en serio, mola verte sonreír.%Now seriously. It's cool see you smiling.
Deberías hacerlo más.%You should do it more often.

~character = "Johan%Johan"
~sprite = "Fay"
Sí.%Yes.
Sí, lo cierto es que sienta bien.%Yes, it does feel good.

~character = "Fay%Fay"
~sprite = "Fay"
Y dime, ¿no te vas de fiesta con tus amigos?%And tell me, aren't you going to party with your friends?
Es tu cumpleaños, hombre. Hay que celebrarlo.%It's your birthday man. You have to celebrate it.

~character = "Johan%Johan"
~sprite = "Fay"
Vamos a salir el sábado, hoy no me puedo quedar hasta tarde.%We're going out on Saturday. I can't stay late today.
Mañana entro pronto a trabajar.%I'm going to work early tomorrow.

~character = "Fay%Fay"
~sprite = "Fay"
¡Mierda!%Crap!
Olvidé preguntarte por el primer día de tabajo.%I forgot to ask you about your first day of work.
¿Qué tal ha ido? Debe dar miedo trabajar en una cárcel...How it went? It must be scary working in a jail...

~character = "Johan%Johan"
~sprite = "Fay"
Bastante bien. Supongo que conoces gente... interesante.%Fairly good. I guess you meet... interesting people.
Es muy agotador. Casi no podemos ni pararnos a comer.%It's very tiring. We can hardly even stop to eat.
De hecho, creo que me voy a ir a la cama. Estoy molido.%In fact, I think I'm going to bed now.

~character = "Fay%Fay"
~sprite = "Fay"
Oh claro, sin problema.%Oh sure, no problem.
¿Quieres que te ayude a mover el teclado?%Do you want me to help you move the keyboard?

~character = "Johan%Johan"
~sprite = "Fay"
Creo que lo dejaré en el salón un tiempo, si no te importa, claro.%I think I'll leave it in the living room for a while. If you're ok with it, of course.

~character = "Fay%Fay"
~sprite = "Fay"
Todo tuyo. Estoy deseando escucharte probarlo.%All yours. I'm really looking forward to hearing you play.
Buenas noches, Johan.%Good night, Johan.
Trataré de no gritar mucho en las partidas de esta noche.%I'll try not to yell so much while gaming tonight.

~character = "Johan%Johan"
~sprite = "Fay"
Eso espero, me estoy quedando sin tapones.%I hope so. I'm running out of ear plugs.
Hasta mañana, Fay.%See you tomorrow, Fay.
->Bedroom

=Bedroom
~background = "bedroom"
~character = "Narrador%Narrator"
~sprite = ""
Un fuerte olor a cerrado te golpea al abrir la puerta de tu cuarto.%A strong musty smell hits you hard when opening your room's door.
El ambientador que dejaste sobre la mesa lleva días gastado.%The air freshener you left has long since worn out.
->BedroomChoice

=BedroomChoice
*[Mirar el escritorio%Looks at the desk]
->Desktop
*[Mirar la estantería%Look at the shelf]
->Bookshelf
*{Bookshelf and Desktop} [Meterse en la cama%Get into bed]
->Bed

=Desktop
Pasas el dedo sobre tu sintetizador en el escritorio, tocando suavemente sus notas.%You slip your finger over your synthesizer on the desk, gently tapping one of its notes.
Presionas sobre una de sus esquinas hasta terminar de pegar una pegatina de los Featherknights.%You make pressure on one of its corners, gluing a Featherknights' sticker.
->BedroomChoice

=Bookshelf
Sacas un libro y lo sostienes, pesado, en tus manos.%ou take out a book and hold it in your hands. It feels heavy.
Acústica, Armonía y Funciones tonales, por Yuri Pletinov.%Acoustics, Harmony and Tonal functions, by Yuri Pletinov.
Está lleno de marcadores en los lados y la espina está algo desgastada.%It is full of markers on the sides and the spine os a bit worn.
A los pies de la estantería descansa tu guitarra marrón, con algunas zonas de madera desconchada.%At the foot of the shelf lies your brown guitar, which has some areas of chipped wood.
->BedroomChoice

=Bed
~character = "Johan%Johan"
~sprite = ""
*[Pensar en el trabajo%Think about work]
~questionId = 27
    Luka parece muy bueno en su trabajo, aunque me da algo de pena.%Luka seems very good at his job, although I feel a bit sorry for him. #italics
    ¿Cómo debe de sentirse?%How is he doing?#italics
    Tantos años trabajando en ese sitio...%So many years working on that place... #italics

*[Pensar en Fay%Think about Fay]
~questionId = 28
    Fay... ¿De dónde habrá sacado tanto dinero para ese teclado?%Fay... Where did she get so much money for that keyboard? #italics
    Espero que le siga yendo bien en el futuro. Especialmente después de todo lo que ha pasado.%I hope she continues doing well in the future.Especially after all that happened. #italics

-
~character = "Narrador%Narrator"
~sprite = ""
Continúas mirando fijamente un punto en el techo hasta quedarte dormido.%You continue looking at the point on the ceiling until you fall asleep.
El sonido de las goteras te arropa como tu canción de cuna favorita.%The sound of the water leaks tucks you as your favourite lullaby.

->Day_Two


==Day_Two==

->BedroomMorning
=BedroomMorning
~day = 2
~hour = 0
~background = "bedroom"

~character = "Fay%Fay"
~sprite = "Fay"
¡¿Qué dices?!%What are you saying?!
No no. ¡¿Cómo que ha sido mi culpa?!%No, no. How come it was my fault?!
Por favor, si nos has dejado vendidos ahí atrás.%Please, you left us wide opne back there.
No te estoy echando la culpa, solo te estoy explicando por qué no es MI culpa.%I'm not blaming you. I'm just explaining why it's not MY fault.

~character = "Narrador%Narrator"
~sprite = ""
Una de las ventajas que tiene vivir con Fay es que ahorras mucho dinero en despertadores.%One of the advantages of living with Fay is that you save a lot of money in alarm clocks.
Miras el reloj aún tumbado en la cama, con la cabeza medio hundida en la almohada.%You look at the clock while still lying on bed, with your head sunk in the pillow.
Las 8 en punto.%It's 8 o'clock.
Te levantas de un salto de la cama y, aún con los vaqueros a medio subir, sales corriendo por la puerta del piso.%You jump out of bed and, still with your jeans half up, you run out the door of the apartment.
~music = "Touchpoint"
->Bus

=Bus
~background = "bus"
~character = "Narrador%Narrator"
~sprite = ""

El autobusero toca el claxon dos veces y te pregunta si no bajas hoy en esta parada.%The bus driver honks twice and asks if you don't get out at this stop today.
Cuando levantas la cabeza de tu revista encuentras la cárcel parada frente a ti.%When you lift your head from your magazine you find the jail standing in front of you.
Sus cuatro torres que parecen querer tocar el cielo.%Its four towers seem to want to touch the sky.
Doblas una de las esquinas de la revista antes de levantarte.%You fold one of the corners of the magazine before closing it.
Este sábado hay una audición para teclista en un grupo local.%This Saturday there is an audition for keyboard player in a local group.

*[Dejar propina al autobusero%Tip the bus driver]
~questionId = 29
Dejas un par de monedas sueltas en la ventanilla del conductor.%You drop a couple of loose change in the driver's window.
El hombre sonríe y te abre la puerta deseándote un buen día.%The man smiles and opens the door while wishing you a good day.
*[Bajar del autobús%Get off the bus]
~questionId = 30
Con la cabeza de nuevo enterrada en tu revista casi tropiezas al bajar de las escaleras del autobús.%With your head sunk again on the magazine you almost stumble while coming down the bus stairs.
El conductor suelta una risita contenida antes de cerrar la puerta.%The bus driver chuckles before closing the door.
-
->PrisonReception

=PrisonReception
~background = "reception"
~character = "Luka%Luka"
~sprite = "Luka"
Otra vez tarde. Incluso te has superado.%Late again. You even got a new record.
Hoy han sido cinco minutos completos.%It's been five full minutes today.

~character = "Johan%Johan"
~sprite = "Luka"
Lo siento, tengo que coger el autobús para venir. Había mucho tráfico hoy.%I'm sorry I have to take the bus to come work. There was a lot of traffic today.

~character = "Luka%Luka"
~sprite = "Luka"
Dime, ¿a cuántos robos armados equivalen cinco minutos?%Tell me, how many armed robbery does five minute equal?

~character = "Johan%Johan"
~sprite = "Luka"
*[Esto...¿dos?%Well... ¿two?]
~questionId = 31
~character = "Luka%Luka"
~sprite = "Luka"
¡¿Dos?! Si fuera así me habrían robado hasta los calcetines, chaval.%Two!? If it was like that even my socks would've been stolen, kid.
*[¿Tres? Eso creo, vaya%Three. I think so.]
~questionId = 32
~character = "Luka%Luka"
~sprite = "Luka"
¡¿Tres?! Si fuera así me habrían robado hasta los calcetines, chaval.%Three!? If it was like that even my socks would've been stolen, kid.
*[No demasiado, medio robo quizás%Not too many. Half a robbery maybe.]
~questionId = 33
~character = "Luka%Luka"
~sprite = "Luka"
¿Medio robo no te parece demasiado?%Half a robbery isn't too much for you?
Quizás debería robarte medio almuerzo más tarde.%Maybe I should steal half your meal later.

-
~character = "Luka%Luka"
~sprite = "Luka"
Hemos hecho el reparto de tareas para hoy.%We have done the distribution of tasks today.
Te toca turno de lavandería.%It's your turn to do laundry.

~character = "Johan%Johan"
~sprite = "Luka"
¿Lavandería? No entiendo cómo voy a usar el táser para lavar la ropa.%Laundry? I don't know how I'll use the taser to do the laundry.

~character = "Luka%Luka"
~sprite = "Luka"
Y yo no entiendo cómo puedes llegar tarde todos los días.%And I don't know how you can be late everyday.
Ahora largo, ve al establo a pedir calzoncillos sucios.%Now get out. Go to the barn to ask for dirty underpants.

~character = "Narrador%Narrator"
~sprite = ""
Luka te da la espalda y se marcha con paso firme.%Luka turns his back on you and leaves with a firm step.
Jurarías que puedes ver humo salir de su cabeza.%You'd swear you can see smoke coming out from his head.

->CellCorridor

=CellCorridor
~hour = 1
~character = "Narrador%Narrator"
~sprite = ""
Al llegar al corredor esperas encontrar el mismo alborto que ayer.%When you get to the corridor you expect to find the same rampage as yesterday.
Presos gritandp e improvisando música desafinada.%Prisoners screaming and improvising out of tune music.
Lo que ayer parecía una taberna se ha convertido hoy en un supermercado.%What yesterday looked like a tavern today has turned into a supermarket.
Los presos arrastran sus carritos con ropa sucia hasta llegar a la lavandería.%The inmates drag their carts full of dirty clothes to the laundry.
Kalev está sentado en su celda, mirando a un lado y a otro con la cesta vacía.%Kalev is sitting in his cell, looking back and forth with the basket empty.

->SeeKalevChoice

=SeeKalevChoice
*[Acercarte a Kalev%Get closer to Kalev]
~questionId = 34
~music = "Somber"
~background = "cell"
~character = "Narrador%Narrator"
~sprite = "Kalev"
Kalev te mira fijamente a los ojos e inclina la cabeza hacia un lado sin decir una palabra.%Kalev stares into your eyes and tilts his head to the side without saying a word.

~character = "Johan%Johan"
~sprite = "Kalev"
¿Todo bien por aquí, Kalev?%Everything all right over here, Kalev?

~character = "Narrador%Narrator"
~sprite = "Kalev"
El preso abre los ojos, sorprendido por oirte pronunciar su nombre.%The inmate open his eyes, surprised to hear you pronounce his name.
Niega con la cabeza, indicando que te marches.%He nods indicating you to leave.

~character = "Johan%Johan"
~sprite = "Kalev"
Bueno, si necesitas cualquier cosa estaré por aquí.%Well, if you need anything I'll be around.

->SeeKalevChoice
*[Seguir recorriendo el pasillo%Keep going down the hall]
~questionId = 35
~music = "Touchpoint"
~background = "cellcorridor"
~character = "Narrador%Narrator"
~sprite = ""
Sigues recorriendo el pasillo hasta toparte con Luka apoyado frente a la máquina expendedora.%You keep walking down the hall until you come across Luka leaning in front of the vending machine.
Tiene los brazos cargados de chocolatinas y sujeta un café a duras penas.%His arms are loaded with chocolates and he's hardly holding a coffe.
->VendingMachine

=VendingMachine
~background = "vendingmachine"
~character = "Luka%Luka"
~sprite = "Luka"
¿Qué tal va todo, pipiolo? ¿Te has atragantado ya con algún calcetín?%How's everything going, tyro? Have you already choked on a sock?
~sfx = "Risa"

~character = "Narrador%Narrator"
~sprite = "Luka"
Luka comienza a reírse, lanzando trocitos de chocolate y cacahuete en todas direcciones.%Luka starts laughing, throwing chunks of chocolate and peanut in all directions.

~character = "Johan%Johan"
~sprite = "Luka"
Todo bien, de momento solo me he tragado...%Everything all right. For now i've only swallowed...
~sfx = "Muertepreso_3"
~character = "Narrador%Narrator"
~sprite = ""
Un estruendo seco suena a tu espalda. Luka se sobresalta y lanza café y chocolatinas por los aires.%A heavy blow sounds behind your back. Luka startles and throws coffe and chocolates into the air.
Alguien comienza a gritar entre sonidos de plástico cayendo.%Someone starts yelling between sounds of plastic falling.
Te asalta un olor metálico mientras el grto hace eco por el pasillo.%You're surrounded by a metallic smell whilst the scream echoes through the corridor.

~character = "Luka%Luka"
~sprite = "Luka"
¡Joder!%¡Fuck!
Chaval, mira a ver qué demonios ha pasado por allí, anda.%Kid, go and look what the hell happened over there.
Yo tengo que recoger todo esto.%I gotta clean up all this mess.

~character = "Narrador%Narrator"
~sprite = ""
Luka se agacha y comienza a apilar las chocolatinas de vuelta en sus brazos con la verdadera diligencia de un agente de la ley.%Luka reaches down and starts stacking the chocolates back in his arms with the true diligence of a law enforcement officer.
Te das la vuelta y caminas hasta encontrar la fuente de los gritos.%Yout turn back until you find the source of the screams.
->StanislavVsKalev

=StanislavVsKalev
~background = "cell"
~music = "TheBigDecision"
~character = "Narrador%Narrator"
~sprite = ""
Stanislav se tapa la cara con ambas manos frente a Kalev, que está envuelto con una manta hasta el cuello.%Stanislav covers his face with both hands in front of Kalev, who is wrapped in a blanket up to his neck.
Su ropa está tirada en una cesta de plástico en el suelo, cubierta con algunas gotas de sangre.%His clothes are lying in a plastic basket on the floor, covered with a few drops of blood.

~character = "Johan%Johan"
~sprite = ""
*[¡¿Qué está pasando aquí?!%What's happening over here?!]
~character = "Kalev%Kalev"
~sprite = "Kalev"
...%...

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¿Que si pasa algo? Ese desgraciado me acaba de dar un puñetazo.%That if something's happening? That miserable just punched me.
*[¿Stanislav? ¿Estás bien?%Stanislav? Are you all right?]
~character = "Kalev%Kalev"
~sprite = "Kalev"
...%...

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¿Que si estoy bien? Claro, estoy perfectamente.%Am I all right? Of course. I'm perfectly fine.
Solo me acaba de partir la nariz un maldito neandertal.%It's just that a damn neanderthal just broke my nose.
-

~character = "Johan%Johan"
~sprite = ""
*[Llevar a Stanilav a la enfermería%Take Stanislav to the infirmary]
~questionId = 36
~music = "Quiet"
->HelpStanislav

*[Interrogar a Kalev%Question Kalev]
~questionId = 37
~music = "Somber"
->HelpKalev

=HelpStanislav
~character = "Johan%Johan"
~sprite = ""
¡Luka! ¡Eh, Luka!%Luka! Hey, Luka!
Encárgata de Kalev. Yo voy con Stanislav a la enfermería.%Take care of Kalev. I'm going to the infirmary with Stanislav.

~character = "Narrador%Narrator"
~sprite = ""
Luka llega a la celda con chocolatinas metidas entre los bolsillos.%Luka arrives at the cell with chocolates stuffed into his pockets.

~character = "Luka%Luka"
~sprite = "Luka"
Así me gusta, cadete. ¡Con decisión!%That's how I like it, boy. With decision!
No te preocupes, sé encargarme de esta gente.%Don't worry, I know how to take care of these people.
Te esperan unos días en mi fortaleza de la soledad.%A few days await you in my fortress of solitude.
->Infirmary

=Infirmary
~background = "infirmary"
~character = "Narrador%Narrator"
~sprite = ""
Llegas a la enfermería con Stanislav.%You arrive at the infirmary with Stanislav.
La sangre comienza a brotar entre sus dedos mientras intenta taparse la nariz.%Blood starts to gush between his fingers as he tries to hold his nose.
Los enfermeros le sientan en una camilla y le inclinan la cabeza hacia adelante.%The nurses seat him on a gurney while they lean his head forward.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Gracias por lo de ahí dentro.%Thanks for that
Ese tipo es de lo más raro que hay por aquí.%That guy's one of the weirdest you can find around here.

~character = "Johan%Johan"
~sprite = "Stanislav"
No hay de qué, por eso me pagan. O eso espero.%You're welcome. That's what I get paid for.
Oye, ¿y qué le ha pasado antes?%Hey, what happened back there?

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Los enfermeros aprietan un pañueño contra la nariz de Stanislav hasta extraer un pequeño coágulo.%The nurses press a handkerchief against Stanislav's nose until a small clot is removed.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Estaba terminando de recoger mi ropa cuando miré hacia su celda.%I was finishing picking up my clothes when I looked towards his cell.
Estaba tranquilo, dejando la camiseta en su cesta.%He was calm, leaving the shirt in his basket.
En cuanto vio que le estaba mirando se tapó con una manta y me dio un puñetazo.%As soon as he realised that I was looking at him, he covered himself with a blanket and punched me.

~character = "Johan%Johan"
~sprite = "Stanislav"
¿Te ha pegado por verle sin camiseta?Did he hit you for seeing him shirtless?

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Stanislav frunce el ceño cuando los enfermeros le insertan unos papeles húmedos por la nariz.%Stanislav frowns as the nurses insert some wet papers into his nose.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Eso creo.%I think so.
Nunca deja que nadie le vea desnudo. Ha pasado semanas enteras sin ducharse por no poder ir él solo.%He never lets anyone see him naked. He spent whole weeks without showering just because he couldn't do it alone.
No entiendo tanto alboroto por unos tatuajes. Ni que fuera el primero por aquí.%I don't understand all the fuss over some tattoos. He's not even the first one to wear those around here.

~character = "Johan%Johan"
~sprite = "Stanislav"
¿Qué tipo de tatuajes? ¿Alguna fecha de aniversario de una ex?%What kind of tattoos? Any anniversary date of an ex?

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Ojalá, pero no.%I wish, but no.
Tiene un montón de arañas en el brazo.%He has a lot of spiders on his arm.
Aléjate de ese tipo. He tenido encuentros con gente de ese... bueno, de ese mundillo.%Stay away from that guy. I've had some encounters with people from that... well, from that world.
Nunca sale bien. Demasaida sangre.%It never goes well. Too much blood.

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Stanislav comienza a llorar cuando lso enfermeros le sacan los pañuelos enrojecidos y le insertan unos nuevos.%Stanislav starts crying when the nurses remove the reddened tissues and insert new ones.

~character = "Johan%Johan"
~sprite = "Stanislav"
...%...

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¿Te ha comido la lengua el gato, eh?%Cat got your tongue, huh?
No te preocupes, yo estoy limpio. Jamás contrataría a esa gente.%Don't worry, I'm clean. I'd never hire that people.
Y dime, ¿cómo alguien tan... cándido ha terminado aquí?%And tell me, how come someone so... naive ended up here?

~character = "Johan%Johan"
~sprite = "Stanislav"
Me lo recomendó una antigua compañera de trabajo. Es algo temporal, pero se supone que pagan bien.%Recommended by a former co-worker. It's a temporary thing, but it's supposed to be payed well.
He tenido bastante suerte. Es mucho más divertido que freír patatas.%I've been lucky. It's way more entertaining than frying chips.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¿Suerte? Je, sí, bueno...%Lucky? Hah, yeah, well...
Al menos tú llevas ese otro uniforme y tienes la nariz intacta.%At least you're wearing that other uniforme and your nose is still intact.
¿Y qué piensas hacer después? ¿Quitarle el puesto de sargento a Luka?%What are you planning to do after that? Take Luka's sargeant job away from him?

~character = "Johan%Johan"
~sprite = "Stanislav"
No no, Luka es único en su especie. Nadie podría sustituirle.%No no, Luka's one of a kind. No one could replace him.
Quiero ser músico.%want to be a musician.
Es un mundo difícil, y más con poco dinero, pero voy a darlo todo por intentarlo.%It's a difficult world, and even more with little money. But I'll give it all to try it.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Anda, ¿quién lo iba a decir? La música es tan bonita como exigente.%Wows, who would've said? Music is as beautiful as it is demanding.
De hecho, tuve el placer de conocer a Yuri Pletinov hace un par de años.%In fact, I had the pleasure of meeting Yuri Pletniov a couple of years ago.
Gran tipo, mejor compositor.%Great guy, better composer.
Aunque peor bebedor de lo que dicen.%Although a worse drinker than they say.

~character = "Johan%Johan"
~sprite = "Stanislav"
¡¿En serio?!%Really?!
Adoro a Yuri, he aprendido un montón de sus libros.%I love Yuri. I've learnt a lot from his books.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Acabo de tener una gran idea, chico.%I just had a great idea, kid.
¿Qué te parece si te lo presento? Me debe algunos favores.%What if I present him to you? He owes me a few favors.

~character = "Johan%Johan"
~sprite = "Stanislav"
¿Puedes hacer eso? Sería genial, Stanislav.%Can you do that? That'd be great, Stanislav.
Tengo varios CDs que me gustaría enseñarle. No sé cómo podría recompensártelo.%I have som CD's that I'd like to show him. I don't know how I could compensate you.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Bueno, creo que yo sí lo sé.%Well, I think I do.
Necesito mandar una carta a un ex amigo y resulta complicado desde aquí dentro.%I need to send a letter from a former friend and it is difficult from in here.
Más aún con la nariz partida.%Even more so with my nose broken.
¿Podrías ayudarme?%Could you help me?

~character = "Johan%Johan"
~sprite = "Stanislav"
*[Claro, la mandaré en cuanto llegue a casa%Sure. I'll send it as soon as I get home.]
~questionId = 38
~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Genial Johan.%Great, Johan.
Si todo sale bien, la siguiente carta que mandes será para Yuri.%If everything goes well, the next letter you'll send will be for Yuri.
*[¿Quién es ese amigo?%Who's that friend?]
~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
~questionId = 39
Ex amigo.%Former friend.
Digamos que es la razón por la que estoy en esta... situación tan curiosa.%Let's say he's the reason why I'm in... such a curious situation.
Ya te contaré esa historia otro día.%I'll tell you that story another day.
Dime, ¿la enviarás entonces?%Tell me, will you send it then?

~character = "Johan %Johan"
~sprite = "Stanislav"
Claro, la mandaré en cuanto llegue a casa.%Sure. I'll send it as soon as I get home.

-
~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Stanislav saca un papel de dentro de su pantalón, aunque no quieres saber de dónde en concreto.%Stanislav pulls out a piece of paper from inside his pants, although you don't want to know where it came from.
Lo restriegas con la manga antes de guardarlo en el bolsillo.%You scrub it with your sleeve before putting it in your pocket.
Un par de guardias irrumpen en la enfermería para llevar a Stanislav de vuelta a su celda.%A pair of guards break into the infirmary to take Stanislav back to his cell.
Le agarran por los hombros y comienzan a esposarle hasta dejarle rojas las muñecas.%They grab him by the shoulders and begin to handcuff him until his wrists turn red.
Stanislav te guiña el ojo antes de ser arrastrado hasta su celda.%Stanislav winks at you before being dragged into his cell.
Decides ir a ver qué tal le ha ido a Luka.%You decide to check how it went for Luka.
Cuando termina de sacar nuevas chocolatinas de la máquina expendedora camináis juntos hacia la cantina.%You walk together to the canteen when he finishes taking out new chocolets from the vending machine.

->Canteen

=HelpKalev
~background = "cell"
~character = "Johan%Johan"
~sprite = ""
¡Luka! ¡Eh, Luka!%Luka! Hey, Luka!
Lleva a Stanislav a la enfermería.%Take Stanislav to the inirmary.
Yo me encargo de Kalev.%I'll take care of Kalev.

~character = "Narrador%Narrator"
~sprite = ""
Luka llega a la celda con chocolatinas derretidas metidas en los bolsillos.%Luka arrives at the cell with chocolates stuffed into his pockets.

~character = "Luka%Luka"
~sprite = "Luka"
Así me gusta, cadete. ¡Con decisión!%That's how I like it, boy. With decision!
Avisaré a otros guardias para que te echen un cable.%I'll call the other guards so that they give you a hand.
Aguanta a ese podiosero en su sitio, ¿quieres?%Keep that beggar in his place, will you?
Yo me llevo al hocico roto a la enfermería.%I'll take broken-snout to the infirmary.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¡¿Hocico roto?!%Broken-snout?!

~character = "Luka%Luka"
~sprite = "Luka"
Andando, cerdito. Vamos al veterinario.%Come on, piggy. Let's go to the vet.

~character = "Narrador%Narrator"
~sprite = ""
Luka se lleva a Stanislav hacia la enfermería.%Luka leads Stanislav to the infirmary.

~character = "Johan%Johan"
~sprite = "Kalev"
Bueno, por fin solos. Hacerse el poli malo es difícil.%Well, finally alone. Playing the bad cop is hard.
Dime, ¿puede saberse por qué le has partido la nariz a Stanislav?%Tell me, why would you break Stanislav's nose?

~character = "Kalev%Kalev"
~sprite = "Kalev"
...%...

~character = "Narrador%Narrator"
~sprite = "Kalev"
Kalev te mantiene la mirada sin pestañear.%Kalev stares at you without blinking.
La camiseta se le hincha al ritmo calmado de su repsiración.%His shirt swells to the calm rythm of his breathing.

~character = "Johan%Johan"
~sprite = "Kalev"
Mira... Sé que no te gusta hablar, pero no puedo ayudarte si no cooperas.%Look... I know you don't like talking. But I can't help you if you don't cooperate.
Quiero que esto salga lo mejor posible para ambos.%I want this to end up the best way possible for both of you.
¿Por qué le has pegado?%Why did you hit him?

~character = "Narrador%Narrator"
~sprite = "Kalev"
Kalev baja la mirada al suelo, con los ojos algo enrojecidos.%Kalev looks down at the ground, with his eyes a bit reddened.

~character = "Kalev%Kalev"
~sprite = "Kalev"
Ha visto cosas que nadie debería ver aquí dentro.%He's seen things no one should see in here.

~character = "Johan%Johan"
~sprite = ""
Bueno, es un primer paso...%Well, it's a first step... #italics

~character = "Johan%Johan"
~sprite = "Kalev"
Eso no me dice demasiado, Kalev. ¿Qué es lo que ha visto?%That doesn't tell me too much, Kalev. What did he see?

~character = "Narrador%Narrator"
~sprite = "Kalev"
Kalev juguetea con su camiseta, retorciéndose las mangas en la muñeca.%Kalev fiddles with his shirt, twisting the sleeves at his wrist.
Se acerca un poco a ti y comienza a susurrar.%He comes a bit closer to you and starts whispering.

~character = "Kalev%Kalev"
~sprite = "Kalev"
Ha visto mis tatuajes.%He's seen my tattoos.
La araña.%The spider.
La estrella.%The star.
El alambre de espino.%The barbed wire.
Todos. Los ha visto todos, joder.%All of them. He's seen all of them, damn it.

~character = "Johan%Johan"
~sprite = "Kalev"
Oh vaya...%Oh, wow...

~character = "Kalev%Kalev"
~sprite = "Kalev"
No puedo dejar que nadie lo sepa.%I can't let anyone know.
Ellos... No saben que me he escapado.%They... don't know i've escaped.
Tenía que dejarlo, por mi bien, por el de..had to quit. For my sake. For the sake of....

~character = "Narrador%Narrator"
~sprite = "Kalev"
La voz de Kalev comienza a quebrarse.%Kalev's voice starts to break.

~character = "Kalev%Kalev"
~sprite = "Kalev"
Tenía que dejarlo.%I had to quit.

~character = "Johan%Johan"
~sprite = "Kalev"
No te preocupes, aquí dentro estás a salvo.%Don't worry. You're safe in here.
Los guardias... Bueno, yo te protegeré. Pero no puedes montar estas escenas.%The guards... Well, I'll protect you. But you can't make this kind of scenes.
¿No has pensado que llamarás más la atención?%Haven't you thought you'll draw even more attention?

~character = "Kalev%Kalev"
~sprite = "Kalev"
Sí. Sí, tienes razón.%Yeah. Yes, You're right.
No supe como reaccionar.%didn't know how to react.
Nadie podía saberlo.%Nobody can know.
Nadie.%No one.

~character = "Johan%Johan"
~sprite = "Kalev"
Nadie que te quiera hacer daño, Kalev.%Nobody who wants to hurt you, Kalev.

~character = "Kalev%Kalev"
~sprite = "Kalev"
No es a mí a quien quieren hacer daño. ¿Lo entiendes?%It's not me who they want to hurt. Do you understand?

~character = "Johan%Johan"
~sprite = "Kalev"
Ya... Empieza por no volver a hacer esto. Veré en qué más puedo ayudarte.%Yeah... Start by not doing this again. I'll see how else I can help you.

~character = "Kalev%Kalev"
~sprite = "Kalev"
Hay algo más que puedes hacer. O eso creo, no quiero pedirte demasiado.%There's something else you can do. Or so I think. I don't want to ask you for too much.
Ni meterte en problemas.%Nor get you in trouble.

~character = "Johan%Johan"
~sprite = "Kalev"
*[¿De qué se trata?%What's it about?]
-
~character = "Narrador%Narrator"
~sprite = "Kalev"
Kalev mira a un lado y a otro del pasillo antes de levantar el colchón.%Kalev looks up and down the corridor before lifting his mattress.
Saca un sobre mal cerrado, a punto de romperse.%He takes out a poorly sealed envelope, about to rip.

~character = "Kalev%Kalev"
~sprite = "Kalev"
¿Podrías... podrías enviar esto a una dirección?%Could you... could you send this to an address?
Yo no puedo hacerlo desde aquí dentro.%I can't do it from in here.

~character = "Johan%Johan"
~sprite = "Kalev"
¿Qué hay en el sobre?%What's in the envelope?

~character = "Narrador%Narrator"
~sprite = "Kalev"
Kalev abre el sobre durante unos pocos segundos. Está repleto de billetes.%Kalev opens the envelope for a few seconds. It's full of notes.
No puedes contarlo todo, pero hay al menos 20.000 rublos.%You can't count all of it, but there's at least 20.000 rubles.

~character = "Kalev%Kalev"
~sprite = "Kalev"
Llevo ahorrando esto desde que entré en prisión.%I've been saving this since I entered prison.
No es demasiado, pero espero que mi... la persona que va a recibir el sobre sepa usarlo bien.%It's not too much, but I hope that my... the person is going to recieves the envelope knows how to use it well.

~character = "Johan%Johan"
~sprite = "Kalev"
*[Está bien, dame la dirección%Ok, give me the address]
-

~character = "Narrador%Narrator"
~sprite = "Kalev"
Le dejas un boli y una hoja de tu libreta a Kalev.%You lend a pen and a sheet of your notebook to Kalev.
El preso escribe la dirección con renglones temblorosos.%The prisoner writes the addres with shaky lines.

~character = "Kalev%Kalev"
~sprite = "Kalev"
Gracias.%Thank you.
Mucha gracias.%Thank you so much.

~character = "Narrador%Narrator"
~sprite = "Kalev"
Kalev se acerca más y te da un abrazo a través de los barrotes.%Kalev comes closer and hugs you through the bars.
El preso comienza a temblar y le escuchas llorar sobre tu hombro.%The inmate starts shaking and you hear him crying over your shoulder.

~character = "Johan%Johan"
~sprite = "Kalev"
No hay de qué, estoy aquí para ayudaros.%You're welcome. I'm here to help you.
Intenta no meterte en problemas con el resto de guardias ahora.%Try not to get in trouble with the other guards now.

~character = "Narrador%Narrator"
~sprite = ""
Tres guardias irrumpen en la celda de Kalev. Le cogen de los hombros y se lo llevan a rastras.%Three guards break into Kalev's cell. They grab him by the shoulders and drag him away.
Kalev te sonría mientras le llevan por el pasillo hasta la sala de aislamiento.%Kalev smiles as they drag him down the corridor to the isolation room.
Te acercas a Luka, que está sacando una nueva tanda de chocolatinas de la máquina expendedora.%You walk over Luka, who is pulling a new stack of chocolates from the vending machine.
Juntos camináis hasta la cantina.%You walk together to the canteen.

->Canteen


=Canteen
~background = "canteen"
~music = "Touchpoint"
~hour = 2
~sfx = "Gente de fondo hablando"
~character = "Luka%Luka"
~sprite = "Luka"
¡Hola, chaval!%Hello, kid!

~character = "Narrador%Narrator"
~sprite = "Luka"
Luka te da una palmada en la espalda que resuena por toda la cantina.%Luka gives you slap in the back that echoes throughtout the whole canteen.

~character = "Luka%Luka"
~sprite = "Luka"
Estoy orgulloso de cómo manejaste la situación.%I'm proud of how you handled the situation.

{HelpStanislav} ->CanteenStanislav
{HelpKalev} -> CanteenKalev

=CanteenStanislav
~character = "Luka%Luka"
~sprite = "Luka"
¿Qué tal está el viejo de Stanislav?%How's old Stanislav doing?

~character = "Johan%Johan"
~sprite = "Luka"
Le han arreglado la nariz lo mejor que han podido.%They've fixed his nose the best they could.
Pasarán unos días hasta que le deje de doler.%It will take a few days until it stops hurting, though.

~character = "Luka%Luka"
~sprite = "Luka"
Eso es bueno, eso es bueno.%That's good, that's good.
Y yo que esperaba que se la sustituyeran por la de un cerdo.%I was hoping they would replace it with a pig snout.

~character = "Johan%Johan"
~sprite = "Luka"
Ya...%Yeah...
¿Y qué hay de Kalev? ¿Qué le va a pasar?%What about Kalev? What's going to happen to him?

~character = "Luka%Luka"
~sprite = "Luka"
Le espera un día en la fortaleza de la soledad al fondo del pasillo.%A day at the solitude fortress at the end of the corridor awaits him.
Eso le ablandará un poco.%That will soften him up a bit.
Tendrías que haber visto cómo lloraba.%You should've seen how he cried.

~character = "Narrador%Narrator"
~sprite = ""
Apartas la mirada de Luka tras su comentario.%You look away from Luka after his comment.
La comida de la bandeja no tiene mejor pinta, pero hundes la cuchara en el puré amarillento.%The food on the tray doesn't look any better, but you sink your spoon into the yelowish mash.

~character = "Luka%Luka"
~sprite = "Luka"
¿Todo bien, pipiolo?%Everything all right, tyro?
Nunca había visto a alguien nuevo comerse esta basura tan rápido.%'ve never seen anyone new eat that garbage so fast.

~character = "Johan%Johan"
~sprite = "Luka"
*[Espero que aguanta ahí dentro%I hope he holds himself together in there.]
*[Debe de ser duro estar ahí solo%It must be tough being there alone.]
-
~character = "Luka%Luka"
~sprite = "Luka"
¡Bah, no digas tonterías!%Bah, don't talk nonsense!
Ese puto mafioso tiene lo que se merece.%That fucking gangster has what he deserves.

~character = "Narrador%Narrator"
~sprite = ""
Terminas tu bandeja, dejando tan solo unas migajas de puré de patatas.%You finish your tray of food, leaving only a few crumbs of mashed potatoes.

~character = "Johan%Johan"
~sprite = "Luka"
Tengo que irme a casa ya.%I gotta go home now.
El último autobús está a punto de salir.%The last bus is about to leave.

->BusStanislav

=CanteenKalev
~character = "Luka%Luka"
~sprite = "Luka"
Le has echado agallas para quedarte solito con el armario ese, ¿eh?%You had guts to stay alone with that big guy, huh?
Los tienes cuadraos, novato.%You got some balls, rookie.

~character = "Johan%Johan"
~sprite = "Luka"
La verdad es que impone bastante. Lo verdaderamente difícil ha sido hacerle hablar.%He sure was menacing. The actual difficult thing was making him talk.
¿Qué tal está Stanislav?%How's Stanislav doing?

~character = "Luka%Luka"
~sprite = "Luka"
Mejor. Le llevé al veterinario y ya le han curado el hocico.%He's better. I took him to the vet and they already healed his snout.
A ver si así aprende a olisquear su propia mierda.%Let's see if that makes him learn to sniff his own shit.

~character = "Johan%Johan"
~sprite = "Luka"
Ah vaya... Me... Me alegro de que esté mejor.%Ah, well... I... I'm glad he's doing ok.

~character = "Narrador%Narrator"
~sprite = ""
Apartas la mirada de Luka tras su comentario.%You look away from Luka after his comment.
Miras tu comida, pero el puré marrón no resulta especialmente apetecible.%You look at your food. But the brown puree is not particulary appetizing.
Ver cómo Luka lo devora tampoco ayuda.%Watching Luka devouring it doesn't help either.

~character = "Luka%Luka"
~sprite = "Luka"
Bueno, ¿qué? ¿No tienes hambre? ¡Que tienes que crecer, tirillas!%Well, what? You're not hungry? You have to grow up, skinny boy!

~character = "Johan%Johan"
~sprite = "Luka"
*[He perdido el apetito%I lost my appetite]
Lo de Stanislav me ha quitado un poco el apetito%That thing with Stanislav took my appetite
*[Nada... %It's nothing...]
Nada... simplemente pensaba en Stanislav. Espero que se recupere%It's nothing... I was just thinking about Stanislav. I hope he recovers.

-
~character = "Luka%Luka"
~sprite = "Luka"
Buah, pues serás el único que se preocupa por el tipejo ese.%Bah, you may be the only one who cares about that scumbag.
Es el parias de este sitio.%He's the pariah of this place.

~character = "Narrador%Narrator"
~sprite = ""
Comienzas a comer. La cuchara doblada será una mejor compañera de conversación.%You start eating. The bent spoon will be a better conversation partner.

~character = "Johan%Johan"
~sprite = "Luka"
Tengo que irme a casa ya.%I gotta go home now.
El último autobús está a punto de salir.%The last bus is about to leave.

->BusKalev

=BusStanislav
~background = "bus"
~character = "Narrador%Narrator"
~sprite = ""
Pasas todo el trayecto con tu mochila posada en las piernas, rodeándola con los brazos.%You spend the whole journey with your backpack perched on your legs, encircling it with your arms.
No puedes parar de abrirl y cerrarla para asegurarte de que la carta de Stanislav sigue dentro.%You can't stop opening and closing the backpack to check that Stanislav's letter is still in there.
Te bajas en tu parada, sacas la carta de la mochila y compruebas que todo está en orden.%You get off at your stop, take the letter out of your backpack and check everything's in order.
Terminas de pegar el sello, que lleva impreso el un casco obrero.%You finish gluing the stamp, which has a worker's helmet printed of it.
Metes la carta en el buzón antes de volver a casa.%You put the letter in the mailbox before heading home.

->Flat

=BusKalev
~background = "bus"
~character = "Narrador%Narrator"
~sprite = ""
Pasas todo el trayecto con tu mochila posada en las piernas, rodeándola con los brazos.%You spend the whole journey with your backpack perched on your legs encircling it with your arms.
No puedes parar de abrirl y cerrarla para asegurarte de que la carta de Kalev sigue dentro.%You can't stop opening and closing the backpack to check that Stanislav's letter is still in there.
Te bajas en tu parada, sacas la carta de la mochila y compruebas que todo está en orden.%You get off at your stop, take the letter out of your backpack and check everything's in order.
Te llama la atención el sello, que lleva impresa la bandera de Estonia.%The stamp catches your attention. It has Estonia's flag printed on it.
Insertas la carta en el primer buzón que encuentras antes de volver a casa.%You insert the letter in the first mailbox you find before heading home.

->Flat

=Flat
~music = "Clouds"
~background = "apartmententrance"
~character = "Narrador%Narrator"
~sprite = ""
Entras en tu piso y dejas caer el abrigo al suelo junto a la mochila.%You walk into your flat and drop your coat on the floor next to your backpack.
Te sientras frente al teclado y das un largo suspiro.%You sit in front of the piano and take a long sigh.

~character = "Fay%Fay"
~sprite = "Fay"
¡Pero vamos a ver! ¡¿Dónde está el support?!%What the heck?! Where's the support?!

~character = "Johan%Johan"
~sprite = ""
Va a ser una noche larga...%It will be a long night...#italics

~character = "Narrador%Narrator"
~sprite = ""
Comienzas a hacer ajustes con el teclado y, con paso aletargado, empiezas a tocar.%You start making adjustments on the keyboard and begin to play sluggishly.

TODO Añadir las canciones que puedes tocar
*[Canción 1%]
~music = "Clouds"
*[Canción 2%]
~music = "Clouds"

-
~character = "Narrador%Narrator"
~sprite = ""
Ves unos mechones rubios asomarse por el marco de la puerta.%You see some blonde locks of hair peeking out of the door frame.
Miras a Fay a los ojos y das una cabezada contra el teclado.%You look Fay in the eye and drowse over the keyboard.

~character = "Fay%Fay"
~sprite = "Fay"
Uff.%Yikes.
¿Día duro en el trabajo?%Hard day at work?

~character = "Narrador%Narrator"
~sprite = "Fay"
Asientes despacio, arrastrando las bolsas de los ojos con cada movimiento.%You nod slowly, dragging your eye bags with every movement.

~character = "Johan%Johan"
~sprite = "Fay"
Ha habido una pelea entre dos presos.%There has been a fight between two prisoners.
He tenido que intervernir.%I had to intervene.

~character = "Fay%Fay"
~sprite = "Fay"
Uy qué valiente. ¿Cuántos porrazos has tenido que darles?%Wow, how brave of you. How many blows did you had to give them?
Con esos brazos seguro que solo has necesitado medio golpe.%With those arms you probably just needed half a blow.
Dos como mucho.%Two at most.

~character = "Narrador%Narrator"
~sprite = "Fay"
Intentas sonreír, pero solo consigues dar otra cabezada sobre el teclado.%You try to smile, but only manage to drowse again over the keyboard.

~character = "Fay%Fay"
~sprite = "Fay"
Creo que deberías irte a dormir.%I think you should go to sleep.
Un teclado tan caro no merece estos cabezazos.%A keyboard so expensive doesn't deserve this treatment.

~character = "Narrador%Narrator"
~sprite = "Fay"
*[Irte a dormir%Go to sleep]
~questionId = 40
Te levantas del teclado y arrastras los pies hasta llegar a tu habitación.%You get up from the keyboard and drag your feet until you reach your room.
*[Despedirte de Fay%Say goodbye to Fay]
~questionId = 41
Apoyas la mano en el hombro de Fay y le vuelves a dar las gracias por el regalo antes de irte a dormir.%You put your hand on Fay's shoulder and thank her again for the gift before going to sleep.

-
->BedroomNight

=BedroomNight
~background = "bedroom"
~character = "Narrador%Narrator"
~sprite = ""
Caes rendido en la cama sin siquiera quitarte el uniforme.%You fall into a deep slumber before even taking off your uniform.

->Day_Three


==Day_Three==
~day = 3
~hour = 0

->BedroomMorning

=BedroomMorning
~background = "bedroom"
~character = "Narrador%Narrator"
~sprite = ""
Una voz robótica grita desde tu móvil. Las 6 en punto.%A robotic voice shouts from your mobile. It's 6 o'clock.
Te levantas de la cama, con el uniforme ya puesto de anoche.%You get up from bed, with the uniform already on since last night.

~background = "apartmententrance"
Andas despacio por el pasillo, tratando de no despertar Fay, que ronca en su habitación.%You walk slowly through the corridor, trying not to wake up Fay. She's snoring in her room.
Cages un sándwich antes de salir de casa.%You take a sandwich before leaving home.
~music = "Touchpoint"
->PrisonEntrance

=PrisonEntrance
~background = "reception"
~character = "Narrador%Narrator"
~sprite = ""

Llegas a la cárcel con el sol apenas asomando por el horizonte.%You arrive at the prison with the sun barely peeking over the horizon.
Saludas al recepcionista bajándote la gorra y te drigiges al corredor de los presos.%You greet the recepcionist by lowering your cap and head to the prisoners' corridor.

->ElectricChair

=ElectricChair
~background = "closeddoor"
~character = "Narrador%Narrator"
~sprite = ""
~music = "Horror13"
~sfx = "Zumbido"
En tu camino al corredor de los presos te topas otra vez con la puerta cerrada con tres cerrojos y una llave.%On your way of the prisoners' corridor you run again into the closed door with three locks and a key.
EL mismo zumbido monótono suena al otro lado. Te acercas poco a poco hasta pegar la oreja.%The same monotonous whirring sounds on the other side. You approach slowly until your ear touches the door.
Un escalofrío recorre tu espalda. Debe de ser cosa del frío metal de la puerta.%A chill runs down your spine. It must be the cold metal of the door.
Continuas andando hacia el corredor de los presos.You continue walking towards the corridor of the prisoners.
Miras de vez en cuando a tu espalda, a la puerta cerrada con tres cerrojos y una llave.%You look back at the closed door behind your back from time to time.
~music = "Touchpoint"
->CellCorridorMorning

=CellCorridorMorning
~background = "cellcorridor"
~sfx = "Pasos"
~character = "Narrador%Narrator"
~sprite = ""
Las luces del corredor parpadean al ritmo de tus pasos.%The lights in the corridor flicker to the rythm of your steps.
El golpe de tus botas hace eco por las paredes de cemento.%The thump of your boots echoes off the concrete walls.

{Day_Two.HelpKalev} ->CellCorridorMorningKalev
{Day_Two.HelpStanislav} ->CellCorridorMorningStanislav

=CellCorridorMorningKalev
~background = "cell"
~character = "Narrador%Narrator"
~music = "Somber"
~sprite = ""
No hay rastro de Kalev en su celda.%There's no sign of Kalev in his cell.
EL colchón tiene una raja y el relleno está desperdigado por el suelo.%The mattres has a slit and the padding is scattered on the floor.

*[Ir a la celda de aislamiento%Go to the isolation cell.]

~background = "heavydoor"
~character = "Narrador%Narrator"
~sprite = ""
Caminas hacia el final del pasillo hasta acercarte a las gruesas puertas de acero.%You walk towards the end of the corridor until getting closer to the thick steel doors.
Escuchas los susurros de un sollozo escapar entre las bisagras y tornillos.%You hear sobbing whispers escaping through the hinges and screws.

~character = "Johan%Johan"
~sprite = ""
¿Kalev? ¿Kalev, estás ahí?%Kalev? Kalev, are you in there?

~character = "Narrador%Narrator"
~sprite = ""
Escuchas pasos arrastrarse hasta llegar al otro lado de la puerta.%You hear steps draggin until reaching the other side of the door.

~character = "Kalev%Kalev"
~sprite = "Kalev"
¿Johan?%Johan?

~character = "Johan%Johan"
~sprite = "Kalev"
Sí, soy yo. Podemos hablar. No hay nadie más aquí.%Yes, it's me. We can talk. There's nobody else here.
He enviado la carta.%I sent the letter.

~character = "Kalev%Kalev"
~sprite = "Kalev"
Gracias chico...%Thank you kid...

~character = "Narrador%Narrator"
~sprite = "Kalev"
La voz de Kalev comienza a quebrarse.%Kalev's voice starts breaking.

~character = "Kalev%Kalev"
~sprite = "Kalev"
Te debo...%I owe you...
Te debo una.%I owe you one.

~character = "Johan%Johan"
~sprite = "Kalev"
Aguanta ahí dentro, ¿quieres? Te soltarán pronto, seguro.%Hold on in there, will you? They'll get you out soon for sure.
Tengo que marcharme a empezar mi ronda. Nos vemos, Kalev.%I gotta go start my shift. See you, Kalev.

~character = "Narrador%Narrator"
~sprite = ""
Kalev vuelve a arrastrar los pies hasta el fondo de la celda.%Kalev drags his feet back to the bottom of the cell.
Vuelves a escuchar un sollozo escapar por la puerta mientras te alejas.%You hear another sob escape through the door as you walk away.
->VendingMachine

=CellCorridorMorningStanislav
~background = "cell"
~music = "Quiet"
~character = "Narrador%Narrator"
~sprite = ""
Stanislav está sentado sobre su cama leyendo un pequeño libro con la espina desgastada.%Stanislav's sitting in his bed, reading a small book with a worn out spine.
Cuando te acercas lo cierra de golpe y lo deja sobre las sábanas.%When you get closer he closes it and leaves it on the sheets.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¡Johan! Qué agradable visita.%Johan! What a nice surprise.
Dime, ¿qué tal fue el encargo?%Tell me, how went the assignment?

~character = "Johan%Johanr"
~sprite = "Stanislav"
Está hecho. Espero que salga todo bien.%It's done. I hope everything goes well.
Sea lo que sea.%Whatever it is.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Yo no tendría muchas esperanzas.%I wouldn't have much hope.
Pero bueno, incluso un reloj roto acierta dos veces al día, ¿no?%But hey, even a broken clock is right twice a day, right?

~character = "Narrador%Narrator"
~sprite = ""
Stanislav se despide de ti y vuelve a sentarse sobre la cama.%Stanislav says goodbye and sits on the bed again.
Espera hasta que te marches para volver a abrir su libro.%He waits until you leave to open his book.

->VendingMachine

=VendingMachine
~music = "Touchpoint"
~background = "cellcorridor"
~character = "Narrador%Narrator"
~sprite = ""
Mientras recorres el corredor de los presos escuchas un golpe venir de la máquina expendedora.%As you walk through the corridor you hear a strike coming from the vending machine.

~character = "Luka%Luka"
~sprite = ""
¡Maldito cacharro!%Damn junk!

~background = "vendingmachine"
~character = "Narrador%Narrator"
~sprite = "Luka"
Luka sigue dando patadas contra la máquina expendedora hasta que empieza a escupir chocolatinas.%Luka continues kicking the vending machine until it starts spitting chocolates.
Te acercas a Luka y le das dos golpecitos en la espalda en forma de saludo.%You get closer to Luka and hit him twice in the back as a greeting.

~character = "Luka%Luka"
~sprite = "Luka"
Buenos días, cadete. Aprendiendo a ser puntual, ¿eh?%Good morning, boy. Learning to be on time, huh?

~character = "Narrador%Narrator"
~sprite = ""
Sonríes y te encojes de hombros.%You smile and shrug.

~character = "Johan%Johan"
~sprite = "Luka"
Quizás hasta puntual de más.%Maybe even too on time.
He llegado al menos dos robos armados pronto.%I must be at least two armed robberies early.

~sfx = "Risa"
~character = "Luka%Luka"
~sprite = "Luka"
Luka comienza a reírse mientras engulle dos chocolatinas a la vez.%Luka starts laughing as he swallows two chocolates at the same time.

{Day_Two.HelpKalev} ->VendingMachineKalev
{Day_Two.HelpStanislav} ->VendingMachineStanislav

=VendingMachineKalev
~character = "Luka%Luka"
~sprite = "Luka"
Hoy te toca vigilar el patio.%It's your turn to watch the yard.
Igual hasta puedes sacar un rato para usar el gimnasio y mejorar esos bracitos.%Maybe you could even use some time to go to the gym and pump those thin arms of yours.
->VendingMachineEnd

=VendingMachineStanislav
~character = "Luka%Luka"
~sprite = "Luka"
Hoy te toca vigilar la sala de recreo.%It's your turn to watch the break room.
No te acomodes demasiado en el sofá. No quiero que te crezca más la panza.%Don't get too much comfortable in the sofa. I don't want your belly to grow bigger.
->VendingMachineEnd

=VendingMachineEnd
~character = "Luka%Luka"
~sprite = "Luka"
Nos vemos a la hora de cenar en la cantina.%See you for dinner in the canteen.
Buena suerte, cadete.%Good luck boy.

~character = "Narrador%Narrator"
~sprite = ""
Luka te da una palmada en la espalda antes de marcharse hacia la sala de guardias.%Luka gives you a hit in the back before leaving to the armory.

~hour = 1

{Day_Two.HelpKalev} ->CellCorridorKalev1
{Day_Two.HelpStanislav} ->CellCorridorStanislav1

=CellCorridorKalev1
~background = "heavydoor"
~character = "Narrador%Narrator"
~sprite = ""
Antes de ir hacia el patio vuelves a las celdas de aislamiento.%Before going to the yard you go back to the isolation cell.
Das un golpe en la puerta hasta que Kalev vuelve a levantarse.%You knock on the door until Kalev gets up again.

~character = "Johan%Johan"
~sprite = "Kalev"
Soy yo, Johan. Me toca vigilar el patio hoy, creo que no podré pasarme más tarde.%It's me, Johan. It's my turn to watch the yard today. I won't be coming here later.
¿Va todo bien?%Everything going all right?

~character = "Kalev%Kalev"
~sprite = "Kalev"
Bueno... Necesito una cosa.%Well... I need something.
¿Podrías pasarte por mi celda y traérmela?%Could you stop by my cell and bring it to me?

~character = "Johan%Johan"
~sprite = "Kalev"
*[¿Qué necesitas?%What do you need?]
*[¿De qué se trata?%What is it?]

-
~character = "Kalev%Kalev"
~sprite = "Kalev"
Una foto.%A photograph.
Es muy importante para mí.%It's very important to me. 
Nunca me separo de ella, pero no me dejaron recogerla antes de que me trajeran aquí.%I never part without it, but I couldn't take it before they locked me here.
Busca dentro de mi almohada. No debería costar encontrarla.%Look inside my pillow. It shouldn't be hard to find.


~character = "Johan%Johan"
~sprite = "Kalev"
Me pasaré antes de salir al patio, pero no sé si te la podré traer hoy.%I'll stop by before going to the yard. But I don't know if I'll be able to bring it to you today.
Esto se llenará de guardias en cualquier momento.%This will be full of guards from one moment to another.

~character = "Kalev%Kalev"
~sprite = "Kalev"
No importa.%It's ok.
No sé cuánto tiempo estaré aquí dentro, pero necesito esa foto cuanto antes.%I don't know how many time I'll be in here. But I need it as soon as posible.
Gracias, Johan.%Thank you, Johan.


~character = "Narrador%Narrator"
~sprite = ""
Kalev vuelve a arrastrarse al fondo de su celda mientras te marchas hacia el fondo del pasillo.%Kalev drags back his feet to the bottom of the cell as you leave through the corridor.

->KalevCell

=KalevCell
~background = "cell"
~character = "Narrador%Narrator"
~sprite = ""
Abres la puerta de la celda de Kalev y te acercas a la cama.%You open Kalev's cell and get closer to the bed.

->CellChoice

=CellChoice
*[Buscar dentro del colchón rajado%Search inside the torn mattress.]
~questionId = 42
Metes la mano dentro de la raja del colchón.%You put your hand inside the gap in the matress.
Solo encuentras muelles y plumas.%You only find springs and feathers.

->CellChoice
*[Buscar dentro de la almohada%Search inside the pillow]
~questionId = 43
Metes la mano dentro de la almohada hasta encontrar un marco de madera.%You put your hand inside the pillow until it touches a wooden frame.

->KalevCellEnd
=KalevCellEnd
Sacas una foto enmarcada en madera oscura y con el cristal algo quebrado.%You take out a photograph framed in a dark wood. Its glass is somewhat broken.
Tienes varias esquinas agarradas con cinta aislante.%It has several corners taped together.
En la foto se ve a Kalev sonriendo y abraznado a otro chico, un joven bajito y también de pelo rubio.%In the foto you can see Kalev smiling and hugging another boy, a short and blonde one.
Guardas la foto en tu chaqueta y vuelves al pasillo.%You put the photo in your jacket and go back to the corridor.

->CellCorridorKalev2

=CellCorridorKalev2
~background = "cellcorridor"
Intentas acercarte a la celda de aislamiento, pero hay tres guardias rondando alrededor.%You try to get closer to the isolation cell. But there are three guards patroling around.
Kalev tendrá que esperar hasta mañana para tu visita.%Kalev will have to wait until tomorrow for your visit.
Comienzas a caminar hacia el patio, evitando la puerta extraña.%You start heading to the yard, avoiding walking besides the strange door.

->Yard

=Yard
~background = "yard"
~sfx = "Gente de fondo hablando"
~character = "Narrador%Narrator"
~sprite = ""
Un grupo de presos juega en la cancha de baloncesto.%A group of prisoners plays on the basketball court.
Un balón pasa a pocos centímetros de tu cara mientras alguien se disculpa y corre a recogerlo.%ball passes a few inches close to your face while someone apologizes and runs to take it back.
Los bancos de ejercicio están ocupados por presos sin camiseta que trabajan con las máquinas hasta hacerlas chirriar.%The work benches and occupied by shirtless prisoners who work with them until they squeak.
En un banco, apartado en una esquina, Stanislav lee un periódico con su librito apoyado en el regazo.%On a bench in the corner, Stanislav reads a newspaper with his little book laying on his lap.

*[Acercarte a Stanislav%Get closer toStanislav]
-
Stanislav rasga el periódico hasta arrancar una parte y guardarla en su libro.%Stanislav rips a part of the newspaper and puts it away inside his book.
Cuando te acercas se lo guarda en el bolsillo y cierra el periódico.%When you get closer he hides it in his pocket and closes the newspaper.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¿Qué haces aquí, Johan? ¿Han dejado que te el aire hoy?%What are you doing here, Johan? Did they allow you to get a breath of fresh air today?

~character = "Narrador%Narrator"
~sprite = ""
Stanislav se ríe, aunque arruga la cara al mover la nariz.%Stanislav laughs, although he wrinkles his face as his nose moves.

~character = "Johan%Johan"
~sprite = "Stanislav"
Me toca turno en el patio.%It's my turn in the yard.
Todo el mundo parece bastante... entretenido.%Everyone looks pretty... entertained.
¿Tú no haces nada?%You ain't doing anything?

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¿Yo? Esos animales solo me aceptarían para usarme como balón.%Me? Those animals would only accept me as their new ball.
Prefiero seguir leyendo. Además, tengo que tener cuidado con mi nariz.%I prefer to continue reading. Besides, I have to be careful with my nose.

~character = "Johan%Johan"
~sprite = "Stanislav"
¿Qué tal la llevas?%Is it doing better?

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Duele. Duele mucho.%It hurts. It hurts a lot.
Creo que es lo más doloroso que he sentido en mi vida.%It might just be the most painful thing I've ever felt in my life.
Más doloroso incluso que me dejaras en manos de Luka.%Even more painful that you leaving me in Luka's hands.

~character = "Johan%Johan"
~sprite = "Stanislav"
Mejor dejarte con Luka que con Kalev, ¿no?%Better leaving you with Luka than with Kalev, don't you think?
¿Te hace un segunndo asalto?%Do you want a second round?

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Lo lamento, pero no puedo aceptar la oferta.%Sorry, but I can't accept the offer.
Creo que prefiero seguir leyendo. Aunque parezca mentira, no tenemos demasiado tiempo libre.%I think I'd prefer to keep reading. Oddly enough, we don't have much spare time.

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Dejas a Stanislav continuar con su lectura, no sin antes echar un vistazo a la portada del periódico.%You let Stanislav continue his reading, not before taking a look at the front page of the newspaper.
Está repleta de noticias sobre política.%It's full of news about politics.
No puedes leer mucho de la página arrancada.%You can't read too much from the torn page.
Stanislav ha marcado las palabras "juicio" y "asesinato" en una de las páginas.%Stanislav has marked the words "trial" and "murder" in one of the pages.
Stanislav carraspea y cierra el periódico hasta que te marchas.%Stanislav clears his throat and refuses to open the newspaper until you leave.

~character = "Narrador%Narrator"
~sprite = ""
El sol desciende por el horizonte y los muros de cemento van proyectando su sombra sobre el patio.%The sun descends over the horizon and the concrete walls start casting their shadows over the yard.
Los guardias comienzan a indicar a los presos que han de volver a sus celdas.%The guards start indicating the prisoners that they have to return back to their cells.
Con el estómago rugiendo, te diriges a la cantina con Luka.%With your stomach roaring, you head to the canteen with Luka.

->Canteen

=CellCorridorStanislav1
~background = "cellcorridor"
~character = "Narrador%Narrator"
~sprite = ""
De camino a la sala de recreo pasas frente a la celda de Kalev.%In your way to the break room you pass by Kalev's cell.
No hay rastro del preso.%There's no trace of the inmate.
Su colchón está tirado en el suelo, con una raja en el centro y el relleno desperdigado por toda la celda.%His matress is lying on the ground, a tear in its center and its filling scattered throughout the cell.

*[Continuar a la sala de recreo%Continue to the break room]
~questionId = 43
->Breakroom
*[Ir a la celda de aislamiento%Go to the isolation cell]
~questionId = 44
    ~character = "Narrador%Narrator"
    ~sprite = ""
    Caminas por el corredor hasta llegar a las celdas de aislamiento en el fondo.%You walk through the corridor until you reach the cells at the end.
    ~background = "heavydoor"
    Escuchas los susurros de un sollozo escapar entre los tornillos y bisagras de la enorme puerta de acero.%You hear sobbing whispers escape between the bolts and hinges of the huge steel doors.
    **[Acercarse a ver a Kalev%Get closer to see Kalev]
    --
    Tratas de acercarte a la celda de aislamiento, pero hay dos guardias apostados a los lados.%You try to get closer to the isolation cell, but there are two guards posted to the sides.
    Les escuchas hablar acerca de la mafia y su impacto en el desarrollo de Moscú.%You hear them talk about the mafia and its impact on Moscow.
    Decides dejar la visita a Kalev para más tarde. Te diriges a la sala de recreo.%You decide to leave the visit to Kalev for later and head to the break room.
    ->Breakroom

=Breakroom
~background = "breakroom"
~sfx = "Gente de fondo hablando"
~character = "Narrador%Narrator"
~sprite = ""
Un olor a sudor mezclado con palomitas te golpea al entrar en la sala de recreo.%A smell of sweat mixed with popcorn hits you as you enter the break room.
Varios presos están reunidos en torno a una mesa de billar, planeando su próxima tirada.%Several prisoners are gathered around a pool table, planning the next shot.
El sofá de la habitación está cubierto de pelusillas y alguna mancha roja seca.%The sofa in the room is covered in fluff and some dried red stains.
~sfx = "Zumbido"
La televisión está encendida sin ningún canal puesto, inunando la sala de un ruido de estática.%The TV is on with no channel on, filling the room with a static noise.
Te apoyas en una de las paredes de la habitación, observando a cada uno de los presos.%You lean against one of the walls of the room, observing each of the inmates.
Stanislav entra en la sala con su librito bajo el brazo.%Stanislav enters the room with his little book under his arm.
Se sienta en el sofá y se recoloca la barriga antes de alcanzar el mando a distancia.%He sits in the sofa and repositions his belly before reaching for the remote.

*[Acercarse a Stanislav%Get closer to Stanislav]
-
Dejas tu sitio contra la pared para sentarte en el sofá junto a Stanislav.%You leave your place against the wall to sit on the sofa next to Stanislav.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¡Johan, muchacho! Veo que te han dejado salir del... ¿Cómo lo llamaba Luka?%Johan, boy! I see they let you out of the... How did Luka call it?
¿Establo?%Barn?

~character = "Narrador%Narrator"
~sprite = ""
Asientes mientras Stanislav enciende la televisión.%You nod as Stanislav turns the TV on.
Trastea con el mando, cambiando a un canal y a otro hasta pararse en un informativo de noticias.%He fiddles with the remote, switching from one channel to another until he stops at a news report.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Vamos a ver si tu pequeño encargo del otro día ha servido para algo.%Let's see if your little gig from the other day has done its work.

~character = "Narrador%Narrator"
~sprite = "TV"
Un hombre trajeado se acerca a un atril rodeado de cámaras y micrófonos.%A man in a suit approaches a lectern surrounded by cameras and microphones.
Los presentadores le introducen como Viktor Barinov mientras saca una pila de papeles de su maletín.%The presenters introduce him as Viktor Barinov as he pulls a stack of papers out of his briefcase.
Da dos golpecitos al micrófono que tiene delante antes de comenzar a hablar.%He taps the microphone in front of him twice before starting to speak.
La televisión emite su mensaje con un deje robótico.%The TV begins broadcasting his message with a robotic touch.

~character = "Viktor%Viktor"
~sprite = "TV"
Queridos ciudadanos. Vengo hoy a hablaros acerca de las nuevas noticias que han surgido sobre el "caso Stanislav".%Dear citizens. I come today to tell you about the recent news that has emerged about the "Stanislav case".
Algunas fuentes hablan de una supuesta carta que ha recibido nuestro partido.%Some sources speak about an alleged letter that our party has received.
En esta ficticia hoja de papel el convicto defiende, como ha hecho ya tantas veces, su condición de inocencia.%In this fictional sheet of paper the convict defends, as he has done so many times, his condition of innocence.
Quiero recalcar que desde Rusia Renacida continuamos desligados del actual criminal y asesino Stanislav Volkov.%I want to emphasize that from Russia Reborn we remain separated from the current crminal and murderer Stanislav Volkov.
Lamentamos que el anterior ministro de economía no sea capaz de reconocer y aceptar sus graves errores.%We are ashamed that the former economy minister is not able to recognize and accept his serious mistakes.
Dada su continuada insistencia en su inocencia durante los años, desde el partido hemos tomado una decisión.%Given his continued insistence on his innocence over the years, we have made our decision.
No nos queda más remedio que eliminar su nombre de las puertas de nuestro museo de la moneda.%We have no choice but to remove his name from the doors of our coin museum.
El nombre de un asesino no puede coronar un monumento tan importante para Moscú.%The name of a murderer cannot decorate such an important monument for Moscow.
Eso es todo. Tengan todos ustedes una muy buena tarde.%That's everything, may you all a very pleasant afternoon.

~character = "Narrador%Narrator"
~sprite = "tuvimos"
Viktor se aleja del atril mientras una avalancha de periodistas le asalta con micrófonos.%Viktor walks away from the lectern as an avalanche of journalists assaults him with their microphones.
Sus escoltas les cortan el paso hasta que Viktor se pierde en la distancia con su coche.%His escorts block their path until Viktor is lost in the distance with his car.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¡Será malnacido! ¡Buitre!%What a bastard! Vulture!
¡Eres un puto buitre Viktor, ¿me oyes?!%You're a fucking Vulture, Viktor.Can you hear me?!
UN.%A.
PUTO.%FUCKING.
BUITRE.%VULTURE.

~character = "Narrador%Narrator"
~sprite = ""
Stanislav cierra con fuerza su librito.%Stanislav shuts his little book.
Varios recortes de periódico salen volando desde las páginas hasta el suelo.%Several newspaper clippings fly from the pages to the ground.
Le ayudas a recogerlos mientras continua insultando a Viktor.%You help him picking them up while he continues insulting Viktor.
Los recortes de periódico solo hablan de asesinatos y varios juicios fallidos.%The newspaper clippings only speak about murders and various failed trials.

~character = "Johan%Johan"
~sprite = "Stanislav"
Ha dicho algo de unos asesinatos.%He said something about some murders.
¿Sabes de qué está hablando?%Do you know what he was talking about?

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Stanislav espira profundamente y colca sus manos sobre las tuyas.%Stanislav takes a deep breath and places his hand over yours.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Hace un tiempo, como... Uff, ¿dos años ya?%Some time ago. Like... Two years already?
Me la jugaron, Johan.%They played on me, Johan.
Ese capullo de Viktor me cargó a las espaldas el asesinato de Adrik Akilov.%That asshole Viktor put the murder of Adrik Avilov on my back.

~character = "Johan%Johan"
~sprite = "Stanislav"
¿Quién?%Who?

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Oh, nadie importante. Solo fue el vicepresidente del anterior partido gobernante.%Oh, no one important. He was just the vicepresident of the previous ruling party.
No te veo muy puesto en política, chaval.%I see you're not much into politics, kid.
El caso es que, sorpresa sorpresa, con Adrik fuera de escena, Viktor no ha tenido competidor real en estas elecciones.%The fact is that, surprise surprise, with Adrik out of the picture, Viktor has had no actual competitor in these elections.
Ese capullo... Con todo lo que he hecho para él y me deja aquí tirado.%That asshole... With everything I've done for him and he leaves me lying here.
No sabes la de planes económicos que tenía organizados.%You can't imagine how many economic plans I had organized.
Iva a levantar este maldito país, por mucho que a Viktor le costara.%I was going to make this damn country great, no matter how much it bothered Viktor.
Oh, pero no te preocupes.%Oh, but don't you worry.
Tengo pruebas. Muchas, sí.%I have evidence. A lot, yeah.
Está todo aquí, en este libro. Solo tengo que ordenarlo...%They are all n this book. I just have to order them...

~character = "Narrador%Narrador"
~sprite = "Stanislav"
Stanislav comienza a sudar hasta empaparse la espalda.%Stanislav starts sweating until his back is soaked.
Sus ojos se van enrojeciendo cada vez más por cada página del libro que pasa.%His eyes grow redder with each page of the book he passes.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Está todo aquí, Johan. Te lo prometo.%It's everything here, Johan. I promise.
Solo necesito llamar a Viktor y con esto le tendré cogido por los huevos.%I just need to call Viktor and with this I'll have him grabbed by the balls.
Pero nunca me contestan el teléfono en la oficina.%But they never answer the phone at the office.
Quizás si... ¿Tienes algo que hacer esta noche?%Maybe if... You have anything to do tonight?

~character = "Johan%Johan"
~sprite = "Stanislav"
*[Me das miedo, Stanislav%You scare me, Stanislav]
*[¿Qué te traes entre manos?%What are you up to?]
-
~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Estab pensando en que quizás podrías llamar tú.%I was thinking that maybe you could call him.

~character = "Johan%Johan"
~sprite = "Stanislav"
Ni de coña. No puedo hacerlo.%No way. I can't do it.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Venga, hombre. No seas así. Te dejaré mi libro.%Come on, man. Don't be like that. I'll lend you my book.
Lo tienes todo ahí dentro.%You have everything in there.
Solo es una llamadita de unos minutos y le tendremos temblando.%It's just a little two minutes phone call and we'll have them shivering.

~character = "Johan%Johan"
~sprite = "Stanislav"
*[No puedo arriesgarme tanto%I can't risk that much]
*[¿Qué saco yo de esto?%What do I get out of this?]
-
~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Bueno... ¿No merece la pena por hacerte amigo del futuro ministro de economía?%Well... Isn't it worth making friends with the future economy minister?
A un futuro música como tú le podría hacer falta un préstamo de vez en cuando.%A future musician like you might need a loan from time to time.

~character = "Johan%Johan"
~sprite = "Stanislav"
Está bien. Pero diré que llamo de tu parte.%Ok. But I'll say I'm calling on your behalf.
Y no daré mi nombre.%And I won't give my name.
Tampoco haré más llamadas en el futuro.%I won't make more calls in the future either.
¿Trato?%Deal?

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Stanislav te coge la mano con ambos brazos y sonríe.%Stanislav takes your hand with both arms and smiles.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Trato hecho, amigo.%It's a deal, friend.
No te arrepentirás.%You won't regret it.
Ahora deja que te de un par de consejos para la llamada...%Now let me give you a couple advices for the phone call..

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Stanislav repasa cada una de las páginas del libro indicando para qué podrías usar cada prueba.%Stanislav goes over each page of the book, indicating what you could use each evidence for.
Apenas ha llegado a la mitad cuando un par de guardias entran en la sala de recreo y conducen a los presos a sus celdas.%He's barely halfway there when a couple of guards enter the break room and start leading the prisoners to their cells.
Stanislav te deja el libro bajo un cojín antes de marcharse con una sonrisa en la cara.%Stanislav leaves the book for you under a cushion before leaving with a smile on his face.

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Sales de la sala de recreo con el libro oculto bajo la chaqueta hasta dejarlo en tu taquilla.%You leave the rec room with the book hidden under your jacket until you leave it in your locker.
Después, con el estómago rugiendo, te diriges a la cantina con Luka.%Then, with the stomach roaring, you head to the canteen with Luka.

->Canteen

=Canteen
~background = "canteen"
~hour = 2
~sfx = "Gente de fondo hablando"
~character = "Narrador%Narrator"
~sprite = ""
Te sientas junto a Luka en una de las mesas de la cantina.%You sit next to Luka in one of the tables in the canteen.
La comida no tiene mejor pinta que el resto de días, pero tu estómago pide a gritos devorarla.%The food doesn't look any better than the rest of the days, but your stomach is crying out for you to devour it.

~character = "Luka%Luka"
~sprite = "Luka"
Entra que no veas después de un día duro de trabajo, ¿eh pipiolo?%It feels so good after a day of hard work, huh, tyro?

~character = "Johan%Johan"
~sprite = "Luka"
Cuesta admitirlo, pero sí.%It's hard to admit, but yeah, it does.

~character = "Narrador%Narrator"
~sprite = "Luka"
Sigues engullendo lo que quiera que sea que te han servido.%You keep devouring whatever it is that you have been served.

~character = "Luka%Luka"
~sprite = "Luka"
Y... ¿vas a ver el partido hoy?%And... are you watching today's match?

~character = "Johan%Johan"
~sprite = "Luka"
No. No me va mucho ver deportes por la tele, la verdad.%No. I'm not much interested in watching sports on TV, to be honest.
Estaré practicando un rato antes de dormir, casi no he tenido tiempo esta semana.%I'll be practicing for a while before going to sleep. I've barely had time this week.

~character = "Luka%Luka"
~sprite = "Luka"
Anda, ¿practicar el qué?%Wow, practicing what?

~character = "Johan%Johan"
~sprite = "Luka"
Ah, pensé que ya te lo había comentado.%Ah, I thought I already mentioned that to you.
Toco el teclado.%I play the keyboard.
Quiero dedicarme a la música.%I want to become a musician.

~character = "Luka%Luka"
~sprite = "Luka"
Me cago en la leche, pues sí que sabes cosas, pipiolo.%Holy shit, you surely know a lot of things, tyro.
A ver si me tocas algo un día de estos para animar al ganado.%Let's see if you can play something one of these days to cheer on the cattle.

~character = "Johan%Johan"
~sprite = "Luka"
Estaría curioso dar mi primer gran concierto aquí, con los presos como público.%It'd be curious to have my first great concert here, with the prisoners as public.

~character = "Johan%Johan"
~sprite = "Luka"
Ahora que lo pienso. Llevo un CD en la mochila.%Now that I think about it. I have a CD in my backpack.
¿Te gustaría llevártelo para escucharlo y me dices qué te parece?%Would you want to take it and tell me what do you think?

~character = "Luka%Luka"
~sprite = "Luka"
¡Pero bueno, cadete! ¡Me encantaría!%God, boy! I'd love to!

~character = "Narrador%Narrator"
~sprite = "Luka"
Terminas la comida de la bandeja y te levantas del asiento.%You finish the food from your tray and get up from your seat.
Sonríes cunado Luka se guarda tu CD antes de marcharte de vuelta al piso.%You smile as Luka puts away your CD before you go.

->FlatDoorstep

=FlatDoorstep
~music = "Clouds"
~background = "apartmentdoor"
~character = "Narrador%Narrator"
~sprite = ""

*[Abrir la puerta%Open the door]
~sfx = "Cadena_1"
->FlatKitchen

=FlatKitchen
~background = "apartmentkitchen"
~character = "Narrador%Narrator"
~sprite = ""
En la puerta de la nevera encuentras un post-it con el logo de los Featherknights en una esquina.%On the refrigerator door you find a post-it with the Featherknights logo in one corner.
~character = "Fay%Fay"
~sprite = ""
"¡Hola Johan! Espero que haya ido bien el día.%"Hi Johan! I hope the day went well. #italics
Hoy no estaré en casa. Tenemos torneo.%I won't be home today. We have a tournament. #italics
PD: Te he dejado unas partituras sobre el teclado.%PS: I have left you some scores on the keyboard. #italics
Son de mis favoritas. Fay"%They are some of my favourites. Fay" #italics

~character = "Johan%Johan"
~sprite = ""
¡Machácalos, Fay! Les echaré un vistazo a esas partituras.%Smash them, Fay! I'll check those scores out. #italics

->Flat

=Flat
~background = "apartmententrance"
~character = "Narrador%Narrator"
~sprite = ""
Te acercas al teclado en mitad del salón.%You take closer to the keyboard in the middle of the living room.
Está cubierto por un montón de papeles grapados.%It's covered with a lot of stapled papers.
"Villain", "Warriors", "Rolling Girl", "All Star".%"Villain", "Warriors", "Rolling Girl", "All Star".

~character = "Johan%Johan"
~sprite = ""
No conozco ninguna de estas canciones.%I don't know any of these songs. #italics
No parecen demasiado complicadas, me aprenderé alguna para cuando Fay regrese.%They don't seem too hard. I'll learn some for when Fay returns. #italics

~character = "Narrador%Narrator"
~sprite = ""
Coges la partitura de "Warriors" y entras en tu cuarto%You take the score for "Warriors" and walk into your room.

{Day_Two.HelpKalev} ->BeedroomKalev
{Day_Two.HelpStanislav} -> BeedroomStanislav

=BeedroomKalev
~background = "bedroom"
~character = "Narrador%Narrator"
~sprite = ""
Dejas las partituras sobre la mesa y te pones a rebuscar en la mochla.%You leave the score on your desk and begin rummaging in your backpack.
Encuentras la foto de Kalev en el fondo, escondida tras tu cuaderno.%You find Kalev's photo at the bottom, hidden behind your notebook.
Echas un último vistazo a la sonrisa de Kalev, que braza por el hombro al otro chico rubio.%You take a last look at Kalev's smile, who is hugging the other blonde boy by the shoulder.
Dejas la foto sobre el escritorio.%You put the photo on the desk.

~character = "Johan%Johan"
~sprite = ""
Pensé que nunca llegaría el fin de semana.%I thought the weekend would never come.#italics
Estoy deseando salir de fiesta con los chicos.%I'm looking forward to partying with the boys. #italics
Me pregunto qué me habrán comprado este año...%I wonder what they bought me this year... #italics

->BedroomEnd

=BeedroomStanislav
~background = "bedroom"
~character = "Narrador%Narrator"
~sprite = ""
Dejas la partitura sobre la mesa y te pones a rebuscar en la mochila.%You leave the score on your desk and begin rummaging in your backpack.
Encuentras la librea de Stanislav al fondo, escondida tras una chaqueta.%You find Stanislav's book at the bottom, hidden behind a jacket.
Sacas una nota de papel con un número de teléfono escrito.%You take out a note with a phone number written on it.

~character = "Johan%Johan"
~sprite = ""
Allá vamos...%Here we go... #italics

~character = "Narrador%Narrator"
~sprite = ""
Llamas al número de teléfono mientras abres la libreta de Stanislav sobre tu regazo.%You call to the phone number as you open Stanislav's notebook on your lap.

~character = "Secretario%Secretary"
~sprite = "Phone"
Oficina del partido Rusia Renacida, buenas noches.%Russia Reborn Party Office, good night.
¿Puedo ayudarle?%How can I help you?

~character = "Johan%Johan"
~sprite = "Phone"
*[Buenas noches%Good night] 
Buenas noches, necesito hablar con Viktor Barinov%Good night, I need to speak with Viktor Barinov
*[Póngame con Viktor Barinov%Put me on Viktor Barinov]
Póngame con Viktor Barinov. Es urgente.%Put me on Viktor Barinov. It's urgent.
-
~character = "Secretario%Secretary"
~sprite = "Phone"
Lo siento mucho. El señor Viktor está muy ocupado.%I'm so sorry. Mr. Barinov is very busy.
Déjeme su nombre y le concertaré una cita.%Leave your name and I'll arrange a meeting.
¿Qué tal le viene el 12 de enero?%How about Januray 12?

~character = "Johan%Johan"
~sprite = "Phone"
Es acerca de Stanislav.%It's about Stanislav.
Creo que le interesa coger esta llamada.%I think he's interested in taking this call.

~character = "Secretario%Secretary"
~sprite = "Phone"
...%...
Deme un segundo. Veré que puedo hacer.%Give me a second. I'll see what I can do.

~character = "Narrador%Narrador"
~sprite = ""
Ojeas la libreta de Stanislav varias veces mientras esperas con una música de ascensor de fondo.%You look through Stanislav's notebook several times while elevator music plays in the background.
Varias gotas de sudor caen sobre las páginas dejando marcas.%Several drops of sweat fall on the pages leaving marks.

~character = "Secretario%Secretary"
~sprite = "Phone"
El señor Viktor está dispuesto a aceptar su llamada.%Mr. Viktor is willing to accept your call.
¿Podría darme su nombre?%Could you give me a name?


~character = "Johan%Johan"
~sprite = "Phone"
VAR name = ""

*[Johan%Johan]
~questionId = 45
~name = "Johan"
*[Alek%Alek]
~questionId = 46
~name = "Alek"

-
~character = "Secretario%Secretario"
~sprite = "Phone"
Muchas gracias, caballero.%Thank you very much, gentleman.
Le paso con VIktor.%I'll pass you on with Viktor.

~character = "Johan%Johan"
~sprite = ""
Llegó el momento de la verdad.%It comes, the moment of truth. #italics

~character = "Viktor%Viktor"
~sprite = "Phone"
Buenas noches. Viktor Barinov al habla.%Good night. Viktor Barinov speaking.

~character = "Johan%Johan"
~sprite = "Phone"

*[Tengo información sobre Stanislav%I have information regarding Stanislav]
~character = "Viktor%Viktor"
~sprite = "Phone"
¿Se refiere a Stanislav Volkov?%Are you referring to Stanislav Volkov?
Yo también tengo información sobre él.%I have information about him too.
Está encerrado en la cárcel de Moscú. Y durante un buen tiempo, espero.%He's locked up in Moscow jail. And for a long time, I hope.
*[Sé lo que habéis hecho con Stanislav%I know what you did to Stanislav]
~character = "Viktor%Viktor"
~sprite = "Phone"
Yo también sé lo que hemos hecho con él.%I also know what we have did to him.
Le hemos encerrado en la prisión de Moscú. Y durante bastante tiempo, espero.%We locked him up in Moscow jail. And for a long time, I hope.
-

~character = "Johan%Johan"
~sprite = "Phone"
*[Se la habéis jugado%You played on him]
~character = "Viktor%Viktor"
~sprite = "Phone"
Si se refiere a lo del museo, en efecto, se la hemos jugado.%If you are talking about the museum, in effect, we did play on him.
No podemos grabar el nombre de un asesino en un monumento público.%We can't engrave a killer's name on a public monument.
*[Le habéis utilizado%You used him]
~character = "Viktor%Viktor"
~sprite = "Phone"
Si se refiere a lo del museo, en efecto, le hemos utilizado.%If you are talking about the museum, in effect, we did use him.
Le hemos utilizado para limpiar la imagen de Moscú.%We used him to clean up Moscow's image.
No podemos grabar el nombre de un asesino en un monumento público.%We can't engrave a killer's name on a public monument.

-
~character = "Johan%Johan"
~sprite = "Phone"
*[Tengo pruebas%I have evidence]
Tengo pruebas, Viktor.%I have evidence, Viktor.
Sé que le has cargado el asesinato de Adrik Avilov a las espaldas.%I know you put Adrik Avilov's murder on his back.
No pareces muy contento con sus propuestas para la reforma económica.%You don't seem to a fan of his proposals for an economical reform.
-
~character = "Viktor%Viktor"
~sprite = "Phone"
Y de qué pruebas se trata, señor {name}.%And what evidence do you hace, mister {name}.

~character = "Johan%Johan"
~sprite = "Phone"
*[Fotografías de la coartada%Photographs of his alibi]
~character = "Narrador%Narrator"
~sprite = ""
Pasas las páginas dela libreta de Stanislav con mano temblorosa.%You turn the pages of Stanislav's notebook with a shaking hand.

~character = "Johan%Johan"
~sprite = "Phone"
En estas fotografías puede verse a Stanislav salir de un coche con una... bueno, con una amiga.%In this photograpgs Stanislav can be seen getting out of a car with a... well, with a friend.
Está tomada la misma noche en la que, según su partido, asesinó a Adrik.%It was taken the same night that, according to your party, he murdered Adrik.
*[Recortes de periódico%Newspaper clippings]
~character = "Narrador%Narrator"
~sprite = ""
Pasas las páginas dela libreta de Stanislav con mano temblorosa.%You turn the pages of Stanislav's notebook with a shaking hand.

~character = "Johan%Johan"
~sprite = "Phone"
Estos recortes de periódico hablan sobre Stanislav.%These newspaper clippings speak about Stanislav.
Le pillaron una noche saliendo de un coche con una... bueno, con una amiga.%He was caught one night getting out of a car with... well, with a friend.
Esa misma noche debería estar asesinando a Adrik.%That very same night he should have been murdering Adrik,
Al menos según la versión de los hechos de su partido.%At least according to your party's version of the events.
-

~character = "Viktor%Viktor"
~sprite = "Phone"
Tegno que colgarle.%I have to hang up.
Como dije durante la rueda de prensa, en Rusia Renacida nos desligamos completamente del señor Stanislav.%As I said during the press conference, in Russia Reborn we completely disassociate ourselves from Mr. Stanislav.
Pase una buena noche, {name}.%Have a good night, {name}.
Y tenga cuidado. Creo que no sabe dónde se está metiendo.%And be careful. I think you don't understand what you're getting into.

~character = "Narrador%Narrator"
~sprite = ""
El teléfono emite un pitido antes de cortar la llamada.%The phone beeps before disconnecting the call.

~character = "Johan%Johan"
~sprite = ""
Espero que esto ayude a Stanislav... y que no me cause demasiados problemas.%I hope this helps Stanislav... And that it doesn't cause me too much trouble. #italics
Estoy deseando salir mañana de fiesta con los chicos.%I'm looking forward to partying with the boys tomorrow. #italics
Me pregunto qué me habrán comprado este año...%wonder what they have bought me this year... #italics

->BedroomEnd

=BedroomEnd
~background = "bedroom"
~character = "Narrador%Narrator"
~sprite = ""
Te arropas con las ´sábanas hasta el cuello y das un profundo bostezo antes de irte a dormir.%You wrap the sheets up to your neck and yawn deeply before going to sleep.
~music = ""
->Day_Four

==Day_Four==
~day = 4
~hour = 0

->BedroomMorning

=BedroomMorning
~background = "bedroom"
~character = "Narrador%Narrator"
~sprite = ""
Escuchas el móvil vibrar sobre el escritorio.%You hear the mobile vibrating on the desk.
La luz de la pantalla ilumina la habitación junto a los pocos rayos de sol que entran por las rendijas de la persiana.%The light from the screen illuminates the room along with a few rays of sunlight.
Te levantas y coges el teléfono, restregándote los ojos con la otra mano.%You get up and pick up the phone, rubbing your eyes with the other hand.

~character = "Luka%Luka"
~sprite = "Phone"
¡Hola, cadete! ¡Buenos días!%Hello, boy! Good morning!

~character = "Johan%Johan"
~sprite = "Phone"
¿Qué quieres, Luka?%What do you want, Luka?
Hoy tengo el día libre.%Today's my day off.

~character = "Luka%Luka"
~sprite = "Phone"
Por eso mismo te llamaba.%That's why I was calling you.
Ha surgido una... oportunidad de trabajo en la cárcel.%A... job opportunity has come up in prison.
Hay un tipo que no puede venir hoy y necesitamos un sustituto urgente.%There's a guy who can't come today and we need a replacement urgently.
Creo que te interesa, pagan bien.%I think you're interested. They pay well.
MUY bien.%REALLY well.

~character = "Johan%Johan"
~sprite = "Phone"
¿Cuántas horas son?%How long will it take?
Necesito tener la tarde libre. Tengo planes.%I need to have this afternoon free. I have plans.

~character = "Luka%Luka"
~sprite = "Phone"
No te preocupes por eso, serán solo un par de horas como mucho.%Don't worry about that. It will just be a couple of hours at most.

~character = "Johan%Johan"
~sprite = "Phone"
Supongo que me interesa entonces.%I guess I'm interested then.
¿De qué va el trabajo?%What's the job about?

~character = "Luka%Luka"
~sprite = "Phone"
¡Perfecto, chaval! Nos vemos en media hora en la cárcel.%Perfect, kid! See you in half an hour.

~character = "Narrador%Narrador"
~sprite = ""
Luka cuelga el teléfono bruscamente.%Luka hangs up the phone sharply.
Te vistes rápidamente y sales por la puerta con un sándwich en la mano.%You quickly get dressed and walk out the door with a sandwich in hand.

->PrisonReception

=PrisonReception
~background = "reception"
~character = "Narrador%Narrador"
~sprite = ""
~sfx = "Pasos_1"
La recepción de la cárcel está completamente vacía.%The prison reception is completely empty.
Cada uno de tus pasos resuena por toda la habitación.%Every one of your steps echoes throughout the room.

~character = "Luka%Luka"
~sprite = "Luka"
¡Johan! Has llegado pronto y todo. Así me gusta.%Johan! You even arrived early. That's how I like it.
Sígueme. Vamos a tu nuevo puesto de trabajo.%Follow me. Let's go to your new job.

->ElectricChairDoor

=ElectricChairDoor
~background = "closeddoor"
~sfx = "Zumbido"
~music = "Horror13"
~character = "Narrador%Narrador"
~sprite = ""
Luka se para frente a la puerta de metal.%Luka stands in front of the metal door.
Desbloquea los tres cerrojos y se saca una llave del bolsillo para abrir la cerradura.%He unlocks the three locks and takes a key from his pocket to open the door.

~character = "Luka%Luka"
~sprite = "Luka"
Bienvenido al matadero.%Welcome to the slaughterhouse.

->ElectricChair

=ElectricChair
~music = "Beginning"
~background = "electricchair"
~sfx = "Zumbido"
~character = "Narrador%Narrador"
~sprite = ""
Un olor a polvo y humo cubre toda la habitación.%A smell of dust and smoke covers the entire room.
Te cuesta respirar.%It's difficult for you to breathe.
No sabes si por el polvo o la visión de la silla en el centro de la habitación.%You don't know if it's because of the dust or the chair in the middle of the room.
El zumbido monótono crece a cada paso que das hacia ella.%The monotonous whirring grows with every step you take towards it.
 
~character = "Luka%Luka"
~sprite = "Luka"
El trabajo es muy sencillo. Solo tienes que bajar esta palanca cuando yo te lo diga.%Job's simple. You just have to lower this lever when I tell you to.
Cuando empieces a oler a barbacoa la subes.%When it starts smelling like barbecue it's time to turn it up.
Tampoco hay que ser sádico.%You don't have to be sadistic.

~character = "Johan%Johan"
~sprite = "Luka"
Luka...%Luka...
No puedo hacer esto.%I can't do this.
No puedo matar a una persona.%I can't kill a person.

~character = "Luka%Luka"
~sprite = "Luka"
Oye, oye. Tú no estás matando a nadie.%Hey, hey. You're not killing anyone.
Solo estás bajando una palanca, ¿entiendes?%You're just pulling a level, you get it?

~character = "Johan%Johan"
~sprite = "Luka"
...%...

~character = "Luka%Luka"
~sprite = "Luka"
Vamos, chaval. Lo vas a hacer genial.%Come on, kid. You'll do great.
Y piensa en la paga.%And think about the money.
Necesitarás bastante dinero para grabas más CDs como el que me diste.%You'll need a lot of money to record more CDs like the one you gave me.
Es genial, Johan. Tienes talento.%It's great Johan. You're something special.

~character = "Narrador%Narrador"
~sprite = ""
Luka te pone la mano en la espalda y te dirige hacia la cabina de la sala.%Luka puts his hand on your back and directs you towards the room booth.
Arrastras los pies por la habitación levantando nuevas nubes de polvo en el ambiente.%You drag your feet across the room, kicking up new clouds of dust in the air.

->ExecutionIntro

=ExecutionIntro
La sala se va llenando de nuevas personas.%The room gradually fills up with more people.
Toman asiento en banquetas dispuestas frente a la silla eléctrica.%They take seat on stools arranged in front of the electric chair.
Luka les recibe a cada uno en la puerta hasta que las banquetas están llenas.%Luka greets each one of them until the stools are full.
La puerta de metal se abre una última vez hasta golpear la pared.%The metal door opens one last time, hiting the wall on its way.
Dos guardias vestidos con chalecos reforzados entran en la sala, arrastrando por los hombros a un preso.%Two guards dressed in reinforced vests enter the room, dragging a prisoner by the shoulders.
Luka cierra la puerta tras ellos antes de sentarse entre el público.%Luka closes the door behind them before sitting down in the audience.

{Day_Two.HelpKalev} ->ExecutionKalev
{Day_Two.HelpStanislav} ->ExecutionStanislav

=ExecutionKalev
~character = "Narrador%Narrador"
~sprite = ""
Los guardias sientan al preso en la silla y le atan las manos.%The guards sit the prisoner in the chair and tie his hands.
Revelan un pelo rubio al levantar la bolsa de su cabeza.%They reveal blonde hair as they lift the bag off his head.

~character = "Johan%Johan"
~sprite = "Kalev"
Kalev...%Kalev...

~character = "Narrador%Narrador"
~sprite = "Kalev"
Kalev gira la cabeza para mirarte.%Kalev turns his head to look at you.
Sientes un escalofrío al encontrar sus ojos vacíos.%You shiver whilst staring at his empty eyes.
Su cara está totalmente pálida, sin vistas de una sonrisa o una lágrima.%His face is completely pale. No sign of a smile nor a tear.
Los guardias le agarran con fuerza del cuello para forzarle a mirar al público.%The guards grab him, forcing him to look at the audience.
Luka te levanta un pulgar sentado entre el público.%Luka gives you a thumbs up from his place among the audience.
Esta sentado entre dos hombres altos con tatuajes de arañas y estrellas.%He sits between two tall men with tattoos of spiders and stars.
Los guardias colocan una esponja húmeda sobre la cabeza de Kalev antes de bajar el casco de metal.%The guards put a wet sponge on Kalev's head before lowering the metal helmet.
Los dos guardias te miran y asienten antes de dar un paso atrás al público.%The two guards look at you and nod before taking a step back to the audience.
Sientes cada uno de los tendones de tus dedos tensarse mientras tu cara se enfría y palidece.%You feel every single one of your fingers tighten as your face grows cold and pale.
Alcanzas hacia la palanca de la pared...%You reach for the lever on the wall...

*[Bajar la palanca%Pull the lever]
~sfx = "Palanca"

~character = "Johan%Johan"
~sprite = ""
Lo siento...%I'm so sorry... #italics

-
~character = "Narrador%Narrador"
~sprite = "Kalev"
~sfx = "Muertepreso_4"
Un olor a carne quemada empieza a invadir la habitación junto al crepitar de la electricidad.%A burning smell begins to fill the room along with the crackling of electricity.

*[Subir la palanca%Lift the lever]
~sfx = "Zumbido"
~character = "Narrador%Narrador"
~sprite = ""
Levantas la palanca y te desplomas en el suelo con la visión nublosa.%You lift the lever and collapse to the ground with hazy vision.

->Canteen

=ExecutionStanislav
~character = "Narrador%Narrador"
~sprite = ""
Los guardias sientan al preso en la silla y le atan las manos.%he guards sit the prisoner in the chair and tie his hands.
Revelan una calva al levantar la bolsa de su cabeza.%They reveal a bald patch as they lift the bag off his head.

~character = "Johan%Johan"
~sprite = "Stanislav"
Stanislav...%Stanislav...

~character = "Narrador%Narrador"
~sprite = "Stanislav"
Stanislav gira la cabeza para mirarte.%Stanislav turns his head to look at you.
Sientes un escalofrío al encontrar sus ojos vacíos.%You shiver whilst staring at his empty eyes.
Su cara está totalmente pálida, sin vistas de una sonrisa o una lágrima.%His face is completely pale. No sign of a smile nor a tear.
Los guardias le agarran con fuerza del cuello para forzarle a mirar al público.%The guards grab him, forcing him to look at the audience.
Luka te levanta un pulgar sentado entre el público.%Luka gives you a thumbs up from his place among the audience.
Está sentado junto a un tipo trajeado con un maletín.%He sits next to a guy in a suit with a briefcase.
Los guardias colocan una esponja húmeda sobre la cabeza de Stanislav antes de bajar el casco de metal.%The guards put a wet sponge on Stanislav's head before lowering the metal helmet.
Los dos guardias te miran y asienten antes de dar un paso atrás al público.%The two guards look at you and not before taking a step back to the audience.
Sientes cada uno de los tendones de tus dedos tensarse mientras tu cara se enfría y palidece.%You feel every single one of your fingers tighten as your face grows cold and pale.
Alcanzas hacia la palanca de la pared...%You reach for the lever on the wall...

*[Bajar la palanca%Pull the lever]
~sfx = "Palanca"

~character = "Johan%Johan"
~sprite = ""
Lo siento...% #italics

-
~character = "Narrador%Narrador"
~sprite = "Stanislav"
~sfx = "Muertepreso_5"
Un olor a carne quemada empieza a invadir la habitación junto al crepitar de la electricidad.%

*[Subir la palanca%Lift the lever]
~sfx = "Zumbido"
~character = "Narrador%Narrador"
~sprite = ""
Levantas la palanca y te desplomas en el suelo con la visión nublosa.%You lift the lever and collapse to the ground with hazy vision.

->Canteen

=Canteen
~hour = 1
~background = "canteen"
~sfx = "zumbido"
~music = "BeforeDawn"
~character = "Narrador%Narrador"
~sprite = ""
Te despiertas en la cantina de la cárcel sentado junto a Luka.%You wake up in the prison's canteen sitting next to Luka.
La cabeza te da vueltras y pulsa de forma intermitente.%Your head spins and pulses intermittently.

~character = "Luka%Luka"
~sprite = "Luka"
Al fin has despertado. Pensé que te perdía ahí dentro.%Finally awake. I thought I was losing you inside there.
Menuda barbacoa has montado. Buen trabajo, chico.%What a barbecue you made. Good job, kid.

~character = "Johan%Johan"
~sprite = "Luka"
...%...

~character = "Narrador%Narrator"
~sprite = "Luka"
Luka abre su bandeja de comida, arrancando el plástico y tirándolo por el aire.%Luka opens his food tray, tearing off the plastic and tossing it into the air.
Te llega un olor a carne asada.%You get a sniff of roast meat.
Bajas la cabeza y cubres tus piernas y el suelo de vómito.%You lower your head and cover your legs and the floor in vomit.

~character = "Luka%Luka"
~sprite = "Luka"
¡Hostia!%Fuck!
¿Te encuentras bien, Johan?%Are you all right, Johan?
Será mejor que te lleve a casa.%I'll better get you home.

~character = "Narrador%Narrator"
~sprite = ""
Luka te pone la mano en el hombro y te lleva en coche hasta tu piso.%Luka puts his hand on your shoulder and drives you to your apartment.

->FlatDoorstep

=FlatDoorstep
~hour = 2
~background = "apartmentdoor"
~sfx = "Zumbido"
~character = "Johan%Johan"
~sprite = "Luka"
Gracias por acompañarme, Luka.%Thanks for driving me, Luka.
No creo que pudiera haber llegado yo solo.%I don't think I could have made it on my own.

~character = "Luka%Luka"
~sprite = "Luka"
No hay de qué, Johan.%You're welcome, Johan.
Lo has hecho genial antes. Mañana te enviarán el cheque.%You did it great back there. Tomorrow they'll you the paycheck.
Descansa este fin de semana.%Rest this weekend.

~character = "Johan%Johan"
~sprite = "Luka"
Igualmente, Luka.%You too, Luka.

~character = "Narrador%Narrator"
~sprite = ""
Te tiembla la mano mientras tratas de introducir la llave en la cerradura.%Your hand shakes as you try to insert the key into the lock.
Cuando Luka se marcha caes al suelo frente a la puerta y rompes a llorar.%When Luka leaves you collapse to the ground in front of the door and burst into tears.

~character = "Fay%Fay"
~sprite = "Fay"
¿Johan? ¿Estás bien?%Johan? Are you all right?

~character = "Narrador%Narrator"
~sprite = "Fay"
Escuchas la voz de Fay a través de la puerta.%You hear the voice of Fay through the door.
Te levantas de un salto y terminas de abrir la puerta.%You quickly get up and finish opening the door.
La cabeza te da vueltas.%Your head spins.

->Flat

=Flat
~background = "apartmententrance"
~sfx = "Zumbido"
~character = "Fay%Fay"
~sprite = "Fay"
Dios Johan, perdona pero... Uff.%God Johan, excuse me... Oof.
Tienes un aspecto horrible.%You look horrible.

~character = "Johan%Johan"
~sprite = "Fay"
Ya...%I know...
Ha sido un día duro en el trabajo.%Rough day at work.

~character = "Fay%Fay"
~sprite = "Fay"
¿Trabajas en fin de semana también?%Are you working on weekends too?
Vaya faena...%What a pain...

~character = "Johan%Johan"
~sprite = "Fay"
Son horas extras.%Just overtime.
Las pagan bien.%They pay well.
O eso me han dicho.%Or so they told me.

~character = "Fay%Fay"
~sprite = "Fay"
Siéntate, anda. Acabo de prepararme un té. Puedes quedártelo.%Come on, sit down. I just prepared a cup of tea. You can have it.

~character = "Johan%Johan"
~sprite = "Fay"
Gracias Fay, pero no creo que pueda tomar nada ahora mismo.%Thanks Fay, but I don't fell like eating or drinking anything right now.
Solo quiero terminar este día de una vez.%I just want this day to be over.

~character = "Narrador%Narrator"
~sprite = "Fay"
Fay se te acerca y te rodea con los brazos.%Fay walks up to you and puts her arms her arms around you.
Te aprieta con fuerza mientras hundes la cabeza en su hombro, sollozando en silencio.%She squeezes you tight as you sink your head into her shoulder, sobbing silently.

~character = "Fay%Fay"
~sprite = "Fay"
Descansa, Johan. Te vendrá bien.%Rest, Johan. It will do you well.
Y oye, si te hace falta estoy en mi habitación.%And hey, if you need something, I'll be in my room.

~character = "Johan%Johan"
~sprite = "Fay"
Gracias...%Thanks...

~character = "Narrador%Narrator"
~sprite = ""
Arrastras los pies hasta tu habitación mientras Fay vuelve a la suya%You shuffle your feet up to your room while Fay returns to hers.

{Day_Two.HelpKalev} ->BeedroomKalev
{Day_Two.HelpStanislav} ->BeedroomStanislav

=BeedroomKalev
~background = "Bedroom"
~character = "Narrador%Narrator"
~sprite = ""
La habitación está oscura. Solo entran unos pocos rayos de luz de la luna entre la persiana.%The room is dark. Only a few rays of moonlight enter through the blind.
Cierras la puerta y te llevas las manos a las sienes, masajeándolas suavemente.%You close the door and put your hands on your temples, gently massaging them.
Te tumbas sobre la cama con el uniforme sudado aún puesto.%You lie on bed, sweaty uniform still on.
Al subir las piernas sobre el colchón golpeas algo blando.%As you raise your legs on the mattress you hit something soft.
Comienza a brillar con una tenue luz azúl.%It starts glowing in a dim blue light.

~character = "Kalev%Kalev"
~sprite = "Kalev"
~music = "Somber"
Hola, Johan.%Hello, Johan.

~character = "Narrador%Narrator"
~sprite = "Kalev"
Das un salto al ver a Kalev sentado, brillando, sobre tu cama.%You startle as you see Kalev sat down, glowing, on your bed.
Te golpeas la cabeza contra la estantería y caes sobre el suelo mientras toda la habitación da vueltas.%You hit your head against the shelf and fall to the ground whilst the whole room spins.

->TO_BE_CONTINUED

=BeedroomStanislav
~background = "Bedroom"
~character = "Narrador%Narrator"
~sprite = ""
La habitación está oscura. Solo entran unos pocos rayos de luz de la luna entre la persiana.%The room is dark. Only a few rays of moonlight enter through the blind.
Cierras la puerta y te llevas las manos a las sienes, masajeándolas suavemente.%You close the door and put your hands on your temples, gently massaging them.
Te tumbas sobre la cama con el uniforme sudado aún puesto.%You lie on bed, sweaty uniform still on.
Al subir las piernas sobre el colchón golpeas algo blando.%As you raise your legs on the mattress you hit something soft.
Comienza a brillar con una tenue luz azúl.%It starts glowing in a dim blue light.

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
~music = "Quiet"
Hola, Johan.%Hello, Johan.

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Das un salto al ver a Stanislav sentado, brillando, sobre tu cama.%You startle as you see Stanislav sat down, glowing, on your bed.
Te golpeas la cabeza contra la estantería y caes sobre el suelo mientras toda la habitación da vueltas.%You hit your head against the shelf and fall to the ground whilst the whole room spins.

->TO_BE_CONTINUED

==TO_BE_CONTINUED==
#end
->END