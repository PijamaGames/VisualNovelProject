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
Poca gente espera acabar en la cárcel a los 26 años.%Few people expect to end up in prison at 26.
Para ti es el gran sueño. O al menos un para cumplir tu sueño.%It's a big dream for you. Or at least it's a step to achieve your dream.
Buscas el camino a tu libertad entre muros de cemento gris y barrotes oxidados.%You seek the path to yourfreedom among dull concrete walls and rusty bars.

~character = "Johan%Johan"
~sprite = ""
Primer día, allá vamos.%First day, here we go. #italics


*[Entrar por la puerta principal%Enter through the front door] 
-~sfx = "Celda_Cerrando" 
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
-
~character = "Narrador%Narrator"
~sprite = ""
Te apoyas en la ventanilla y sacas una revista de tu bolsillo.%You lean on the window and take a magazine out of your pocket.
Lees una crítica sobre el nuevo teclado Leinsf MK600.%You read a review about a keyboard that came out recently: the Leinsf MK600.
~sfx = "Pasos_1"
Según empiezas a leer suenan pasos en un pasillo a tu espalda, cada vez más rápido, acelerando.%Just as you start to read you hear footsteps in a corridor behind you. 
Una mano te golpea la espalda con fuerza.%A hand hits hard on your back.

~character = "Luka%Lukar"
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
Comida fría, libros viejos y gimnasios sudados. Las mejores instalaciones para la peor de la escoria.%Cold
food, old books and swaty gyms. The best facilites for the worst scum.

~character = "Narrador%Narrator"
~sprite = ""
Sigues a Luka por los pasillos estrechos.%You follow Luka through the narrow corridors.
~sfx = "Risa"
Sus carcajadas retumban por toda la cárcel mientras señala a un lado y a otro.%His laughter echoes
throughout all the jail while he points left and right.
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
Da las gracias si no cobras por parte de los presos. La granja es un trabajo de riesgo.%Be thankful if the
prisoners don't pay you with a kick to your gut. Farming is a risky job.

-Sigamos por aquí, vamos a ver el establo.%Let's continue. We're headed to the stable now.

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
->CorridorChoice

=Stanislav
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

~character = "Johan%Johan"
~sprite = ""
=Bed
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
TODO Continuar aquí (página 20, 2.3)
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
Una voz robótica grita desde tu móvil. Las 6 en punto.%
Te levantas de la cama, con el uniforme ya puesto de anoche.%

~background = "apartmententrance"
Andas despacio por el pasillo, tratando de no despertar Fay, que ronca en su habitación.%
Cages un sándwich antes de salir de casa.%

->PrisonEntrance

=PrisonEntrance
~background = "reception"
~character = "Narrador%Narrator"
~sprite = ""

Llegas a la cárcel con el sol apenas asomando por el horizonte.%
Saludas al recepcionista bajándote la gorra y te drigiges al corredor de los presos.%

->ElectricChair

=ElectricChair
~background = "closeddoor"
~character = "Narrador%Narrator"
~sprite = ""
~sfx = "Zumbido"
En tu camino al corredor de los presos te topas otra vez con la puerta cerrada con tres cerrojos y una llave.%
EL mismo zumbido monótono suena al otro lado. Te acercas poco a poco hasta pegar la oreja.%
Un escalofrío recorre tu espalda. Debe de ser cosa del frío metal de la puerta.%
Continuas andando hacia el corredor de los presos, mirando de vez en cuando a tu espalda, a la puerta cerrada con tres cerrojos y una llave.%

->CellCorridorMorning

=CellCorridorMorning
~background = "cellcorridor"
~sfx = "Pasos"
~character = "Narrador%Narrator"
~sprite = ""
Las luces del corredor parpadean al ritmo de tus pasos.%
El golpe de tus botas hace eco por las paredes de cemento.%

{Day_Two.HelpKalev} ->CellCorridorMorningKalev
{Day_Two.HelpStanislav} ->CellCorridorMorningStanislav

=CellCorridorMorningKalev
~background = "cell"
~character = "Narrador%Narrator"
~sprite = ""
No hay rastro de Kalev en su celda.%
EL colchón tiene una raja y el relleno está desperdigado por el suelo.%

*[Ir a la celda de aislamiento%]

~background = "heavydoor"
~character = "Narrador%Narrator"
~sprite = ""
Caminas hacia el final del pasillo hasta acercarte a las gruesas puertas de acero.%
Escuchas los susurros de un sollozo escapar entre las bisagras y tornillos.%

~character = "Johan%Johan"
~sprite = ""
¿Kalev? ¿Kalev, estás ahí?

~character = "Narrador%Narrator"
~sprite = ""
Escuchas pasos arrastrarse hasta llegar al otro lado de la puerta.%

~character = "Kalev%Kalev"
~sprite = "Kalev"
¿Johan?

~character = "Johan%Johan"
~sprite = "Kalev"
Sí, soy yo. Podemos hablar. No hay nadie más aquí.%
He enviado la carta.%

~character = "Kalev%Kalev"
~sprite = "Kalev"
Gracias chico...%

~character = "Narrador%Narrator"
~sprite = "Kalev"
La voz de Kalev comienza a quebrarse.%

~character = "Kalev%Kalev"
~sprite = "Kalev"
Te debo...%
Te debo una.%

~character = "Johan%Johan"
~sprite = "Kalev"
Aguanta ahí dentro, ¿quieres? Te soltarán pronto, seguro.%
Tengo que marcharme a empezar mi ronda. Nos vemos, Kalev.%

~character = "Narrador%Narrator"
~sprite = ""
Kalev vuelve a arrastrar los pies hasta el fondo de la celda.%
Vuelves a escuchar un sollozo escapar por la puerta mientras te alejas.%

->VendingMachine

=CellCorridorMorningStanislav
~background = "cell"
~character = "Narrador%Narrator"
~sprite = ""
Stanislav está sentado sobre su cama leyendo un pequeño libro con la espina desgastada-%
Cuando te acercas lo cierra de golpe y lo deja sobre las sábanas.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¡Johan1 Qué agradable visita.%
Dime, ¿qué tal fue el encargo?%

~character = "Johan%Johanr"
~sprite = "Stanislav"
Está hecho. Espero que salga todo bien.%
Sea lo que sea.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Yo no tendría muchas esperanzas.%
Pero bueno, incluso un reloj roto acierta dos veces al día, ¿no?

~character = "Narrador%Narrator"
~sprite = ""
Stanislav se despide de ti y vuelve a sentarse sobre la cama.%
Espera hasta que te marches para volver a abrir su libro.%

->VendingMachine

=VendingMachine
~background = "cellcorridor"
~character = "Narrador%Narrator"
~sprite = ""
Mientras recorres el corredor de los presos escuchas un golpe venir de la máquina expendedora.%

~character = "Luka%Luka"
~sprite = ""
¡Maldito cacharro!%

~background = "vendingmachine"
~character = "Narrador%Narrator"
~sprite = "Luka"
Luka sigue dando patadas contra la máquina expendedora hasta que empieza a escupir chocolatinas-%
Te acercas a Luka y le das dos golpecitos en la espalda en forma de saludo.%

~character = "Luka%Luka"
~sprite = "Luka"
Buenos días, cadete. Aprendiendo a ser puntual, ¿eh?%

~character = "Narrador%Narrator"
~sprite = ""
Sonríes y te encojes de hombros.%

~character = "Johan%Johan"
~sprite = "Luka"
Quizás hasta puntual de más.%
He llegado al menos dos robos armados pronto.%

~sfx = "Risa"
~character = "Luka%Luka"
~sprite = "Luka"
Luka comienza a reírse mientras engulle dos chocolatinas a la vez.%

{Day_Two.HelpKalev} ->VendingMachineKalev
{Day_Two.HelpStanislav} ->VendingMachineStanislav

=VendingMachineKalev
~character = "Luka%Luka"
~sprite = "Luka"
Hoy te toca vigilar el patio.%
Igual hasta puedes sacar un rato para usar el gimnasio y mejorar esos bracitos.%
->VendingMachineEnd

=VendingMachineStanislav
~character = "Luka%Luka"
~sprite = "Luka"
Hoy te toca vigilar la sala de recreo.%
No te acomodes demasiado en el sofá. No quiero que te crezca más la panza.%
->VendingMachineEnd

=VendingMachineEnd
~character = "Luka%Luka"
~sprite = "Luka"
Nos vemos a la hora de cenar en la cantina.%
Buena suerte, cadete.%

~character = "Narrador%Narrator"
~sprite = ""
Luka te da una palmada en la espalda antes de marcharse hacia la sala de guardias.%

~hour = 1

{Day_Two.HelpKalev} ->CellCorridorKalev1
{Day_Two.HelpStanislav} ->CellCorridorStanislav1

=CellCorridorKalev1
~background = "heavydoor"
~character = "Narrador%Narrator"
~sprite = ""
Antes de ir hacia el patio vuelves a las celdas de aislamiento.%
Das un golpe en la puerta hasta que Kalev vuelve a levantarse.%

~character = "Johan%Johan"
~sprite = "Kalev"
Soy yo, Johan. Me toca vigilar el patio hoy, creo que no podré pasarme más tarde.%
¿Va todo bien?%

~character = "Kalev%Kalev"
~sprite = "Kalev"
Bueno... Necesito una cosa.%
¿Podrías pasarte por mi celda y traérmela?%

~character = "Johan%Johan"
~sprite = "Kalev"
*[¿Qué necesitas?%]
*[¿De qué se trata?%]

-
~character = "Kalev%Kalev"
~sprite = "Kalev"
Una foto.%
Es muy importante para mí. Nunca me separo de ella, pero no me dejaron recogerla antes de que me trajeran aquí.%
Busca dentro de mi almohada. No debería costar encontrarla.%


~character = "Johan%Johan"
~sprite = "Kalev"
Me pasaré antes de salir al patio, pero no sé si te la podré traer hoy.%
Esto se llenará de guardias en cualquier momento.%

~character = "Kalev%Kalev"
~sprite = "Kalev"
No importa.%
No sé cuánto tiempo estaré aquí dentro, pero necesito esa foto cuanto antes.%
Gracias, Johan.%


~character = "Narrador%Narrator"
~sprite = ""
Kalev vuelve a arrastrarse al fondo de su celda mientras te marchas hacia el fondo del pasillo.%

->KalevCell

=KalevCell
~background = "cell"
~character = "Narrador%Narrator"
~sprite = ""
Abres la puerta de la celda de Kalev y te acercas a la cama.%

->CellChoice

=CellChoice
*[Buscar dentro del colchón rajado%]
~questionId = 42
Metes la mano dentro de la raja del colchón.%
Solo encuentras muelles y plumas.%

->CellChoice
*[Buscar dentro de la almohada%q]
~questionId = 43
Metes la mano dentro de la almohada hasta encontrar un marco de madera.%

->KalevCellEnd

=KalevCellEnd
Sacas una foto enmarcada en madera oscura y con el cristal algo quebrado.%
Tienes varias esquinas agarradas con cinta aislante.%
En la foto se ve a Kalev sonriendo y abraznado a otro chico, un joven bajito y también de pelo rubio.%
Guardas la foto en tu chaqueta y vuelves al pasillo.%

->CellCorridorKalev2

=CellCorridorKalev2
~background = "cellcorridor"
Intentas acercarte a la celda de aislamiento, pero hay tres guardias rondando alrededor.%
Kalev tendrá que esperar hasta mañana para tu visita.%
Comienzas a caminar hacia el patio, evitando la puerta extraña.%

->Yard

=Yard
~background = "yard"
~sfx = "Gente de fondo hablando"
~character = "Narrador%Narrator"
~sprite = ""
Un grupo de presos juega en la cancha de baloncesto.5
Un balón pasa a pocos centímetros de tu cara mientras alguien se disculpa y corre a recogerlo.%
Los bancos de ejercicio están ocupados por presos sin camiseta que trabajan con las máquinas hasta hacerlas chirriar.%
En un banco, apartado en una esquina, Stanislav lee un periódico con su librito apoyado en el regazo.%

*[Acercarte a Stanislav%]
-
Stanislav rasga el periódico hasta arrancar una parte y guardarla en su libro.%
Cuando te acercas se lo guarda en el bolsillo y cierra el periódico.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¿Qué haces aquí, Johan? ¿Han dejado que te el aire hoy?%

~character = "Narrador%Narrator"
~sprite = ""
Stanislav se ríe, aunque arruga la cara al mover la nariz.%

~character = "Johan%Johan"
~sprite = "Stanislav"
Me toca turno en el patio.%
Todo el mundo parece bastante... entretenido.%
¿Tú no haces nada?%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¿Yo? Esos animales solo me aceptarían para usarme como balón.%
Prefiero seguir leyendo. Además, tengo que tener cuidado con mi nariz.%

~character = "Johan%Johan"
~sprite = "Stanislav"
¿Qué tal la llevas?

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Duele. Duele mucho.%
Creo que es lo más doloroso que he sentido en mi vida.%
Más doloroso incluso que me dejaras en manos de Luka.%

~character = "Johan%Johan"
~sprite = "Stanislav"
Mejor dejarte con Luka que con Kalev, ¿no?%
¿Te hace un segunndo asalto?%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Lo lamento, pero no puedo aceptar la oferta.%
Creo que prefiero seguir leyendo. Aunque parezca mentira, no tenemos demasiado tiempo libre.%

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Dejas a Stanislav continuar con su lectura, no sin antes echar un vistazo a la portada del periódico.%
Está repleta de noticias sobre política.%
No puedes leer mucho de la página arrancada.%
Stanislav ha marcado las palabras "juicio" y "asesinato" en una de las páginas.%
Stanislav carraspea y cierra el periódico hasta que te marchas.%

~character = "Narrador%Narrator"
~sprite = ""
El sol desciende por el horizonte y los muros de cemento van proyectando su sombra sobre el patio.%
Los guardias comienzan a indicar a  los presos que han de volver a sus celdas.%
Con el estómago rugiendo, te diriges a la cantina con Luka.%

->Canteen

=CellCorridorStanislav1
~background = "cellcorridor"
~character = "Narrador%Narrator"
~sprite = ""
De camino a la sala de recreo pasas frente a la celda de Kalev.%
No hay rastro del preso.%
Su colchón está tirado en el suelo, con una raja en el centro y el relleno desperdigado por toda la celda.%

*[Continuar a la sala de recreo%]
~questionId = 43
->Breakroom
*[Ir a la celda de aislamiento%]
~questionId = 44
    ~character = "Narrador%Narrator"
    ~sprite = ""
    Caminas por el corredor hasta llegar a las celdas de aislamiento en el fondo.%
    ~background = "heavydoor"
    Escuchas los susurros de un sollozo escapar entre los tornillos y bisagras de la enorme puerta de acero.%
    **[Acercarse a ver a Kalev%]
    --
    Tratas de acercarte a la celda de aislamiento, pero hay dos guardias apostados a los lados.%
    Les escuchas hablar acerca de la mafia y su impacto en el desarrollo de Moscú.%
    Decides dejar la visita a Kalev para más tarde. Te diriges a la sala de recreo.%
    ->Breakroom

=Breakroom
~background = "breakroom"
~sfx = "Gente de fondo hablando"
~character = "Narrador%Narrator"
~sprite = ""
Un olor a sudor mezclado con palomitas te golpea al entrar en la sala de recreo.%
Varios presos están reunidos en torno a una mesa de billar, planeando su próxima tirada.%
El sofá de la habitación está cubierto de pelusillas y alguna mancha roja seca.%
~sfx = "Zumbido"
La televisión está encendida sin ningún canal puesto, inunando la sala de un ruido de estática.%
Te apoyas en una de las paredes de la habitación, observando a cada uno de los presos.%
Stanislav entra en la sala con su librito bajo el brazo.%
Se sienta en el sofá y se recoloca la barriga antes de alcanzar el mando a distancia.%

*[Acercarse a Stanislav%]
-
Dejas tu sitio contra la pared para sentarte en el sofá junto a Stanislav.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¡Johan, muchacho! Veo que te han dejado salir del... ¿Cómo lo llamaba Luka?%
¿Establo?%

~character = "Narrador%Narrator"
~sprite = ""
Asientes mientras Stanislav enciende la televisión.%
Trastea con el mando, cambiando a un canal y a otro hasta pararse en un informativo de noticias.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Vamos a ver si tu pequeño encargo del otro día ha servido para algo.%

~character = "Narrador%Narrator"
~sprite = "TV"
Un hombre trajeado se acerca a un atril rodeado de cámaras y micrófonos.%
Los presentadores le introducen como Viktor Barinov mientras saca una pila de papeles de su maletín.%
Da dos golpecitos al micrófono que tiene delante antes de comenzar a hablar.%
La televisión emite su mensaje con un deje robótico.%

~character = "Viktor%Viktor"
~sprite = "TV"
Queridos ciudadanos. Vengo hoy a hablaros acerca de las nuevas noticias que han surgido sobre el "caso Stanislav".%
Algunas fuentes hablan de una supuesta carta que ha recibido nuestro partido.%
En esta ficticia hoja de papel el convicto defiende, como ha hecho ya tantas veces, su condición de inocencia.%
Quiero recalcar que desde Rusia Renacida continuamos desligados del actual criminal y asesino Stanislav Volkov.%
Lamentamos que el anterior ministro de economía no sea capaz de reconocer y aceptar sus graves errores.%
Dada su continuada insistencia en su inocencia durante los años, desde el partido hemos tomado una decisión.%
No nos queda más remedio que eliminar su nombre de las puertas de nuestro museo de la moneda.%
El nombre de un asesino no puede coronar un monumento tan importante para Moscú.%
Eso es todo. Tengan todos ustedes una muy buena tarde.%

~character = "Narrador%Narrator"
~sprite = "tuvimos"
Viktor se aleja del atril mientras una avalancha de periodistas le asalta con micrófonos.%
Sus escoltas les cortan el paso hasta que Viktor se pierde en la distancia con su coche.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
¡Será malnacido! ¡Buitre!%
¡Eres un puto buitre Viktor, ¿me oyes?!%
UN.%
PUTO.%
BUITRE.%

~character = "Narrador%Narrator"
~sprite = ""
Stanislav cierra con fuerza su librito.%
Varios recortes de periódico salen volando desde las páginas hasta el suelo.%
Le ayudas a recogerlos mientras continua insultando a Viktor.%
Los recortes de periódico solo hablan de asesinatos y varios juicios fallidos.%

~character = "Johan%Johan"
~sprite = "Stanislav"
Ha dicho algo de unos asesinatos.%
¿Sabes de qué está hablando?

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Stanislav espira profundamente y colca sus manos sobre las tuyas.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Hace un tiempo, como... Uff, ¿dos años ya?%
Me la jugaron, Johan.%
Ese capullo de Viktor me cargó a las espaldas el asesinato de Adrik Akilov.%

~character = "Johan%Johan"
~sprite = "Stanislav"
¿Quién?%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Oh, nadie importante. Solo fue el vicepresidente del anterior partido gobernante.%
No te veo muy puesto en política, chaval.%
El caso es que, sorpresa sorpresa, con Adrik fuera de escena, Viktor no ha tenido competidor real en estas elecciones.%
Ese capullo... Con todo lo que he hecho para él y me deja aquí tirado.%
No sabes la de planes económicos que tenía organizados.%
Iva a levantar este maldito país, por mucho que a Viktor le costara.%
Oh, pero no te preocupes.%
Tengo pruebas. Muchas, sí.%
Está todo aquí, en este libro. Solo tengo que ordenarlo...

~character = "Narrador%Narrador"
~sprite = "Stanislav"
Stanislav comienza a sudar hasta empaparse la espalda.%
Sus ojos se van enrojeciendo cada vez más por cada página del libro que pasa.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Está todo aquí, Johan. Te lo prometo.%
Solo necesito llamar a Viktor y con esto le tendré cogido por los huevos.%
Pero nunca me contestan el teléfono en la oficina.%
Quizás si... ¿Tienes algo que hacer esta noche?%

~character = "Johan%Johan"
~sprite = "Stanislav"
*[Me das miedo, Stanislav%]
*[¿Qué te traes entre manos?%]
-
~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Estab pensando en que quizás podrías llamar tú.%

~character = "Johan%Johan"
~sprite = "Stanislav"
Ni de coña. No puedo hacerlo.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Venga, hombre. No seas así. Te dejaré mi libro.%
Lo tienes todo ahí dentro.%
Solo es una llamadita de unos minutos y le tendremos temblando.%

~character = "Johan%Johan"
~sprite = "Stanislav"
*[No puedo arriesgarme tanto%]
*[¿Qué saco yo de esto?%]
-
~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Bueno... ¿No merece la pena por hacerte amigo del futuro ministro de economía?%
A un futuro música como tú le podría hacer falta un préstamo de vez en cuando.%

~character = "Johan%Johan"
~sprite = "Stanislav"
Está bien. Pero diré que llamo de tu parte.%
Y no daré mi nombre.%
Tampoco haré más llamadas en el futuro.%
¿Trato?%

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Stanislav te coge la mano con ambos brazos y sonríe.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Trato hecho, amigo.%
No te arrepentirás.%
Ahora deja que te de un par de consejos para la llamada...%

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Stanislav repasa cada una de las páginas del libro indicando para qué podrías usar cada prueba.%
Apenas ha llegado a la mitad cuando un par de guardias entran en la sala de recreo y conducen a los presos a sus celdas.%
Stanislav te deja el libro bajo un cojín antes de marcharse con una sonrisa en la cara.%

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Sales de la sala de recreo con el libro oculto bajo la chaqueta hasta dejarlo en tu taquilla.%
Después, con el estómago rugiendo, te diriges a la cantina con Luka.%

->Canteen

=Canteen
~background = "canteen"
~hour = 2
~sfx = "Gente de fondo hablando"
~character = "Narrador%Narrator"
~sprite = ""
Te sientas junto a Luka en una de las mesas de la cantina.%
La comida no tiene mejor pinta que el resto de días, pero tu estómago pide a gritos devorarla.%

~character = "Luka%Luka"
~sprite = "Luka"
Entra que no veas después de un día duro de trabajo, ¿eh pipiolo?%

~character = "Johan%Johan"
~sprite = "Luka"
Cuesta admitirlo, pero sí.%

~character = "Narrador%Narrator"
~sprite = "Luka"
Sigues engullendo lo que quiera que sea que te han servido.%

~character = "Luka%Luka"
~sprite = "Luka"
Y... ¿vas a ver el partido hoy?%

~character = "Johan%Johan"
~sprite = "Luka"
No. No me va mucho ver deportes por la tele, la verdad.%
Estaré practicando un rato antes de dormir, casi no he tenido tiempo esta semana.%

~character = "Luka%Luka"
~sprite = "Luka"
Anda, ¿practicar el qué?%

~character = "Johan%Johan"
~sprite = "Luka"
Ah, pensé que ya te lo había comentado.%
Toco el teclado.%
Quiero dedicarme a la música.%

~character = "Luka%Luka"
~sprite = "Luka"
Me cago en la leche, pues sí que sabes cosas, pipiolo.%
A ver si me tocas algo un día de estos para animar al ganado.%

~character = "Johan%Johan"
~sprite = "Luka"
Estaría curioso dar mi primer gran concierto aquí, con los presos como público.%

~character = "Johan%Johan"
~sprite = "Luka"
Ahora que lo pienso. Llevo un CD en la mochila.%
¿Te gustaría llevártelo para escucharlo y me dices qué te parece?%

~character = "Luka%Luka"
~sprite = "Luka"
¡Pero bueno, cadete! ¡Me encantaría!%

~character = "Narrador%Narrator"
~sprite = "Luka"
Terminas la comida de la bandeja y te levantas del asiento.%
Sonríes cunado Luka se guarda tu CD antes de marcharte de vuelta al piso.%

->FlatDoorstep

=FlatDoorstep
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
En la puerta de la nevera encuentras un post-it con el logo de los Featherknights en una esquina.%
~character = "Fay%Fay"
~sprite = ""
"¡Hola Johan! Espero que haya ido bien el día.% #italics
Hoy no estaré en casa. Tenemos torneo.% #italics
PD: Te he dejado unas partituras sobre el teclado.% #italics
Son de mis favoritas. Fay" #italics

~character = "Johan%Johan"
~sprite = ""
¡Machácalos, Fay! Les echaré un vistazo a esas partituras.% #italics

->Flat

=Flat
~background = "apartmententrance"
~character = "Narrador%Narrator"
~sprite = ""
Te acercas al teclado en mitad del salón.%
Está cubierto por un montón de papeles grapados.%
"Villain", "Warriors", "Rolling Girl", "All Star".%

~character = "Johan%Johan"
~sprite = ""
No conozco ninguna de estas canciones.% #italics
No parecen demasiado complicadas, me aprenderé alguna para cuando Fay regrese.% #italics

~character = "Narrador%Narrator"
~sprite = ""
Coges la partitura de "Warriors" y entras en tu cuarto%

{Day_Two.HelpKalev} ->BeedroomKalev
{Day_Two.HelpStanislav} -> BeedroomStanislav

=BeedroomKalev
~background = "bedroom"
~character = "Narrador%Narrator"
~sprite = ""
Dejas las partituras sobre la mesa y te pones a rebuscar en la mochla.%
Encuentras la foto de Kalev en el fondo, escondida tras tu cuaderno.%
Echas un último vistazo a la sonrisa de Kalev, que braza por el hombro al otro chico rubio.%
Dejas la foto sobre el escritorio.%

~character = "Johan%Johan"
~sprite = ""
Pensé que nunca llegaría el fin de semana.% #italics
Estoy deseando salir de fiesta con los chicos.% #italics
Me pregunto qué me habrán comprado este año...% #italics

->BedroomEnd

=BeedroomStanislav
~background = "bedroom"
~character = "Narrador%Narrator"
~sprite = ""
Dejas la partitura sobre la mesa y te pones a rebuscar en la mochila.%
Encuentras la librea de Stanislav al fondo, escondida tras una chaqueta.%
Sacas una nota de papel con un número de teléfono escrito.%

~character = "Johan%Johan"
~sprite = ""
Allá vamos...% #italics

~character = "Narrador%Narrator"
~sprite = ""
Llamas al número de teléfono mientras abres la libreta de Stanislav sobre tu regazo.%

~character = "Secretario%Secretario"
~sprite = "Phone"
Oficina del partido Rusia Renacida, buenas noches.%
¿Puedo ayudarle?%

~character = "Johan%Johan"
~sprite = "Phone"
*[Buenas noches, necesito hablar con Viktor Barinov%]
*[Póngame con Viktor Barinov. Es urgente%]
-
~character = "Secretario%Secretario"
~sprite = "Phone"
Lo siento mucho. El señor Viktor está muy ocupado.%
Déjeme su nombre y le concertaré una cita.%
¿Qué tal le viene el 12 de enero?%

~character = "Johan%Johan"
~sprite = "Phone"
Es acerca de Stanislav.%
Creo que le interesa coger esta llamada.%

~character = "Secretario%Secretario"
~sprite = "Phone"
...%...
Deme un segundo. Veré que puedo hacer.%

~character = "Narrador%Narrador"
~sprite = ""
Ojeas la libreta de Stanislav varias veces mientras esperas con una música de ascensor de fondo.%
Varias gotas de sudor caen sobre las páginas dejando una marca.%

~character = "Secretario%Secretario"
~sprite = "Phone"
El señor Viktor está dispuesto a aceptar su llamada.%
¿Podría darme su nombre?


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
Muchas gracias, caballero.%
Le paso con VIktor.%

~character = "Johan%Johan"
~sprite = ""
Llegó el momento de la verdad.% #italics

~character = "Viktor%Viktor"
~sprite = "Phone"
Buenas noches. Viktor Barinov al habla.%

~character = "Johan%Johan"
~sprite = "Phone"

*[Tengo información sobre Stanislav%]
~character = "Viktor%Viktor"
~sprite = "Phone"
¿Se refiere a Stanislav Volkov?%
Yo también tengo información sobre él.%
Está encerrado en la cárcel de Moscú. Y durante un buen tiempo, espero.%
*[Sé lo que habéis hecho con Stanislav%]
~character = "Viktor%Viktor"
~sprite = "Phone"
Yo también sé lo que hemos hecho con él.%
Le hemos encerrado en la prisión de Moscú. Y durante bastante tiempo, espero.%
-

~character = "Johan%Johan"
~sprite = "Phone"
*[Se la habéis jugado%]
~character = "Viktor%Viktor"
~sprite = "Phone"
Si se refiere a lo del museo, en efecto, se la hemos jugado.%
No podemos grabar el nombre de un asesino en un monumento público.%
*[Le habéis utilizado]
~character = "Viktor%Viktor"
~sprite = "Phone"
Si se refiere a lo del museo, en efecto, le hemos utilizado.%
Le hemos utilizado para limpiar la imagen de Moscú.%
No podemos grabar el nombre de un asesino en un monumento público.%

-
~character = "Johan%Johan"
~sprite = "Phone"
*[Tengo pruebas%]
Tengo pruebas, Viktor.%
Sé que le has cargado el asesinato de Adrik Avilov a las espaldas.%
No pareces muy contento con sus propuestas para la reforma económica.%
-
~character = "Viktor%Viktor"
~sprite = "Phone"
Y de qué pruebas se trata, señor {name}.%

~character = "Johan%Johan"
~sprite = "Phone"
*[Fotografías de la coartada%]
~character = "Narrador%Narrator"
~sprite = ""
Pasas las páginas dela libreta de Stanislav con mano temblorosa.%

~character = "Johan%Johan"
~sprite = "Phone"
En estas fotografías puede verse a Stanislav salir de un coche con una... bueno, con una amiga.%
Está tomada la misma noche en la que, según su partido, asesinó a Adrik.
*[Recortes de periódico%]
~character = "Narrador%Narrator"
~sprite = ""
Pasas las páginas dela libreta de Stanislav con mano temblorosa.%

~character = "Johan%Johan"
~sprite = "Phone"
Estos recortes de periódico hablan sobre Stanislav.%
Le pillaron una noche saliendo de un coche con una... bueno, con una amiga.%
Esa misma noche debería estar asesinando a Adrik.%
Al menos según la versión de los hechos de su partido.%
-

~character = "Viktor%Viktor"
~sprite = "Phone"
Tegno que colgarle.%
Como dije durante la rueda de prensa, en Rusia Renacida nos desligamos completamente del señor Stanislav.%
Pase una buena noche, {name}.%
Y tenga cuidado. Creo que no sabe dónde se está metiendo.%

~character = "Narrador%Narrator"
~sprite = ""
El teléfono emite un pitido antes de cortar la llamada.%

~character = "Johan%Johan"
~sprite = ""
Espero que esto ayude a Stanislav... y que no me cause demasiados problemas.% #italics
Estoy deseando salir mañana de fiesta con los chicos.% #italics
Me pregunto qué me habrán comprado este año...% #italics

->BedroomEnd

=BedroomEnd
~background = "bedroom"
~character = "Narrador%Narrator"
~sprite = ""
Te arropas con las ´sábanas hasta el cuello y das un profundo bostezo antes de irte a dormir.%

->Day_Four

==Day_Four==
~day = 4
~hour = 0

->BedroomMorning

=BedroomMorning
~background = "bedroom"
~character = "Narrador%Narrator"
~sprite = ""
Escuchas el móvil vibrar sobre el escritorio.%
La luz de la pantalla ilumina la habitación junto a los pocos rayos de sol que entran por las rendijas de la persiana.%
Te levantas y coges el teléfono, restregándote los ojos con la otra mano.%

~character = "Luka%Luka"
~sprite = "Phone"
¡Hola, cadete! ¡Buenos días!

~character = "Johan%Johan"
~sprite = "Phone"
¿Qué quieres, Luka?%
Hoy tengo el día libre.%

~character = "Luka%Luka"
~sprite = "Phone"
Por eso mismo te llamaba.%
Ha surgido una... oportunidad de trabajo en la cárcel.%
Hay un tipo que no puede venir hoy y necesitamos un sustituto urgente.%
Creo que te interesa, pagan bien.%
MUY bien.%

~character = "Johan%Johan"
~sprite = "Phone"
¿Cuántas horas son?%
Necesito tener la tarde libre. Tengo planes.%

~character = "Luka%Luka"
~sprite = "Phone"
No te preocupes por eso, serán solo un par de horas como mucho.%

~character = "Johan%Johan"
~sprite = "Phone"
Supongo que me interesa entonces.%
¿De qué va el trabajo?%

~character = "Luka%Luka"
~sprite = "Phone"
¡Perfecto, chaval! Nos vemos en media hora en la cárcel.%

~character = "Narrador%Narrador"
~sprite = ""
Luka cuelga el teléfono bruscamente.%
Te vistes rápidamente y sales por la puerta con un sándwich en la mano.%

->PrisonReception

=PrisonReception
~background = "reception"
~character = "Narrador%Narrador"
~sprite = ""
~sfx = "Pasos_1"
La recepción de la cárcel está completamente vacía.%
Cada uno de tus pasos resuena por toda la habitación.%

~character = "Luka%Luka"
~sprite = "Luka"
¡Johan! Has llegado pronto y todo. Así me gusta.%
Sígueme. Vamos a tu nuevo puesto de trabajo.%

->ElectricChairDoor

=ElectricChairDoor
~background = "closeddoor"
~sfx = "Zumbido"
~character = "Narrador%Narrador"
~sprite = ""
Luka se para frente a la puerta de metal.%
Desbloquea los tres cerrojos y se saca una llave del bolsillo para abrir la cerradura.%

~character = "Luka%Luka"
~sprite = "Luka"
bienvenido al matadero.%

->ElectricChair

=ElectricChair
~background = "electricchair"
~sfx = "Zumbido"
~character = "Narrador%Narrador"
~sprite = ""
Un olor a polvo y humo subre toda la habitación.%
Te cuesta respirar, no sabes si por el polvo o la visión de la silla en el centro de la habitación.%
El zumbido monótono crece a cada paso que das hacia ella.%
 
~character = "Luka%Luka"
~sprite = "Luka"
El trabajo es muy sencillo. Solo tienes que bajar esta palanca cuando yo te lo diga.%
Cuando empieces a oler a barbacoa la subes.5
Tampoco hay que ser sádico.%

~character = "Johan%Johan"
~sprite = "Luka"
Luka...%
No puedo hacer esto.%
No puedo matar a una persona.%

~character = "Luka%Luka"
~sprite = "Luka"
Oye, oye. Tú no estás matando a nadie.%
Solo estás bajando una palanca, ¿entiendes?%

~character = "Johan%Johan"
~sprite = "Luka"
...%...

~character = "Luka%Luka"
~sprite = "Luka"
Vamos, chaval. Lo vas a hacer genial.%
Y piensa en la paga.%
Necesitarás bastante dinero para grabas más CDs como el que me diste.%
Es genial, Johan. Tienes talento.%

~character = "Narrador%Narrador"
~sprite = ""
Luka te pone la mano en la espalda y te dirige hacia la cabina de la sala.%
Arrastras los pies por la habitación levantando nuevas nubes de polvo en el ambiente.%

->ExecutionIntro

=ExecutionIntro
La sala se va llenando de nuevas personas.%
Toman asiento en banquetas dispuestas frente a la silla eléctrica.%
Luka les recibe a cada uno en la puerta hasta que las banquetas están llenas.%
La puerta de metal se abre una última vez hasta golpear la pared.%
Dos guardias vestidos con chalecos reforzados entran en la sala, arrastrando por los hombros a un preso.%
Luka cierra la puerta tras ellos antes de sentarse entre el público.%

{Day_Two.HelpKalev} ->ExecutionKalev
{Day_Two.HelpStanislav} ->ExecutionStanislav

=ExecutionKalev
~character = "Narrador%Narrador"
~sprite = ""
Los guardias sientan al preso en la silla y le atan las manos.%
Revelan un pelo rubio al levantar la bolsa de su cabeza.%

~character = "Johan%Johan"
~sprite = "Kalev"
Kalev...

~character = "Narrador%Narrador"
~sprite = "Kalev"
Kalev gira la cabeza para mirarte.%
Sientes un escalofrío al encontrar sus ojos vacíos.%
Su cara está totalmente pálida, sin vistas de una sonrisa o una lágrima.%
Los guardias le agarran con fuerza del cuello para forzarle a mirar al público.%
Luka te levanta un pulgar sentado entre el público, entre dos hombres altos con tatuajes de arañas y estrellas.%
Los guardias colocan una esponja húmeda sobre la cabeza de Kalev antes de bajar el casco de metal.%
Los dos guardias te miran y asienten antes de dar un paso atrás al público.%
Sientes cada uno de los tendones de tus dedos tensarse mientras tu cara se enfría y palidece.%
Alcanzas hacia la palanca de la pared...

*[Bajar la palanca%]
~sfx = "Palanca"

~character = "Johan%Johan"
~sprite = ""
Lo siento...% #italics

-
~character = "Narrador%Narrador"
~sprite = "Kalev"
~sfx = "Muertepreso_4"
Un olor a carne quemada empieza a invadir la habitación junto al crepitar de la electricidad.%

*[Subir la palanca]
~sfx = "Zumbido"
~character = "Narrador%Narrador"
~sprite = ""
Levantas la palanca y te desplomas en el suelo con la visión nublosa.%

->Canteen

=ExecutionStanislav
~character = "Narrador%Narrador"
~sprite = ""
Los guardias sientan al preso en la silla y le atan las manos.%
Revelan un pelo rubio al levantar la bolsa de su cabeza.%

~character = "Johan%Johan"
~sprite = "Stanislav"
Stanislav...

~character = "Narrador%Narrador"
~sprite = "Stanislav"
Stanislav gira la cabeza para mirarte.%
Sientes un escalofrío al encontrar sus ojos vacíos.%
Su cara está totalmente pálida, sin vistas de una sonrisa o una lágrima.%
Los guardias le agarran con fuerza del cuello para forzarle a mirar al público.%
Luka te levanta un pulgar sentado entre el público, junto a un tipo trajeado con un maletín.%
Los guardias colocan una esponja húmeda sobre la cabeza de Stanislav antes de bajar el casco de metal.%
Los dos guardias te miran y asienten antes de dar un paso atrás al público.%
Sientes cada uno de los tendones de tus dedos tensarse mientras tu cara se enfría y palidece.%
Alcanzas hacia la palanca de la pared...

*[Bajar la palanca%]
~sfx = "Palanca"

~character = "Johan%Johan"
~sprite = ""
Lo siento...% #italics

-
~character = "Narrador%Narrador"
~sprite = "Stanislav"
~sfx = "Muertepreso_5"
Un olor a carne quemada empieza a invadir la habitación junto al crepitar de la electricidad.%

*[Subir la palanca]
~sfx = "Zumbido"
~character = "Narrador%Narrador"
~sprite = ""
Levantas la palanca y te desplomas en el suelo con la visión nublosa.%

->Canteen

=Canteen
~hour = 1
~background = "canteen"
~sfx = "zumbido"
~character = "Narrador%Narrador"
~sprite = ""
Te despiertas en la cantina de la cárcel sentado junto a Luka.%
La cabeza te da vueltras y pulsa de forma intermitente.%

~character = "Luka%Luka"
~sprite = "Luka"
Al fin has despertado. Pensé que te perdía ahí dentro.%
Menuda barbacoa has montado. Buen trabajo, chico.%

~character = "Johan%Johan"
~sprite = "Luka"
...%...

~character = "Narrador%Narrator"
~sprite = "Luka"
Luka abre su bandeja de comida, arrancando el plástico y tirándolo por el aire.%
Te llega un olor a carne asada.%
Bajas la cabeza y cubres tus piernas y el suelo de vómito.%

~character = "Luka%Luka"
~sprite = "Luka"
¡Hostia!5
¿Te encuentras bien, Johan?%
Será mejor que te lleve a casa.%

~character = "Narrador%Narrator"
~sprite = ""
Luka te pone la mano en el hombro y te lleva en coche hasta tu piso.%

->FlatDoorstep

=FlatDoorstep
~hour = 2
~background = "apartmentdoor"
~sfx = "Zumbido"
~character = "Johan%Johan"
~sprite = "Luka"
Gracias por acompañarme, Luka.%
No creo que pudiera haber llegado yo solo.%

~character = "Luka%Luka"
~sprite = "Luka"
No hay de qué, Johan.%
Lo has hecho genial antes. Mañana te enviarán el cheque.%
Descansa este fin de semana.%

~character = "Johan%Johan"
~sprite = "Luka"
Igualmente, Luka.%

~character = "Narrador%Narrator"
~sprite = ""
Te tiembla la mano mientras tratas de introducir la llave en la cerradura.%
Cuando Luka se marcha caes al suelo frente a la puerta y rompes a llorar.%

~character = "Fay%Fay"
~sprite = "Fay"
¿Johan? ¿Estás bien?%

~character = "Narrador%Narrator"
~sprite = "Fay"
Escuchas la voz de Fay a través de la puerta.%
Te levantas de un salto y terminas de abrir la puerta.%
La cabeza te da vueltas.%

->Flat

=Flat
~background = "apartmententrance"
~sfx = "Zumbido"
~character = "Fay%Fay"
~sprite = "Fay"
Dios Johan, perdona pero... Uff.%
Tienes un aspecto horrible.%

~character = "Johan%Johan"
~sprite = "Fay"
Ya...%
Ha sido un día duro en el trabajo.%

~character = "Fay%Fay"
~sprite = "Fay"
¿Trabajas en fin de semana también?%
Vaya faena...%

~character = "Johan%Johan"
~sprite = "Fay"
Son horas extras.%
Las pagan bien.%
O eso me han dicho.%

~character = "Fay%Fay"
~sprite = "Fay"
Siéntate, anda. Acabo de prepararme un té. Puedes quedártelo.%

~character = "Johan%Johan"
~sprite = "Fay"
Gracias Fay, pero no creo que pueda tomar nada ahora mismo.%
Solo quiero terminar este día de una vez.%

~character = "Narrador%Narrator"
~sprite = "Fay"
Fay se te acerca y te rodea con los brazos.%
Te aprieta con fuerza mientras hundes la cabeza en su hombro, sollozando en silencio.%

~character = "Fay%Fay"
~sprite = "Fay"
Descansa, Johan. Te vendrá bien.%
Y oye, si te hace falta estoy en mi habitación.%

~character = "Johan%Johan"
~sprite = "Fay"
Gracias...%

~character = "Narrador%Narrator"
~sprite = ""
Arrastras los pies hasta tu habitación mientras Fay vuelve a la suya%

{Day_Two.HelpKalev} ->BeedroomKalev
{Day_Two.HelpStanislav} ->BeedroomStanislav

=BeedroomKalev
~background = "Bedroom"
~character = "Narrador%Narrator"
~sprite = ""
La habitación está oscura. Solo entran unos pocos rayos de luz de la luna entre la persiana.%
Cierras la puerta y te llevas las manos a las sienes, masajeándolas suavemente.%
Te tumbas sobre la cama con el uniforme sudado aún puesto.%
Al subir las piernas sobre el colchón golpeas algo blando.%
Comienza a brillar con una tenue luz azúl.%

~character = "Kalev%Kalev"
~sprite = "Kalev"
Hola, Johan.%

~character = "Narrador%Narrator"
~sprite = "Kalev"
Das un salto al ver a Kalev sentado, brillando, sobre tu caman.%
Te golpeas la cabeza contra la estantería y caes sobre el suelo mientras toda la habitación da vueltas.%

->TO_BE_CONTINUED

=BeedroomStanislav
~background = "Bedroom"
~character = "Narrador%Narrator"
~sprite = ""
La habitación está oscura. Solo entran unos pocos rayos de luz de la luna entre la persiana.%
Cierras la puerta y te llevas las manos a las sienes, masajeándolas suavemente.%
Te tumbas sobre la cama con el uniforme sudado aún puesto.%
Al subir las piernas sobre el colchón golpeas algo blando.%
Comienza a brillar con una tenue luz azúl.%

~character = "Stanislav%Stanislav"
~sprite = "Stanislav"
Hola, Johan.%

~character = "Narrador%Narrator"
~sprite = "Stanislav"
Das un salto al ver a Stanislav sentado, brillando, sobre tu caman.%
Te golpeas la cabeza contra la estantería y caes sobre el suelo mientras toda la habitación da vueltas.%

->TO_BE_CONTINUED

==TO_BE_CONTINUED==

->END