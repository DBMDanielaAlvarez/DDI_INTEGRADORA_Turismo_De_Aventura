CREATE DATABASE  IF NOT EXISTS `db_turismo_de_aventura` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_turismo_de_aventura`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: db_turismo_de_aventura
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbb_atractivo_turistico`
--

DROP TABLE IF EXISTS `tbb_atractivo_turistico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_atractivo_turistico` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` text NOT NULL,
  `Ubicacion` int unsigned DEFAULT NULL,
  `Tipo` enum('Gastronomia','Cultural','Naturaleza') NOT NULL DEFAULT 'Cultural',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '1',
  `Tipo_Ambiente` enum('Familiar','Adultos') NOT NULL DEFAULT 'Familiar',
  `Pueblo_Magico` int unsigned NOT NULL,
  `Valoracion_Global` float NOT NULL DEFAULT '5',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_atractivo1_ubicacion_idx` (`Ubicacion`),
  KEY `fk_atractivo2_pueblo_idx` (`Pueblo_Magico`),
  CONSTRAINT `fk_atractivo1_ubicacion` FOREIGN KEY (`Ubicacion`) REFERENCES `tbc_ubicaciones` (`ID`),
  CONSTRAINT `fk_atractivo2_pueblo` FOREIGN KEY (`Pueblo_Magico`) REFERENCES `tbc_pueblos_magicos` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_atractivo_turistico`
--

LOCK TABLES `tbb_atractivo_turistico` WRITE;
/*!40000 ALTER TABLE `tbb_atractivo_turistico` DISABLE KEYS */;
INSERT INTO `tbb_atractivo_turistico` VALUES (1,'Parroquia de Santa María de la Natividad','El centro de Atlixco gira alrededor de un quiosco de dos pisos donde es posible sentarse a tomar café. En una de las esquinas del zócalo se halla la Parroquia de Santa María de la Natividad, comenzada a construir a inicios de 1644. El templo destaca por sus dos altares de estilo churriguresco que se visten con obras del pintor poblano Luis Berrueco. La gente entra y sale de la iglesia o se entretiene en cualquiera de los restaurantes que hay bajo los cercanos portales.',NULL,'Cultural','2023-08-02 10:13:01',NULL,1,'Familiar',1,5),(2,'Iglesia de Santa María de la Asunción de Acapetlahuacan','Hermosa y solitaria iglesia, escondida detrás de los muros del antiguo convento franciscano ahora en silencio. El ex convento franciscano se compone de iglesia, claustro, dormitorios y huerta, aunque solo se puede visitar el templo. La fachada de la iglesia luce una portada de estilo mudéjar con influencia gótica, con la iconografía franciscana y la puerta de madera original, así como un portal de peregrinos y una línea de cruces griegas de tezontle negro que coronan el edificio. El interior tiene una nave con bóveda de nervaduras, característica de la arquitectura conventual franciscana, y un retablo mayor',NULL,'Cultural','2023-08-02 10:13:57',NULL,1,'Familiar',1,5),(3,'Ex Convento del Carmen','Una de las construcciones más antiguas de Atlixco. Ahí donde antes habitaron los carmelitas descalzos hoy existen un par de museos. El primero es el Museo de las Culturas del Valle de Atlixco, donde se exhiben objetos prehispánicos pertenecientes a distintas regiones de los alrededores. Además hay una sala dedicada al festival Huey Atlixcáyotl con muestras de la indumentaria usada durante la fiesta. En la parte de arriba del convento se halla el Museo de Santa Clara, un interesante espacio de arte sacro de principios del Virreinato.',NULL,'Cultural','2023-08-02 10:14:44',NULL,1,'Familiar',1,5),(4,'Capilla de la Tercera Orden','La Tercera Orden Franciscana regaló esta bella capilla que enamora con su bella fachada de estilo barroco. Presume un delicado trabajo con argamasa y con influencia indígena; destacan decoraciones vegetales y geométricas; nichos con las esculturas de San Pedro, San Pablo, San Antonio de Padua y San Francisco de Asís. No menos bello es su retablo barroco del interior, con esculturas y pinturas franciscanas.',NULL,'Cultural','2023-08-02 10:20:24',NULL,1,'Familiar',1,5),(5,'Murales del Palacio Municipal','Entrar a este recinto es encontrarse con una serie de murales, la mayoría son obra del artista Juan Manuel Martínez Caltenco. Cada uno da cuenta de diversos momentos importantes en la historia de Atlixco.',NULL,'Cultural','2023-08-02 10:22:07',NULL,1,'Familiar',1,5),(6,'Museo de la Talavera Alarca','En el luminoso museo puede verse el camino que la talavera ha recorrido desde el siglo XVI hasta nuestros días. El acervo está compuesto por más de 300 obras que pertenecen a artistas como Vicente Rojo, Juan Soriano, Sergio Hernández, Francisco Toledo y Javier Marín. Se presume por tener la colección de mayor relevancia de talavera en América Latina.',NULL,'Cultural','2023-08-02 10:31:51',NULL,1,'Familiar',2,5),(7,'Santuario de Nuestra Señora de los Remedios','Es la iglesia colocada por los españoles encima del pasado repleto de dioses indígenas que deseosos buscaban ocultar. La construyeron sobre la Gran Pirámide Tlachihualtépetl, la que con el tiempo habría de devenir cerro cubierto de naturaleza. La iglesia fue consagrada en 1549 y desde entonces se le mira allá en lo alto, con su hermosa cúpula peraltada cubierta de azulejos, sosteniendo diálogos imperceptibles con el gigante que al oriente humea, el volcán Popocatépetl.',NULL,'Cultural','2023-08-02 10:32:49',NULL,1,'Familiar',2,5),(8,'Conjunto Conventual de San Gabriel','Es una construcción que hace pensar más en una fortaleza que una iglesia, pues su barda atrial está poblada de almenas. El convento fue levantado por los franciscanos en 1549 sobre las ruinas de un templo dedicado a Quetzalcóatl. La fachada del templo es austera, pero el interior llena la mirada de bóvedas con nervaduras y pinturas que cuentan la vida de San Francisco de Asís. En el Portal de Peregrinos está la Biblioteca Franciscana y una pequeña galería de arte sacro. Llama la atención la Capilla de la Tercera Orden, con su portada barroca y sus columnas salomónicas. Pero nada se recuerda tanto como la Capilla Real o de los Naturales, un espacio proyectado para que el visitante se imagine lejos, en una mezquita, debajo de un techo de 49 cúpulas.',NULL,'Cultural','2023-08-02 10:36:00',NULL,1,'Familiar',2,5),(9,'Museo Regional de Cholula','Relata minuciosamente la historia y el espíritu de Cholollan. Tiene ocho salas de exhibición donde se cuenta el origen geológico y los vestigios arqueológicos del Valle de Cholula; se detalla la historia del basamento piramidal más grande del mundo, el cual marcó el fin de la época prehispánica y el nacimiento de una nueva cultura; se muestran piezas relacionadas con la cerámica poblana, alebrijes y proyecciones de video mapping en torno a México como Patrimonio Mundial. Pero el tesoro más preciado resguardado en este recinto es el Lienzo Quauhquechollan en el que los indígenas quauhquecholtecas dejaron plasmada su visión de la conquista española.',NULL,'Cultural','2023-08-02 10:44:45',NULL,1,'Familiar',2,5),(10,'San Pedro y San Andrés','A 8 kilómetros al oeste de la ciudad de Puebla espera el doble pueblo de Cholula, el que reúne a San Pedro y San Andrés. Cada uno tiene su propia plaza y sus iglesias, pero están tan cerca uno del otro que los límites ya no figuran y se piensa en los dos como si de un solo destino se tratara. Para familiarizarse con San Pedro hay que comenzar en la Plaza de la Concordia y para conocer San Andrés hay que presenciar el paisaje que supone el Santuario de Nuestra Señora de los Remedios.',NULL,'Cultural','2023-08-02 10:45:32',NULL,1,'Familiar',2,5),(11,'Parroquia de Santiago Apóstol','Hay que acercarse lenta y curiosamente a ella. Si bien la iglesia fue fundada en el siglo XVI, la fachada que ahora se ve, de argamasa, fue diseñada y retocada entre 1752 y 1822, y es el mejor ejemplo de ese barroco que los indígenas hicieron suyo, escondiendo a sus dioses entre la retahíla de imágenes cristianas. Si se busca, se encuentra; por ejemplo, Tláloc está oculto entre frutas y relieves. Las gárgolas son serpientes que en silencio guardan plegarias dirigidas a Quetzalcóatl. Arriba, en el tercer cuerpo, aparece Santiago Apóstol en alto relieve, llevándose consigo toda la Edad Media: con su caballo y su espada desenfundada. En la torre del lado derecho se encuentra el primer reloj elaborado por la famosa fábrica Centenario de Zacatlán. Y en el interior de la iglesia aguarda, sobre un altar neoclásico, la Virgen de la Asunción. Está acompañada por un par de retablos barrocos a los lados, dedicados al Sagrado Corazón y la Inmaculada Concepción.',NULL,'Cultural','2023-08-02 10:48:47',NULL,1,'Familiar',3,5),(12,'Basílica Menor de la Inmaculada Concepción','La existencia de este recinto se debe a los esfuerzos del padre Ildefonso Illescas, quien en lugar de diezmos pidió a los fieles colaboraran con piedras para levantarla. Desmesurada en tamaño, con sus catorce metros de altura y su azulado manto al vuelo, la imagen de la Inmaculada parece acoger a todo aquel que a ella se acerca. Fueron José Luis y Carmen Silva quienes la hicieron en la década de los sesenta, toda en madera de cedro. Sobre sus brazos lleva la virgen a Jesús niño y él a su vez sostiene a la paloma del Espíritu Santo.',NULL,'Cultural','2023-08-02 10:49:33',NULL,1,'Familiar',3,5),(13,'Palacio Municipal','Hay que detenerse en la entrada al palacio, pues un par de murales cuentan todo lo que es necesario saber de Chignahuapan: desde la leyenda prehispánica que narra su fundación o la danza que no olvida al patrón del pueblo, la de los santiagueros, hasta la ofrenda de las mil luces que se lleva a cabo en Día de Muertos.',NULL,'Cultural','2023-08-02 10:50:02',NULL,1,'Familiar',3,5),(14,'Laguna de Chignahuapan','Esta mítica laguna constituye una visita obligada. Es ella la que dio nombre al pueblo, pues sus nueve ojos de agua o manantiales son justamente lo que en náhuatl significa “Chignahuapan”. La laguna demanda una prolongada mirada. Llena de brillos, de nubes que pasan reflejadas, es perfecta para andar en lancha o recibir a los entusiastas que en septiembre asisten al Torneo de Pesca de Trucha.',NULL,'Naturaleza','2023-08-02 10:50:38',NULL,1,'Familiar',3,5),(15,'Quiosco mudéjar','El centro gira siempre en torno de su colorido quiosco. Construido en 1871, de madera, con el delicado entramado que solamente el arte mudéjar consigue, el quiosco asiste todos los días al ir y venir de la Plaza de la Constitución. Debajo de él quedó una fuente que a veces se olvida. Muy cerca hay un par de bustos rindiendo sincero homenaje a Rafael Méndez e Ildefonso Illescas. El primero enseñó al pueblo a hacer esferas, el segundo es el sacerdote que puso su empeño en levantar la Basílica de la Inmaculada Concepción. Hacia el suroeste de la plaza, una escultura de Gaspar Henaine, mejor conocido como “Capulina”, recuerda que el comediante nació aquí.',NULL,'Cultural','2023-08-02 10:51:55',NULL,1,'Familiar',3,5),(16,'Santuario del Honguito','En el barrio de Ixtlahuaca se encuentra el Santuario del Honguito, un templo que alberga un hongo petrificado encontrado en 1880. En este hongo hay varias imágenes, como la de un Cristo crucificado, “Nuestro Señor del Honguito”. El 3 de mayo de cada año hay actividades festivas como bailes y misas en honor a esta deidad.',NULL,'Cultural','2023-08-02 10:56:11',NULL,1,'Familiar',3,5),(17,'Zona arqueológica de Yohualichan','Centro ceremonial que alguna vez formó parte de la gran Totonacapan, la región presidida por El Tajín. Al igual al de la gran urbe, su estilo arquitectónico se caracterizaba por sus cuerpos piramidales ornamentados a base de nichos. Asentada sobre una ladera que decrece de sur a norte, diversos edificios fueron levantados sobre explanadas naturales; así, el juego de pelota ocupa la posición más alta con relación a la plataforma donde se localiza el centro ceremonial, que conforma un espléndido cuadrángulo compuesto por varias construcciones que dan al conjunto un impresionante aspecto.',NULL,'Naturaleza','2023-08-02 19:48:27',NULL,1,'Familiar',4,5),(18,'Museo Emma Flores de Morante','El primer antecedente de un museo en Cuetzalan  se remonta a 1963, cuando el arqueólogo Carlos  Romero Giordano se dio a la tarea de reunir objetos particulares en la planta baja de la casa  del Dr. Ismael Morante y su esposa Emma Flores con la intención de montar un museo provisional durante la Feria del Café.  Durante 20 años el museo permaneció bajo los cuidados de Emma Flores de Morante hasta 2002, cuando se trasladó el acervo a la Casa de Cultura, donde se le asignó el espacio en el actualmente se ubica. Desde 2011 funciona con el  nombre de Museo Emma Flores de Morante.',NULL,'Cultural','2023-08-02 19:49:01',NULL,1,'Familiar',4,5),(19,'Parroquia de San Francisco','Es de los principales edificios coloniales de Cuetzalan y posee un estilo renacentista. Fue construida en el siglo XVII y remodelada en la primera mitad del siglo XX, a la que incorporaron estilos como el dórico. Su interior es asombroso por la planta basilical de gran altura; en su exterior sobresale su enorme torre, y al frente el enorme palo de madera para la Danza de los Voladores.',NULL,'Cultural','2023-08-02 19:49:45',NULL,1,'Familiar',4,5),(20,'Santuario de Nuestra Señora de Guadalupe','Se trata de una construcción peculiar de estilo neogótico, inspirada en la Basílica de Lourdes en Francia. Se le conoce como iglesia de los “Jarritos”, pues su torre está decorada con pequeños jarros de barro. Para llegar hasta ella debes atravesar el camposanto que le sirve de atrio.',NULL,'Cultural','2023-08-02 19:50:18',NULL,1,'Familiar',4,5),(21,'Tianguis dominical','Es el día que la neblina se conjura con frutas y puestos de colores. Se coloca a lo largo de la plaza principal y en él todo parece venderse: guajes y bules, hongos, plátanos pera, plátanos manzana, rebozos de lana pintados con grana cochinilla. El pan dulce se acumula en cerros de azúcar, los viejos ofrecen remedios para las dolencias, el aire es una fábrica de aromas que por momentos entrega olor a café, a canela.',NULL,'Gastronomia','2023-08-02 19:51:38',NULL,1,'Familiar',4,5),(22,'Jardín Botánico Xoxoctic','Aquí espera todo un universo vegetal: orquídeas y helechos, plantas medicinales y un mariposario son los anfitriones de este lugar que busca preservar el bosque de niebla. Para conocer la labor que se desarrolla puedes pedir un recorrido guiado, hay también talleres y diversas actividades.',NULL,'Naturaleza','2023-08-02 19:52:18',NULL,1,'Familiar',4,5),(23,'Santuario del Señor en su Santo Entierro','Lo que en el siglo XVI comenzó como un convento agustino ahora es el Santuario del Señor en su Santo Entierro, el patrón del pueblo. Con paredes de piedra expuesta y una atmósfera de sencilla calma, el recinto no tiene más adornos que una cruz al centro y la imagen acostada del querido Cristo. A la derecha, un mural de Raúl Domínguez cuenta las peripecias que esta iglesia ha sufrido. A un lado se encuentra la Capilla de la Virgen de Guadalupe.',NULL,'Cultural','2023-08-02 19:54:31',NULL,1,'Familiar',5,5),(24,'Parroquia de Nuestra Señora de la Asunción','Llama la atención su azul y gigantesco domo, y mientras la mirada se acostumbra a tanta inmensidad, se agradece que del centro cuelgue un candil de esferas plateadas como si de minúsculos planetas se tratara. La construcción de este recinto se dio a mediados del siglo XX, por el arquitecto Carlos Lazo Barreiro. En el interior destaca la Virgen de la Asunción rodeada de un mural que representa la flora y fauna de la zona.',NULL,'Cultural','2023-08-02 20:04:34',NULL,1,'Familiar',5,5),(25,'Plaza de la Constitución','La sombreada Plaza de la Constitución de Huauchinango lo concentra todo: en las alturas quedan las ramas de los truenos y jacarandas, de las palmeras y fresnos; una fuente en el centro compite por llamar la atención con el quiosco de hierro forjado que dirige una esquina. Es común ver a las mujeres venidas de Cuacuila. Se sientan en el piso con sus largas nahuas y sus blusas bordadas, y venden a todo el que pasa tamales de puñete (así llamados porque se parecen al puño de una mano) y cacahuates hervidos o tostados.',NULL,'Cultural','2023-08-02 20:05:10',NULL,1,'Familiar',5,5),(26,'Centro Agroturístico Michu','Recorre los cultivos para conocer las características y propiedades de varias plantas, algunas como el arándano, algodón, aloe, azafán, caña de Jabalí y otras más. Hay servicio de hospedaje, alimentos y venta de productos orgánicos.',NULL,'Naturaleza','2023-08-02 20:06:47',NULL,1,'Familiar',5,5),(27,'Plantas ornamentales en Tenango de las Flores','A Tenango de las Flores se llega no solo a admirar su presa, también a comprar plantas ornamentales en el Mercado Isabel Díaz Castilla. Se trata de un ordenado mundo de hojas y flores donde se venden agapandos y bromelias, también azaleas, orquídeas y violetas, además de árboles de canela, piña, naranja o pimienta.',NULL,'Naturaleza','2023-08-02 20:07:28',NULL,1,'Familiar',5,5),(28,'Presa de Tenango','Se recuerda como el sitio que en los años cincuenta sirvió de escenario a María Félix y Pedro Infante para la filmación de Tizoc. Aún queda frente a la presa la diminuta casa de piedra que los vio enamorarse aunque fuera en ficción. Aquí se ofrecen paseos en lancha y a caballo, y hay una tirolesa. Un restaurante de mariscos a la orilla sacia cualquier antojo, lo mismo que los tlacoyos que vienen en las canastas de las mujeres que pasan por ahí. Y si es Navidad el ambiente se llena con el olor de los pinos y la calidez de las nochebuenas que a unos pasos se venden.',NULL,'Naturaleza','2023-08-02 20:08:34',NULL,1,'Familiar',5,5),(29,'Campestre Las Truchas','A ocho kilómetros de Huauchinango, sobre la carretera México-Tuxpan, por el antiguo Puente de Totolapa, está Campestre Las Truchas. Una pequeña represa con una cascada y la posibilidad de andar a caballo hacen que la tarde en este sitio sea toda naturaleza. Además, se pueden comer truchas preparadas según la imaginación prefiera.',NULL,'Gastronomia','2023-08-02 20:13:38',NULL,1,'Familiar',5,5),(30,'Cascadas de Totolapa y Salto Chico','El Consejo Municipal de Turismo ofrece la posibilidad de explorar los alrededores de Huauchinango (con paquetes donde se incluyen comidas y hospedaje). Con ellos se pueden conocer las presas (paseos en lancha y a caballo) y las muchas cascadas que hay en el municipio, como la Cascada Xopanapa donde se puede practicar rapel, las Cascadas de Totolapa o la Cascada de Tío Checo en cuyas pozas puedes nadar.',NULL,'Naturaleza','2023-08-02 20:14:36',NULL,1,'Familiar',5,5),(31,'Plaza Principal, escenario de la Danza de los Voladores','Un momento es suficiente para conocer el corazón de este Pueblo Mágico, rodeado de techos rojos. Se mira jugar a los niños en el sitio que a veces ocupan los voladores o las huapangueadas; el quiosco al centro es rodeado de palmeras. Es el lugar de reunión de quienes pasan al mercado municipal o entran a la Parroquia del Señor Santiago, la iglesia que los agustinos heredaron al pueblo en el siglo XVI, la misma que un siglo después habría de ser convertida en parroquia.',NULL,'Cultural','2023-08-02 20:15:30',NULL,1,'Familiar',8,5),(32,'Mirador de Ahíla','En la comunidad de Ahíla se practica la floricultura, las aves baten alas, se vuela en parapente y hay siempre ciclistas bajando en caravana sus colinas. Desde aquí se mira Pahuatlán a la distancia.',NULL,'Naturaleza','2023-08-02 20:16:45',NULL,1,'Familiar',8,5),(33,'Taller de Licores Artesanales y Jardín Botánico Santillán','Aquí se elaboran los licores de la región; son famosos los preparados con acachul, piña, mora o uva silvestre. También hay un jardín botánico con una colección de plantas de la región.',NULL,'Gastronomia','2023-08-02 20:23:54',NULL,1,'Familiar',8,5),(34,'Iglesia de Santa María de la Asunción','Un puente cruza la Avenida de la Paz y con solo subirlo se llega al hogar de Santa María de la Asunción. Ahí se levanta un recinto de estilo gótico con cruz latina; su fachada principal muestra columnas neoclásicas con un arco que alberga el acceso principal. A pesar de que la iglesia, construida en el siglo XIX, se levanta amarilla y sola en su atrio, basta con subir al campanario para entender que son los cerros llenos de neblina y no las paredes de la parroquia los que custodian a la santísima. Dentro, la recia arquitectura muestra dos bóvedas de cañón corrido con trabes basadas en sillares de cantera que rematan en su cruce con una espléndida bóveda cupular; ahí la representación de las cuatro anunciaciones de María, y su asunción en cuerpo y alma al cielo. Abajo, en el altar, espera la virgen con los brazos abiertos. Rodeada de ángeles y querubines, tiene la vista puesta en el cielo pintado al óleo que hay en la cúpula. De ese techo abovedado cuelga un enorme candil de cristal que añade brillos y refulgencias al encuentro con la reina de Tetela. En marzo de 2012, la iglesia ganó el título de La Iglesia del Año.',NULL,'Cultural','2023-08-02 20:24:55',NULL,1,'Familiar',7,5),(35,'Museo de los Tres Juanes','En el Centro Cívico Cultural se encuentra el museo donde conviven las piezas prehispánicas halladas en la región y los objetos que Tetela más aprecia: aquellos que recuerdan su participación en la Batalla del Cinco de Mayo, cuando la Segunda Intervención Francesa le regaló a México un puñado de héroes y una fecha que recordar, la de ese día de 1862. Así, en una primera sala se miran vasijas, manos de morteros, puntas de proyectil, metates y fragmentos de figurillas que pertenecen al tiempo antes de la Conquista.',NULL,'Cultural','2023-08-02 20:25:50',NULL,1,'Familiar',7,5),(36,'Centro Histórico','Algo de inmenso tienen los pequeños pueblos que entre montañas viven. Como si el ir y venir de los cerros alrededor alargara o deshiciera, de alguna manera, el nudo de casas que forman un punto en el paisaje. Y las de Tetela son a veces antiguas, de techos de teja y paredes blancas. Están dispuestas en derredor de la Plaza de la Constitución, donde hace mucho dialogan palmeras y pirules. Una estrella en el centro marca el sitio donde a veces salta una fuente danzarina, y a los costados se encuentran dos monumentos: uno a Benito Juárez, otro a \"Los Tres Juanes\": Juan Crisóstomo Bonilla, Juan Nepomuceno Méndez y Juan Francisco Lucas, tres generales que se hicieron de gloria durante la Segunda Intervención Francesa. Por años, ha sido el escenario donde tienen celebraciones cívicas y religiosas, y diversos eventos culturales. A una cuadra aparece el Mercado Municipal, donde las mujeres preparan gorditas desde temprano.',NULL,'Cultural','2023-08-02 20:35:12',NULL,1,'Familiar',7,5),(37,'Casa Museo Posada Olayo','Una bella historia de amor y lucha se guarda en esta casona hecha museo. La protagonista es Lolita, una poetisa tetelense nacida allá por 1898, para quien la vida no fue nada fácil debido a la época que  le tocó vivir. El discurso museográfico narra las aportaciones y creaciones de esta mujer así como las leyendas de trabajo y sacrificio femenino que vivió. Llama la atención un bordado creado por ella durante su encierro: Mi Cristo hecho con hilos de seda y cabellos de esta poetisa. Objetos personales, libros y retratos dan testimonio del estilo de vida de la época y de la forma de vida de una familia de artistas serranos.',NULL,'Cultural','2023-08-02 20:42:35',NULL,1,'Familiar',7,5),(38,'Casa Museo Tlapalcalli','El que fuera estudio del artista plástico Rafael Bonilla Cortes, hoy resguarda esculturas, relieves y parte de la obra pictórica de este tetelense de corazón –nacido en el poblado de Cuautempan–. Quien entre a este museo verá paisajes, retratos, desnudos y escenas cotidianas de la vida rural de Tetela.',NULL,'Cultural','2023-08-02 20:43:14',NULL,1,'Familiar',7,5),(39,'Plaza dominical','A Tetela hay que visitarla los domingos de plaza, cuando los puestos de artesanías se instalan frente al Palacio Municipal con la consigna de atrapar miradas. Los ojos se pasean entonces por los petates y morrales que con palma se tejen en la comunidad de La Lagunilla o los tejidos de lana de Xaltatempa de Lucas, luego se detienen en un quechquemitl de Hueyapan y Xaltatempa, esa prenda indígena, hermosa y triangulada, que lleva bordado un universo de grecas, animales y flores, y que está destinada a cubrir el pecho de las mujeres.',NULL,'Cultural','2023-08-02 20:43:44',NULL,1,'Familiar',7,5),(40,'Murales históricos','La historia de Tetela se aprende viendo los murales que adornan las paredes laterales del Palacio Municipal. Hay dos en el salón de actos: uno semeja un códice que explica la creación del pueblo, el otro narra en alto relieve la Batalla del Cinco de Mayo. Pero es el mural en los portales del Palacio el que con más dramatismo cuenta los pormenores de ese glorioso episodio donde los tetelenses y otros serranos vencieron a los franceses. En él aparecen Benito Juárez, Ignacio Zaragoza y Melchor Ocampo; también \"Los Tres Juanes\" con rostros serios y ese aire digno que solo la defensa de la soberanía otorga. Titulado Fecha inmortal, es obra de Sergio Ávalos, el artista que trabajó en la construcción del Hemiciclo que rinde homenaje al Sexto Batallón de Guardia Nacional del Estado de Puebla, ubicado en el zócalo. En el cuerpo central del monumento se mira la arenga atribuida al general Ignacio Zaragoza, antes de la Batalla del 5 mayo de 1862, coronada por un águila republicana. Luce seis estelas con diferentes alegorías que muestran episodios determinantes durante la Intervención Francesa.',NULL,'Cultural','2023-08-02 20:44:34',NULL,1,'Familiar',7,5),(41,'Parroquia de Santa María de la Asunción y Casa Cural','Se acompaña por un atrio almenado. Es el hogar de la patrona del pueblo fue primero un convento fundado por franciscanos en 1531, y el aspecto que ahora tiene lo obtuvo hasta el siglo XIX. El interior es un mundo de madera por el que los ojos se pasean: el techo mudéjar, el barandal del coro que se extiende a lo largo de la nave, el altar principal y la misma virgen, todo está tallado, todo brilla o tiene cosas que decir. Al lado, adornando las paredes de la Casa Cural, se encuentran las pinturas de Luis Toral González, el famoso artista de Zacapoaxtla que también firmó los murales del interior de la Iglesia del Sagrado Corazón de Jesús.',NULL,'Cultural','2023-08-02 20:50:00',NULL,1,'Familiar',6,5),(42,'Plaza Principal','En lugar de quiosco, la Plaza Principal tiene una fuente al centro; palmeras y una araucaria la acompañan. Alrededor se extienden los anaranjados portales bajo los que transcurre la vida del pueblo. Están el Palacio Municipal y la Iglesia del Sagrado Corazón de Jesús. Un incendio en 1955 hizo que el techo de madera fuera suplantado por una bóveda de cañón corrido. Y si se mira el altar en busca de consuelo, este se encuentra en la resplandeciente imagen del Sagrado Corazón. Más allá, entre nubes, se alza el Cerro Cabezón, la interrumpida montaña de superficie caliza que le da nombre a este rincón poblano.',NULL,'Cultural','2023-08-02 20:50:36',NULL,1,'Familiar',6,5),(43,'Rincón de los Recuerdos','Este museo fue fundado por Jorge Alberto Guzmán. Sorprende encontrarse con toda clase de objetos: desde fósiles, piezas prehispánicas, timbres y monedas antiguas, hasta baúles, butacas de cine, máquinas de cocer y de escribir; además de armas, fotografías y documentos del Tlatlauquitepec de hace más de un siglo.',NULL,'Cultural','2023-08-02 20:51:13',NULL,1,'Familiar',6,5),(44,'Cerro del Cabezón','La interrumpida montaña de superficie caliza que le da nombre a este rincón poblano. Porque Tlatlauquitepec quiere decir en náhuatl “Cerro que colorea o arde”. Al que ama la espeleología debe visitarlo, porque está lleno de grutas. Tres cables de tirolesa (de 80, 150 y 200 metros) otorgan a quien los atraviesa la posibilidad de volar con Tlatlauquitepec a la distancia.',NULL,'Naturaleza','2023-08-02 20:51:52',NULL,1,'Familiar',6,5),(45,'Parroquia de San Juan Bautista','Antes conocida como la Parroquia del Calvario. Se trata de una construcción erigida en el siglo XVI por los agustinos, y se ha ido modificando hasta adquirir ese aspecto neogótico en su fachada. Un portón de madera rodeado de arcos ojivales conduce hasta el interior neoclásico, donde esperan en el altar la imagen de Cristo con San Juan Bautista y San José, a un lado.',NULL,'Cultural','2023-08-02 22:06:32',NULL,1,'Familiar',9,5),(46,'Monumental Virgen de Guadalupe','Fue levantada en 2006, ahí donde se había aparecido antes, sobre el banco de piedras del barrio El Tabacal. Rodeada por una plazuela hecha para poder contemplarla, la virgen del manto verde con sus 23 metros de altura obliga al que la visita a tener en alto la cabeza.',NULL,'Cultural','2023-08-02 22:08:17',NULL,1,'Familiar',9,5),(47,'La Xochipila','Es una peña que desde siempre ha fungido como centro ceremonial para los habitantes de Xicotepec. Aquí se concentra toda la energía de un pueblo deseoso de renovarse y agradecer lo recibido cada año. Un sitio místico y lleno de sincretismos, donde quizá no se olvide el orden establecido por el catolicismo, pero al que se superpone la creencia en la magia y los antiguos dioses.',NULL,'Cultural','2023-08-02 22:08:53',NULL,1,'Familiar',9,5),(48,'Museo Casa Carranza','La antigua casa donde fue velado el cuerpo de Venustiano Carranza –antes de ser llevado a la Ciudad de México– es ahora el museo dispuesto a recordarlo. Aquí quedaron guardadas sus vísceras, en una urna que participa cada año de la ceremonia luctuosa celebrada por sus descendientes. La museografía está hecha de láminas que cuentan los sucesos alrededor de la muerte del caudillo y presidente: desde la persecución sufrida y el atentado de 1920, hasta el cortejo fúnebre que lo despidió de la historia mexicana. También hay fotos viejas del pueblo y del paso de los revolucionarios por aquí. Un video ahonda en el asesinato de Carranza, mientras que el mural elaborado por la Fundación Arellano lo recuerda mostrando orgulloso su Constitución de 1917.',NULL,'Cultural','2023-08-02 22:10:29',NULL,1,'Familiar',9,5),(49,'Iglesia de Santa María de Guadalupe','Hay que poner atención al camino entre Xicotepec y Tlaxcalantongo, un agradable y caluroso trayecto lleno de vegetación. No hay que perderse las pahuas (los aguacates de la sierra poblana) y los chalahuites (esas vainas que en su interior guardan semillas algodonadas). Y mientras los árboles tiran fruta y las gallinas andan sueltas, en los patios de las casas se miran granos de café secándose al sol. No se olvida, a la orilla de la carretera, una breve iglesia por la que detrás se asoman las montañas apresuradas. Es la Iglesia de Santa María de Guadalupe, en Ahuaxintitla.',NULL,'Cultural','2023-08-02 22:11:23',NULL,1,'Familiar',9,5),(50,'Casa del Monje','Vegetación, senderos y arroyos rodean esta famosa casa que encierra una leyenda muy conocida en Xicotepec. Se refiere al asesinato cometido por un joven hacia sus padres. Desde entonces, se dice que cada 4 de octubre ronda el lugar.',NULL,'Naturaleza','2023-08-02 22:12:47',NULL,1,'Familiar',9,5),(51,'Cascadas Barbas de Carranza','Presume un par de caídas de agua que vale la pena visitar. Una está a pie de carretera y no es muy grande, pero la otra está sumergida entre árboles y juegos de luces y sombras. No muy lejos, rumbo a Ávila Camacho, aparece el río Cilima acompañado por un puente colgante. En épocas de lluvia es posible hacer rafting aquí. Si quieres algo más tranquilo camina por los alrededores y contempla el agua correr.',NULL,'Naturaleza','2023-08-02 22:14:08',NULL,1,'Familiar',9,5),(52,'Ruta del Café Aristóteles','Una visita a Finca Los Pinos te permitirá conocer la producción del café orgánico; camina por los sembradíos en temporada de corte; viaja a la colonia Chivería de Xicotepec donde está la planta tostadora de café y viveros de café.',NULL,'Gastronomia','2023-08-02 22:16:00',NULL,1,'Familiar',9,5),(53,'Mirador de la Cruz Celestial','El sendero a la Majestuosa Cruz Celestial fue desde la época precolombina parte del Camino Real que conectaba a Xicotepec con la costa y ciudades. Ahora, es el lugar donde las vistas de Xicotepec y la región muestran la grandeza de la Sierra Norte.',NULL,'Naturaleza','2023-08-02 22:18:19',NULL,1,'Familiar',9,5),(54,'Museo de Relojes y Autómatas','Los amantes de los relojes encontrarán en Zacatlán un paraíso. El Museo de la Relojería es como entrar al mero corazón del tiempo. En 1918, don Alberto Olvera Hernández se dio a la tarea de fabricar grandes maquinarias y fundó la fábrica Centenario. Hoy, sus nietos se encargan de la empresa y del establecimiento, abierto al público desde 1993. En este museo descubrirás calendarios y relojes antiquísimos de todas partes del mundo y de todos los tipos, desde solares, de arena y engranajes, hasta de agua, de bolsillo o de cadena. Aventúrate y descubre las formas en las que el hombre ha medido el tiempo desde la antigüedad. Te aseguramos que después de recorrer los pasillos del lugar, tu percepción del tiempo cambiará por completo.',NULL,'Cultural','2023-08-02 22:20:43',NULL,1,'Familiar',10,5),(55,'Conjunto Conventual Franciscano','Hace alarde de la característica sobriedad que en el siglo XVI imprimió la orden sacerdotal a todas sus construcciones. Dentro del templo aguardan tres naves y al fondo, después de una larga hilera de arcos de medio punto, recibe al visitante la Inmaculada Concepción. Arriba de ella, en un nicho a contraluz, está San Francisco. Y mientras se camina por el piso de ladrillos antiguos, se descubre que aún quedan en las paredes rastros de ya perdidos frescos y un órgano en el coro en espera de volver a ser tocado. En el claustro se encuentra ahora la Casa de Cultura y en ella el Museo Comunitario Luciano Márquez Becerra, el sitio al que acudir si se quiere conocer el pasado prehispánico y la historia del pueblo.',NULL,'Cultural','2023-08-02 22:21:26',NULL,1,'Familiar',10,5),(56,'Parroquia de San Pedro y San Pablo','Es un edificio de mediados del siglo XVII que ostenta orgulloso su fachada de cantera gris. En su interior neoclásico puede verse a Cristo presidiendo un altar blanco laminado en oro, y a sus costados se hallan, por supuesto, San Pedro y San Pablo. Antes de abandonar la iglesia hay que detenerse en la Capilla de Guadalupe y admirar los cuadros virreinales con leyendas en náhuatl, así como el asombroso techo de madera de cedro.',NULL,'Cultural','2023-08-02 22:21:59',NULL,1,'Familiar',10,5),(57,'Bodega Delicias','Es la fábrica que en 1928 comenzaron Gilberto y Ernesto Martínez para hacer vino con manzanas. Unos años después elaborarían también sidra y luego el característico refresco de manzana que nadie olvida. Se puede entrar al cuarto de máquinas para ver cómo se producen las bebidas, pero lo cierto es que la mayor parte del tiempo al estar aquí se ocupa en observar los abarrotados estantes que hay en la tienda. Hechos con las frutas de la región (membrillo, durazno, mora azul, zarzamora, capulín y ciruela), relucen los frascos de vinos y cremas, de mermeladas que el paladar imagina que desea.',NULL,'Gastronomia','2023-08-02 22:22:38',NULL,1,'Familiar',10,5),(58,'Plaza de Armas','Esta plaza gira en torno de un agigantado reloj cubierto de flores. Instalado en 1986 por Relojes Centenario, sus dos carátulas se accionan de manera simultánea movidas por un mecanismo central. Si se camina hacia el sur cruzando el Parque Juárez, se llega a la Parroquia de San Pedro y San Pablo, más adelante está el Conjunto Conventual Franciscano.',NULL,'Cultural','2023-08-02 22:23:07',NULL,1,'Familiar',10,5),(59,'Carnaval','Se trata de una tradición que incluye danzas, vestuario, música y festejo que se conmemora desde 1868 durante el mes de febrero. Lo consideran como el único carnaval de todo México que cuenta un argumento histórico, ya que este relata acontecimientos como la batalla del 5 de mayo.Aquí miles de personas se disfrazan con máscaras, túnicas, ocupando fusiles para transformar las calles del pueblo en un enorme escenario y representar episodios históricos. ',NULL,'Cultural','2023-08-03 19:15:56',NULL,1,'Familiar',11,5),(60,'Ex Convento San Miguel Arcángel','Templo católico, que cuenta con una arquitectura de tipo colonial y es uno de los cuatro primeros establecimientos franciscanos en México y en Nueva España. Esta edificación, fue nombrada como Patrimonio de la Humanidad por la UNESCO desde 1994, en este templo se venera a San Miguel, patrono de Huejotzingo. Se empezó a construir en 1525 y se terminó en 1570 por el arquitecto Toribio de Alcaraz, se sabe que cuenta con una superficie de 14 mil 400 metros cuadrados.',NULL,'Cultural','2023-08-03 19:17:02',NULL,1,'Familiar',11,5),(61,'Feria de la Sidra','Huejotzingo es la cuna de la sidra artesanal, pues concentra 85% de la producción regional, en este municipio hay 20 empresas, que producen de manera artesanal esta bebida espumosa.',NULL,'Gastronomia','2023-08-03 19:18:11',NULL,1,'Familiar',11,5),(62,'Catedral de Santa María de la Asunción','Resalta su aspecto con un estilo barroco y neoclásico. Además, cuenta con 4 mil 388 piezas de piedra de cantera de Xaltipan. Una opción perfecta para presumir fotos en redes sociales.',NULL,'Cultural','2023-08-03 19:19:20',NULL,1,'Familiar',12,5),(63,'Teatro Victoria','El teatro fue inaugurado en el año de 1883, tiene un estilo francés único, de tipo neoclásico en su diseño de construcción. Uno de los datos curiosos, es que en sus más de 100 años, además de teatro, ha sido cine y sede de espectáculos como bailes y coronaciones de feria.',NULL,'Cultural','2023-08-03 19:20:06',NULL,1,'Familiar',12,5),(65,'Bosques de bambú','Este espacio forma parte del llamado “Circuito de niebla”, donde los habitantes ofrecen un tour por cultivos de bambú, de café, zarzamora y también la visita de cascadas. En el bambusal existen más de cinco especies de bambú, incluido el bambú negro y es el lugar perfecto para conectarse con la naturaleza. Para llegar a este sitio ubicado en Teziutlán, hay que trasladarse hasta las comunidades de Ahuata y Coyopol por la carretera estatal que conduce hasta estas juntas auxiliares. ',NULL,'Naturaleza','2023-08-03 19:33:25',NULL,1,'Familiar',12,5),(66,'Manantiales','En este nuevo Pueblo Mágico, también encontrarás manantiales. Un lugar donde disfrutarás de aguas frías y cristalinas de los mantos acuíferos que descienden del cerro de Chignautla. Aquí los visitantes gozarán de áreas verdes, zona de comida y juegos para los niños, además de lanchas para recorrer sus aguas. El precio de entrada oscila entre los 30 y 50 pesos, un plan super económico que puedes disfrutar con tu familia.',NULL,'Naturaleza','2023-08-03 19:37:20',NULL,1,'Familiar',12,5);
/*!40000 ALTER TABLE `tbb_atractivo_turistico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_comentarios`
--

DROP TABLE IF EXISTS `tbb_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_comentarios` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Descripcion` text NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Tipo` enum('Positivo') NOT NULL,
  `Publicado` tinyint(1) DEFAULT NULL,
  `ID_Usuario` int unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_comentario1_usuario_idx` (`ID_Usuario`),
  CONSTRAINT `fk_comentario1_usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `tbb_usuarios` (`Persona_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_comentarios`
--

LOCK TABLES `tbb_comentarios` WRITE;
/*!40000 ALTER TABLE `tbb_comentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_personas`
--

DROP TABLE IF EXISTS `tbb_personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_personas` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Primer_Apellido` varchar(50) NOT NULL,
  `Segundo_Apellido` varchar(50) NOT NULL,
  `Genero` enum('M','F','N/A') NOT NULL DEFAULT 'N/A',
  `Fecha_Nacimiento` date NOT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '1',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_personas`
--

LOCK TABLES `tbb_personas` WRITE;
/*!40000 ALTER TABLE `tbb_personas` DISABLE KEYS */;
INSERT INTO `tbb_personas` VALUES (1,'Laura','Mejía','Vargas','F','1944-12-26',1,'2023-07-13 06:46:05',NULL),(2,'Uziel Luis','Briones','Gutiérrez','M','1959-02-27',1,'2023-05-15 05:34:06',NULL),(3,'Isabel Carolina','Wurtz','Chávez','F','1991-01-29',1,'2023-05-21 01:26:47',NULL),(4,'Valeria','de la Cruz','Pérez','F','1987-10-29',1,'2023-05-17 14:30:43',NULL),(5,'Pablo Ramón','Mejía','Rivera','M','1969-10-10',1,'2023-06-20 01:14:58',NULL),(6,'Xavier Hugo','Vázquez','Rodríguez','M','1991-06-24',1,'2023-06-03 22:52:55',NULL),(7,'Zara','Castro','Silva','N/A','1984-07-18',1,'2023-06-22 14:25:17',NULL),(8,'Rosa Isabel','Mendoza','Ibarra','F','1944-08-12',1,'2023-05-15 21:50:25',NULL),(9,'Salvador','Rosas','Sánchez','M','2007-02-23',1,'2023-05-26 05:37:44',NULL),(10,'Barbara','González','Miranda','F','1977-03-28',1,'2023-06-20 00:26:49',NULL),(11,'Karim Edgar','Rodríguez','Castro','M','1986-11-27',1,'2023-06-05 18:33:12',NULL),(12,'Gustavo','Téllez','Cruz','M','1987-08-03',1,'2023-07-22 00:45:01',NULL),(13,'Fernando Ramón','Méndez','González','M','1951-01-30',1,'2023-07-15 03:20:53',NULL),(14,'Gerardo','Ximénez','Velazquez','M','1962-10-12',1,'2023-06-20 09:33:11',NULL),(15,'Elena Josefa','Alvarado','Hernández','F','1981-12-24',1,'2023-06-09 07:56:27',NULL),(16,'Elena','Rosales','Salazar','F','1950-10-05',1,'2023-07-14 05:20:25',NULL),(17,'Jazmín','Vargas','Silva','F','1982-08-27',1,'2023-06-12 19:04:06',NULL),(18,'Uriel Fernando','Reyes','Hernández','M','1948-02-10',1,'2023-06-05 16:02:04',NULL),(19,'Ofelia Nadia','Rivera','Aguilar','F','1953-12-12',1,'2023-07-08 03:28:32',NULL),(20,'Nadia Renata','Domínguez','Vázquez','F','1994-04-18',1,'2023-06-01 15:58:50',NULL),(21,'Daniela','Muñoz','Gómez','F','2004-07-18',1,'2023-08-03 15:03:12',NULL),(22,'Helena','Méndez','Briones','F','1964-06-04',1,'2023-06-18 19:33:30',NULL),(23,'Patricia','Guzmán','Ramírez','F','1986-04-16',1,'2023-06-08 04:43:04',NULL),(24,'Iván','Martínez','Cortés','M','1977-04-07',1,'2023-06-07 02:38:27',NULL),(25,'Laura','Espinoza','Espinoza','F','1954-04-05',1,'2023-07-23 18:33:04',NULL),(26,'Camilo Edgar','Sánchez','Rojas','M','2004-12-09',1,'2023-05-29 17:09:31',NULL),(27,'Magdalena','Santiago','Ramos','F','2001-10-21',1,'2023-06-08 04:35:55',NULL),(28,'Nabor','Sánchez','Castillo','M','1950-03-14',1,'2023-06-13 21:35:26',NULL),(29,'Renata','Trejo','Herrera','F','1978-10-22',1,'2023-07-27 08:29:42',NULL),(30,'Elena','Estrada','González','F','1981-07-30',1,'2023-07-13 15:55:19',NULL),(31,'Nabor','Briones','Quiróz','M','1946-02-26',1,'2023-07-31 20:59:06',NULL),(32,'Víctor Bernardo','Navarro','Juárez','M','2002-05-28',1,'2023-05-21 03:48:53',NULL),(33,'Uziel Gonzálo','García','León','M','1942-05-18',1,'2023-07-20 12:54:31',NULL),(34,'Ernesto','Vargas','Rodríguez','M','1948-01-13',1,'2023-07-07 19:25:21',NULL),(35,'Sofía','Gutiérrez','Wurtz','F','1979-05-09',1,'2023-07-16 01:23:12',NULL),(36,'Josefa Salomé','Vargas','Guerrero','N/A','1946-03-28',1,'2023-06-23 07:34:32',NULL),(37,'Jaqueline','Díaz','Moreno','F','2002-10-25',1,'2023-06-28 23:02:37',NULL),(38,'Zacek','Valdéz','Camacho','M','1968-05-12',1,'2023-05-21 01:56:19',NULL),(39,'Ignacio Yahir','Ávila','Ríos','M','1948-08-01',1,'2023-06-14 14:44:44',NULL),(40,'Ramón Víctor','Domínguez','Hernández','M','1961-11-05',1,'2023-05-20 23:36:37',NULL),(41,'Valentín','Moreno','Maldonado','M','1943-01-02',1,'2023-06-23 16:47:41',NULL),(42,'Valeria','García','López','F','1994-09-08',1,'2023-08-03 19:28:50',NULL),(43,'Antonio','Contreras','Cervantes','M','1989-07-12',1,'2023-05-22 11:11:24',NULL),(44,'Quetzálcoatl','Paredes','Sampayo','M','1998-01-07',1,'2023-08-06 10:36:08',NULL),(45,'Carolina','Kuno','Hernández','F','2002-09-10',1,'2023-06-28 16:57:47',NULL),(46,'Alejandra','Velazquez','Espinoza','F','1959-08-06',1,'2023-05-23 21:32:21',NULL),(47,'María','Ramos','Guzmán','F','2002-04-19',1,'2023-05-19 14:08:44',NULL),(48,'Carla','Espinoza','Castro','F','1990-10-19',1,'2023-06-27 22:43:40',NULL),(49,'Iván','Ruíz','Domínguez','M','1992-05-06',1,'2023-07-13 09:42:40',NULL),(50,'Raúl Pablo','Estrada','Vargas','M','1993-07-04',1,'2023-07-07 08:15:08',NULL),(51,'María Jazmín','Ramírez','Santos','F','1982-10-10',1,'2023-08-07 02:36:07',NULL),(52,'Antonio Octavio','Reyes','Herrera','M','2002-07-02',1,'2023-06-05 07:49:57',NULL),(53,'Natalia','Herrera','Nuñez','F','1957-12-20',1,'2023-07-01 16:22:53',NULL),(54,'Rosa','García','Vargas','F','1995-04-29',1,'2023-07-13 08:23:28',NULL),(55,'Fernando Valentín','León','Ortíz','M','1987-08-22',1,'2023-06-22 03:00:23',NULL),(56,'Zara Valeria','Ávila','Pacheco','F','1958-11-05',1,'2023-05-31 17:21:56',NULL),(57,'Helena Wendy','Márquez','Soto','F','1970-02-03',1,'2023-07-24 00:14:35',NULL),(58,'Evelyn','Pérez','Luna','F','2002-08-16',1,'2023-08-05 16:15:46',NULL),(59,'Wendy Ivana','Contreras','Camacho','F','1987-06-08',1,'2023-06-03 01:34:11',NULL),(60,'Fernanda','Santiago','Kuno','F','1950-03-13',1,'2023-06-10 07:46:51',NULL),(61,'Carolina Ofelia','Pérez','Sampayo','N/A','1990-05-30',1,'2023-06-20 12:14:15',NULL),(62,'Quetzálli','Martínez','Nuñez','F','1966-01-17',1,'2023-05-15 02:38:29',NULL),(63,'Alejandra Zara','Márquez','de la Cruz','F','2003-06-07',1,'2023-05-19 06:46:59',NULL),(64,'Quetzálcoatl','Martínez','Silva','M','2006-11-28',1,'2023-07-24 14:40:19',NULL),(65,'Gustavo Lorenzo','Márquez','Ruíz','M','1983-12-29',1,'2023-06-24 20:47:20',NULL),(66,'Ramón Marco','Delgado','Paredes','M','1964-05-12',1,'2023-05-15 21:09:21',NULL),(67,'William Lorenzo','Moreno','Castro','M','1982-06-21',1,'2023-05-14 08:42:33',NULL),(68,'Jaime','Trejo','Fuentes','M','1999-09-20',1,'2023-06-20 01:57:46',NULL),(69,'Galilea','Vargas','Acosta','F','1985-06-17',1,'2023-08-04 21:58:22',NULL),(70,'Paola Wendy','Wurtz','Rosas','F','1960-07-28',1,'2023-07-19 08:43:00',NULL),(71,'Jaime','Ruíz','Contreras','M','1997-12-12',1,'2023-07-23 08:50:39',NULL),(72,'Dylan Francisco','Rodríguez','Yañez','M','1966-12-28',1,'2023-08-02 07:58:36',NULL),(73,'Bernardo','Torres','Ibarra','M','1999-12-03',1,'2023-06-11 20:39:59',NULL),(74,'Fernando Saúl','Guzmán','Ortíz','M','1941-10-01',1,'2023-07-15 19:56:08',NULL),(75,'Rosa Fernanda','Kuno','Herrera','F','1977-05-26',1,'2023-06-07 18:16:11',NULL),(76,'Fernando Iván','Díaz','Alvarado','M','1972-06-09',1,'2023-06-09 15:11:24',NULL),(77,'Pablo Víctor','Contreras','Ximénez','M','1984-01-11',1,'2023-08-07 22:50:06',NULL),(78,'Elena','Delgado','Ávila','F','1953-02-22',1,'2023-07-12 16:41:36',NULL),(79,'Ivana Berenice','López','Urbina','F','1979-05-09',1,'2023-07-19 21:10:08',NULL),(80,'Jazmín','Valencia','Kuno','F','1976-08-03',1,'2023-06-12 17:45:50',NULL),(81,'Gerardo Ramón','Santos','Valdéz','M','1965-09-22',1,'2023-05-17 07:18:42',NULL),(82,'Francisco','Miranda','Ramos','M','2008-06-07',1,'2023-07-11 02:08:59',NULL),(83,'Berenice Fatima','Padilla','Santiago','F','2002-01-12',1,'2023-07-28 04:16:26',NULL),(84,'Valentín','Acosta','Padilla','M','1989-06-18',1,'2023-06-01 08:01:03',NULL),(85,'Ernesto','Fuentes','Estrada','N/A','1949-03-29',1,'2023-06-18 21:55:06',NULL),(86,'Gerardo Luis','Lara','Mendoza','M','1948-11-18',1,'2023-06-12 21:20:27',NULL),(87,'Fatima Ofelia','López','Ortega','F','1981-02-02',1,'2023-07-08 01:06:15',NULL),(88,'Ignacio','Cervantes','Rojas','M','1969-11-02',1,'2023-05-23 03:01:28',NULL),(89,'Saúl','Contreras','Méndez','M','1994-12-18',1,'2023-08-09 08:10:30',NULL),(90,'Renata','Morales','Trejo','F','1998-12-12',1,'2023-07-20 15:32:57',NULL),(91,'Zacek Ignacio','Aguilar','Méndez','M','1988-04-14',1,'2023-07-04 16:21:04',NULL),(92,'Esther Olga','Ávila','Díaz','F','1963-09-18',1,'2023-06-11 00:22:52',NULL),(93,'Laura Lorena','Trejo','Huerta','F','1959-11-11',1,'2023-06-02 23:44:05',NULL),(94,'Xavier Uziel','Hernández','García','M','1955-07-28',1,'2023-05-28 20:02:46',NULL),(95,'Quetzálli','Vargas','Muñoz','N/A','1996-03-07',1,'2023-07-14 19:14:36',NULL),(96,'Karim','García','de la Cruz','M','1987-07-26',1,'2023-06-07 09:33:43',NULL),(97,'Olga Tamara','Martínez','Solís','F','2002-09-02',1,'2023-06-10 16:46:16',NULL),(98,'Xochítl Rosa','Solís','González','F','2000-09-29',1,'2023-07-25 22:20:46',NULL),(99,'Gerardo','Morales','Rosas','M','1999-10-12',1,'2023-05-18 21:19:11',NULL),(100,'Marco','Sandoval','Vega','M','1977-11-11',1,'2023-06-20 15:53:01',NULL);
/*!40000 ALTER TABLE `tbb_personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_usuarios`
--

DROP TABLE IF EXISTS `tbb_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_usuarios` (
  `Persona_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_Usuario` varchar(50) NOT NULL,
  `Correo` varchar(200) NOT NULL,
  `Contraseña` varchar(100) NOT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '1',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Rol` int unsigned NOT NULL,
  PRIMARY KEY (`Persona_ID`),
  UNIQUE KEY `Persona_ID_UNIQUE` (`Persona_ID`),
  UNIQUE KEY `Nombre_Usuario_UNIQUE` (`Nombre_Usuario`),
  UNIQUE KEY `Correo_UNIQUE` (`Correo`),
  KEY `fk_usuario2_rol_idx` (`Rol`),
  CONSTRAINT `fk_usuario1_persona` FOREIGN KEY (`Persona_ID`) REFERENCES `tbb_personas` (`ID`),
  CONSTRAINT `fk_usuario2_rol` FOREIGN KEY (`Rol`) REFERENCES `tbc_roles` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_usuarios`
--

LOCK TABLES `tbb_usuarios` WRITE;
/*!40000 ALTER TABLE `tbb_usuarios` DISABLE KEYS */;
INSERT INTO `tbb_usuarios` VALUES (1,'Laura Mejía','l.mejia@gmail.com','1wD',1,'2023-07-13 06:46:05',NULL,2),(2,'Uziel Luis Briones','u.briones@outlook.com','oCwDfo5o4gs+hV',1,'2023-05-15 05:34:06',NULL,2),(3,'Isabel Carolina Wurtz','i.wurtz@altavista.com','sKY^IV4#bT',1,'2023-05-21 01:26:47',NULL,2),(4,'Valeria de la Cruz','v.de_la_cruz@yahoo.com','hU4$g&p',1,'2023-05-17 14:30:43',NULL,2),(5,'Pablo Ramón Mejía','p.mejia@hotmail.com','qQj+Gvl&bJr7r8',1,'2023-06-20 01:14:58',NULL,2),(6,'Xavier Hugo Vázquez','x.vazquez@outlook.com','@s7jzxN0%w*WJH7',1,'2023-06-03 22:52:55',NULL,2),(7,'Zara Castro','z.castro@excite.com','w==_@yiX*TsGH',1,'2023-06-22 14:25:17',NULL,2),(8,'Rosa Isabel Mendoza','r.mendoza@apple.com','Efp@Mf^ljnN',1,'2023-05-15 21:50:25',NULL,2),(9,'Salvador Rosas','s.rosas@gmail.com','hSWEjH#*xN1_WB',1,'2023-05-26 05:37:44',NULL,2),(10,'Barbara González','b.gonzalez@gmx.com','w+(4_O9J*',1,'2023-06-20 00:26:49',NULL,2),(11,'Karim Edgar Rodríguez','k.rodriguez@excite.com','DrbFb*',1,'2023-06-05 18:33:12',NULL,2),(12,'Gustavo Téllez','g.tellez@live.com','IJaYsuTqv8',1,'2023-07-22 00:45:01',NULL,2),(13,'Fernando Ramón Méndez','f.mendez@live.com','^h%e2E%j',1,'2023-07-15 03:20:53',NULL,2),(14,'Gerardo Ximénez','g.ximenez@gmail.com','iXsy',1,'2023-06-20 09:33:11',NULL,2),(15,'Elena Josefa Alvarado','e.alvarado@apple.com','gIb',1,'2023-06-09 07:56:27',NULL,2),(16,'Elena Rosales','e.rosales@hotmail.com','l+A$s0',1,'2023-07-14 05:20:25',NULL,2),(17,'Jazmín Vargas','j.vargas@live.com','ul_wXA!b2NFN',1,'2023-06-12 19:04:06',NULL,2),(18,'Uriel Fernando Reyes','u.reyes@apple.com','&xP@',1,'2023-06-05 16:02:04',NULL,2),(19,'Ofelia Nadia Rivera','o.rivera@excite.com','ic!aT',1,'2023-07-08 03:28:32',NULL,2),(20,'Nadia Renata Domínguez','n.dominguez@live.com','kg2T$L&aE-1R3',1,'2023-06-01 15:58:50',NULL,2),(21,'Daniela Muñoz','d.munoz@gmail.com','R!EPOdWbrg8',1,'2023-08-03 15:03:12',NULL,2),(22,'Helena Méndez','h.mendez@live.com','ifc-@mCD9',1,'2023-06-18 19:33:30',NULL,2),(23,'Patricia Guzmán','p.guzman@gmx.com','JNqOGlLaR9zvHz',1,'2023-06-08 04:43:04',NULL,2),(24,'Iván Martínez','i.martinez@hotmail.com','GueOHY',1,'2023-06-07 02:38:27',NULL,2),(25,'Laura Espinoza','l.espinoza@yahoo.com','Vi2',1,'2023-07-23 18:33:04',NULL,2),(26,'Camilo Edgar Sánchez','c.sanchez@altavista.com','SnmyjY',1,'2023-05-29 17:09:31',NULL,2),(27,'Magdalena Santiago','m.santiago@gmail.com','qUGvn',1,'2023-06-08 04:35:55',NULL,2),(28,'Nabor Sánchez','n.sanchez@outlook.com','f%lmDHd(L0_24',1,'2023-06-13 21:35:26',NULL,2),(29,'Renata Trejo','r.trejo@zoho.com','g=Voh=N1+',1,'2023-07-27 08:29:42',NULL,2),(30,'Elena Estrada','e.estrada@apple.com','qz-+$DE$f#',1,'2023-07-13 15:55:19',NULL,2),(31,'Nabor Briones','n.briones@gmail.com','2kUTmf%kg',1,'2023-07-31 20:59:06',NULL,2),(32,'Víctor Bernardo Navarro','v.navarro@live.com','ExB&Cq+nI',1,'2023-05-21 03:48:53',NULL,2),(33,'Uziel Gonzálo García','u.garcia@gmx.com','P0@ifef',1,'2023-07-20 12:54:31',NULL,2),(34,'Ernesto Vargas','e.vargas@zoho.com','GX+$G',1,'2023-07-07 19:25:21',NULL,2),(35,'Sofía Gutiérrez','s.gutierrez@live.com','P+og%f!@4o',1,'2023-07-16 01:23:12',NULL,2),(36,'Josefa Salomé Vargas','j.vargas@hotmail.com','w$BsnnCzR@K*g6',1,'2023-06-23 07:34:32',NULL,2),(37,'Jaqueline Díaz','j.diaz@outlook.com','0eq_',1,'2023-06-28 23:02:37',NULL,2),(38,'Zacek Valdéz','z.valdez@outlook.com','oHp2+YGkJ(',1,'2023-05-21 01:56:19',NULL,2),(39,'Ignacio Yahir Ávila','i.avila@yahoo.com','i0gE3Jk',1,'2023-06-14 14:44:44',NULL,2),(40,'Ramón Víctor Domínguez','r.dominguez@excite.com','r6ixoe5RSrExD',1,'2023-05-20 23:36:37',NULL,2),(41,'Valentín Moreno','v.moreno@live.com','tXHueLxeD4',1,'2023-06-23 16:47:41',NULL,2),(42,'Valeria García','v.garcia@excite.com','Qu3@-GnWX',1,'2023-08-03 19:28:50',NULL,2),(43,'Antonio Contreras','a.contreras@gmx.com','=sx!m',1,'2023-05-22 11:11:24',NULL,2),(44,'Quetzálcoatl Paredes','q.paredes@excite.com','4efs+iZdse',1,'2023-08-06 10:36:08',NULL,2),(45,'Carolina Kuno','c.kuno@outlook.com','Nw=-',1,'2023-06-28 16:57:47',NULL,2),(46,'Alejandra Velazquez','a.velazquez@zoho.com','k^aHlL=C-@pOdXh',1,'2023-05-23 21:32:21',NULL,2),(47,'María Ramos','m.ramos@hotmail.com','9H6Ms',1,'2023-05-19 14:08:44',NULL,2),(48,'Carla Espinoza','c.espinoza@gmx.com','gzH',1,'2023-06-27 22:43:40',NULL,2),(49,'Iván Ruíz','i.ruiz@altavista.com','HG!!UVuO!N',1,'2023-07-13 09:42:40',NULL,2),(50,'Raúl Pablo Estrada','r.estrada@live.com','bLCD#d2HffmUP(',1,'2023-07-07 08:15:08',NULL,2),(51,'María Jazmín Ramírez','m.ramirez@gmail.com','Lhd+WxZG',1,'2023-08-07 02:36:07',NULL,2),(52,'Antonio Octavio Reyes','a.reyes@hotmail.com','TbxMTL0',1,'2023-06-05 07:49:57',NULL,2),(53,'Natalia Herrera','n.herrera@live.com','aLFT6c*GE5RSpy',1,'2023-07-01 16:22:53',NULL,2),(54,'Rosa García','r.garcia@yahoo.com','cba',1,'2023-07-13 08:23:28',NULL,2),(55,'Fernando Valentín León','f.leon@yahoo.com','zrkc6',1,'2023-06-22 03:00:23',NULL,2),(56,'Zara Valeria Ávila','z.avila@outlook.com','iSO',1,'2023-05-31 17:21:56',NULL,2),(57,'Helena Wendy Márquez','h.marquez@apple.com','Dsg1sk',1,'2023-07-24 00:14:35',NULL,2),(58,'Evelyn Pérez','e.perez@yahoo.com','v#zk5zFdek',1,'2023-08-05 16:15:46',NULL,2),(59,'Wendy Ivana Contreras','w.contreras@yahoo.com','e)LY@lxhT',1,'2023-06-03 01:34:11',NULL,2),(60,'Fernanda Santiago','f.santiago@live.com','sCn6vk&aE=XC*FD',1,'2023-06-10 07:46:51',NULL,2),(61,'Carolina Ofelia Pérez','c.perez@outlook.com','GyB%t1',1,'2023-06-20 12:14:15',NULL,2),(62,'Quetzálli Martínez','q.martinez@live.com','Vz9aXrow(4',1,'2023-05-15 02:38:29',NULL,2),(63,'Alejandra Zara Márquez','a.marquez@hotmail.com','Slc3NEKpSx9gfhu',1,'2023-05-19 06:46:59',NULL,2),(64,'Quetzálcoatl Martínez','q.martinez@excite.com','=O4jF3BZvFr_a',1,'2023-07-24 14:40:19',NULL,2),(65,'Gustavo Lorenzo Márquez','g.marquez@gmx.com','lxhRO=sAb',1,'2023-06-24 20:47:20',NULL,2),(66,'Ramón Marco Delgado','r.delgado@gmail.com','7W$B',1,'2023-05-15 21:09:21',NULL,2),(67,'William Lorenzo Moreno','w.moreno@yahoo.com','$&*^1@d74',1,'2023-05-14 08:42:33',NULL,2),(68,'Jaime Trejo','j.trejo@apple.com','UVtINrTw0',1,'2023-06-20 01:57:46',NULL,2),(69,'Galilea Vargas','g.vargas@hotmail.com','b!e#cZuy',1,'2023-08-04 21:58:22',NULL,2),(70,'Paola Wendy Wurtz','p.wurtz@hotmail.com','(rIQJW7-SauCd',1,'2023-07-19 08:43:00',NULL,2),(71,'Jaime Ruíz','j.ruiz@zoho.com','2zQ8',1,'2023-07-23 08:50:39',NULL,2),(72,'Dylan Francisco Rodríguez','d.rodriguez@altavista.com','@$!O',1,'2023-08-02 07:58:36',NULL,2),(73,'Bernardo Torres','b.torres@yahoo.com','W=+*YR&4',1,'2023-06-11 20:39:59',NULL,2),(74,'Fernando Saúl Guzmán','f.guzman@yahoo.com','-gMt9q',1,'2023-07-15 19:56:08',NULL,2),(75,'Rosa Fernanda Kuno','r.kuno@hotmail.com','b!d76Nt7',1,'2023-06-07 18:16:11',NULL,2),(76,'Fernando Iván Díaz','f.diaz@outlook.com','_Ccep$0$sYS+b',1,'2023-06-09 15:11:24',NULL,2),(77,'Pablo Víctor Contreras','p.contreras@gmail.com','E3F^nv&X',1,'2023-08-07 22:50:06',NULL,2),(78,'Elena Delgado','e.delgado@zoho.com','W7a40o_k%',1,'2023-07-12 16:41:36',NULL,2),(79,'Ivana Berenice López','i.lopez@outlook.com','XVnbU+++*Y',1,'2023-07-19 21:10:08',NULL,2),(80,'Jazmín Valencia','j.valencia@outlook.com','R$TFtfV^Pg#_',1,'2023-06-12 17:45:50',NULL,2),(81,'Gerardo Ramón Santos','g.santos@gmail.com','rQi*r',1,'2023-05-17 07:18:42',NULL,2),(82,'Francisco Miranda','f.miranda@zoho.com','t*3+',1,'2023-07-11 02:08:59',NULL,2),(83,'Berenice Fatima Padilla','b.padilla@hotmail.com','WUl(k+Ca(R',1,'2023-07-28 04:16:26',NULL,2),(84,'Valentín Acosta','v.acosta@gmail.com','UbyQ!GYdwA%',1,'2023-06-01 08:01:03',NULL,2),(85,'Ernesto Fuentes','e.fuentes@excite.com','pw#yj0',1,'2023-06-18 21:55:06',NULL,2),(86,'Gerardo Luis Lara','g.lara@outlook.com','c1HeddhBOSw7-',1,'2023-06-12 21:20:27',NULL,2),(87,'Fatima Ofelia López','f.lopez@excite.com','SdONaL',1,'2023-07-08 01:06:15',NULL,2),(88,'Ignacio Cervantes','i.cervantes@yahoo.com','qFF!^=odYpcT%Q',1,'2023-05-23 03:01:28',NULL,2),(89,'Saúl Contreras','s.contreras@apple.com','t$M-Db+4@*g3A',1,'2023-08-09 08:10:30',NULL,2),(90,'Renata Morales','r.morales@gmx.com','B#jk',1,'2023-07-20 15:32:57',NULL,2),(91,'Zacek Ignacio Aguilar','z.aguilar@live.com','whPG',1,'2023-07-04 16:21:04',NULL,2),(92,'Esther Olga Ávila','e.avila@gmx.com','xMRBfyD-7)A=',1,'2023-06-11 00:22:52',NULL,2),(93,'Laura Lorena Trejo','l.trejo@yahoo.com','5RVFq$VR',1,'2023-06-02 23:44:05',NULL,2),(94,'Xavier Uziel Hernández','x.hernandez@gmail.com','UEq%0@g+P%2_Wx',1,'2023-05-28 20:02:46',NULL,2),(95,'Quetzálli Vargas','q.vargas@yahoo.com','(9vbso',1,'2023-07-14 19:14:36',NULL,2),(96,'Karim García','k.garcia@excite.com','ULY@oJ4ww',1,'2023-06-07 09:33:43',NULL,2),(97,'Olga Tamara Martínez','o.martinez@outlook.com','qsQdS7lH3AQ',1,'2023-06-10 16:46:16',NULL,2),(98,'Xochítl Rosa Solís','x.solis@apple.com','sVElT',1,'2023-07-25 22:20:46',NULL,2),(99,'Gerardo Morales','g.morales@live.com','d8!4th1qa',1,'2023-05-18 21:19:11',NULL,2),(100,'Marco Sandoval','m.sandoval@gmx.com','L9PAhJb62y',1,'2023-06-20 15:53:01',NULL,2);
/*!40000 ALTER TABLE `tbb_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_valoracion`
--

DROP TABLE IF EXISTS `tbb_valoracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_valoracion` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Numero` float NOT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '1',
  `Fecha_Registro` datetime NOT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `ID_Usuario` int unsigned NOT NULL,
  `ID_Item_Evaluado` int unsigned NOT NULL,
  `Tipo` enum('Atractivo','Estanlecimiento','Pueblo') NOT NULL,
  `ID_Criterio` int unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_valoracion1_usuario_idx` (`ID_Usuario`),
  KEY `fk_valoracion2_item_idx` (`ID_Item_Evaluado`),
  KEY `fk_valoracion5_criterio_idx` (`ID_Criterio`),
  CONSTRAINT `fk_valoracion1_usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `tbb_usuarios` (`Persona_ID`),
  CONSTRAINT `fk_valoracion2_item` FOREIGN KEY (`ID_Item_Evaluado`) REFERENCES `tbb_atractivo_turistico` (`ID`),
  CONSTRAINT `fk_valoracion3_item` FOREIGN KEY (`ID_Item_Evaluado`) REFERENCES `tbc_establecimientos` (`ID`),
  CONSTRAINT `fk_valoracion4_item` FOREIGN KEY (`ID_Item_Evaluado`) REFERENCES `tbc_pueblos_magicos` (`ID`),
  CONSTRAINT `fk_valoracion5_criterio` FOREIGN KEY (`ID_Criterio`) REFERENCES `tbc_criterio` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_valoracion`
--

LOCK TABLES `tbb_valoracion` WRITE;
/*!40000 ALTER TABLE `tbb_valoracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_valoracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_criterio`
--

DROP TABLE IF EXISTS `tbc_criterio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_criterio` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Descripcion` text NOT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '1',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_criterio`
--

LOCK TABLES `tbc_criterio` WRITE;
/*!40000 ALTER TABLE `tbc_criterio` DISABLE KEYS */;
INSERT INTO `tbc_criterio` VALUES (1,'Calidad del Servicio','Evaluar la calidad del servicio ofrecido por el establecimiento, como la amabilidad del personal, la eficiencia del servicio y la atención al cliente',1,'2023-07-31 17:22:55',NULL),(2,'Calidad del Producto','Considera la calidad y la variedad de los productos o servicios que ofrece el establecimiento.',1,'2023-07-31 17:24:53',NULL),(3,'Ubicación','Evalua la proximidad a otros lugares de interés y la accesibilidad puede ser relevante.',1,'2023-07-31 17:26:50',NULL),(4,'Higiene y Limpieza','La limpieza y el mantenimiento del establecimiento.',1,'2023-07-31 17:28:28',NULL),(5,'Precio y Valor','Evalua si el establecimiento ofrece una buena relación calidad-precio en comparación con otros lugares similares.',1,'2023-07-31 17:28:28',NULL),(6,'Ambiente y Decoración','Evaluan  la atmósfera y el diseño del lugar.',1,'2023-07-31 17:28:28',NULL),(7,'Seguridad','Evalua las medidas de seguridad y prevención implementadas por el lugar.',1,'2023-07-31 17:30:28',NULL),(8,'Disponibilidad de Información','Asegurarse de que la información del establecimiento esté actualizada y completa.',1,'2023-07-31 17:30:28',NULL);
/*!40000 ALTER TABLE `tbc_criterio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_establecimientos`
--

DROP TABLE IF EXISTS `tbc_establecimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_establecimientos` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Horario` int unsigned DEFAULT NULL,
  `Tipo` enum('Iglesia','Museo') NOT NULL,
  `Ubicacion` int unsigned DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Valoracion_Global` float NOT NULL DEFAULT '5',
  `Atractivo_ID` int unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_establecimiento1_ubicacion_idx` (`Ubicacion`),
  KEY `fk_establecimiento2_atractivo_idx` (`Atractivo_ID`),
  KEY `fk_establecimiento3_horarios_idx` (`Horario`),
  CONSTRAINT `fk_establecimiento1_ubicacion` FOREIGN KEY (`Ubicacion`) REFERENCES `tbc_ubicaciones` (`ID`),
  CONSTRAINT `fk_establecimiento2_atractivo` FOREIGN KEY (`Atractivo_ID`) REFERENCES `tbb_atractivo_turistico` (`ID`),
  CONSTRAINT `fk_establecimiento3_horarios` FOREIGN KEY (`Horario`) REFERENCES `tbc_horarios` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_establecimientos`
--

LOCK TABLES `tbc_establecimientos` WRITE;
/*!40000 ALTER TABLE `tbc_establecimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbc_establecimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_horarios`
--

DROP TABLE IF EXISTS `tbc_horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_horarios` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Dia` varchar(20) NOT NULL,
  `Hora_apertura` time NOT NULL,
  `Hora_Cierre` time NOT NULL,
  `ID_Establecimiento` int unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_horario1_usuario_idx` (`ID_Establecimiento`),
  CONSTRAINT `fk_horario1_usuario` FOREIGN KEY (`ID_Establecimiento`) REFERENCES `tbc_establecimientos` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_horarios`
--

LOCK TABLES `tbc_horarios` WRITE;
/*!40000 ALTER TABLE `tbc_horarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbc_horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_pueblos_magicos`
--

DROP TABLE IF EXISTS `tbc_pueblos_magicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_pueblos_magicos` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL,
  `Año_Nombremiento` date DEFAULT NULL,
  `Ubicacion` int unsigned NOT NULL,
  `Valoracion_Global` float NOT NULL DEFAULT '5',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_pueblo1_ubicacion_idx` (`Ubicacion`),
  CONSTRAINT `fk_pueblo1_ubicacion` FOREIGN KEY (`Ubicacion`) REFERENCES `tbc_ubicaciones` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_pueblos_magicos`
--

LOCK TABLES `tbc_pueblos_magicos` WRITE;
/*!40000 ALTER TABLE `tbc_pueblos_magicos` DISABLE KEYS */;
INSERT INTO `tbc_pueblos_magicos` VALUES (1,'Atlixco','Este pueblo comparte su paisaje con un volcán, el Popocatépetl. No importa si se está en una terraza o en la punta del Cerro de San Miguel, el gigante siempre aparece a lo lejos con su nube de humo, y su presencia acompaña el vaivén de los días en este rincón poblano. No hay frío aquí, así que árboles frutales, plantas y flores crecen despreocupados. Los atlixquenses viven del comercio de esos regalos de la tierra, además tienen la costumbre de celebrar con floridos tapetes sus mayores fiestas.','2015-09-25',1,5),(2,'Cholula','A la urbe de los dos pueblos, el de San Pedro y San Andrés, la acompaña el volcán Popocatépetl. Como queriendo alcanzar a ese gigante nevado, se eleva el Santuario de Nuestra Señora de los Remedios, la iglesia de cúpulas cubiertas de azulejos que los españoles edificaron en el siglo XVI. La colocaron justo encima de la Gran Pirámide, el basamento que más parece cerro que sitio arqueológico. Debajo van y vienen los días, la gente, la vida.','2012-10-30',2,5),(3,'Chignahuapan','En este pueblo serrano abundan dos cosas: el agua y los colores. Tiene una laguna en el centro, pero también ríos, cascadas y pozas termales en derredor. En ella se festeja el Día de Muertos con un ritual que recuerda el camino prehispánico del alma hacia el Mictlán. Cuando no hay fiesta, los días pasan de todas formas coloridos. Las fachadas de las casas, el quiosco de la plaza principal y las esferas que se fabrican poseen siempre, para combatir la rutina, tonos vivos.','2012-10-30',3,5),(4,'Cuetzalan','La montaña regala a Cuetzalan un pueblo de calles empedradas donde callejonear resulta gratificante. Al hacerlo, verás los pájaros volar sobre las palmeras, exhalarás aromas a café, convivirás con aquellos que confeccionan textiles de algodón. Caminarás junto a las mujeres nahuas al ritmo de su falda, si las acompañas, llegarás al mercado donde flores, frutos, canastos y rebozos son el alma del lugar. Al caer la tarde, seguro percibirás el olor a lluvia próxima; a lo lejos, los helechos arborescentes, las cuevas y los ríos esperan para una nueva aventura.','2002-03-11',4,5),(5,'Huauchinango','Acompañado por el Cerro de Zempoala, este Pueblo Mágico fue en tiempos prehispánicos tributario de Texcoco hasta la caída de Tenochtitlan. Está lleno de azaleas y si se camina por la Plaza de la Constitución huele a cacahuate tostado, ese que venden las mujeres de largas nahuas y blusas bordadas. Ríos y cascadas lo circundan, también presas donde todo cabe: mucha calma, árboles y nubes en el agua reflejadas.','2015-09-25',5,5),(6,'Tlatlauquitepec','Colmado de oyameles y aire limpio, este lugar posee todo el encanto de los pueblos de la sierra. Sus nubes vuelan bajo o se pasean rodeando la cúspide del Cerro Cabezón. Abajo la gente cultiva flores, sobre todo, tuberosas. Con esas blancas flores se confeccionan tapetes y ofrendas para la patrona, la Virgen de la Asunción. Cuando no hay danzas o rituales, hay un silencio agradable. Se toma café y licores de hierbas, se mira la vida pasar en la plaza principal.','2012-11-27',6,5),(7,'Tetela de Ocampo','Vigilada por los cerros Zotolo y Zoyayo, Tetela se levanta cada día con la vista puesta en el pasado. Mira hacia atrás, cuando su nombre era Tetela de Oro y no de Ocampo, y sus días estaban marcados por el ritmo de la minería y los talleres de hierro forjado. Luego vendría el siglo XIX, y las inquietudes liberales del pueblo lo harían participar en numerosas batallas contra los conservadores de la época. Llegaría también el año de 1862, para que la incendiaria Tetela recordara siempre su participación en la Batalla del Cinco de Mayo, especialmente cuando le llaman la Tres veces heroica Tetela de Ocampo.','2020-12-01',7,5),(8,'Pahuatlán','Solo atravesando valles y barrancas se llega hasta este Pueblo Mágico en medio de la sierra poblana. Pahuas y cafetos crecen por todas partes, hay bosques de niebla, también magia. Porque aquí persisten numerosas tradiciones prehispánicas: se cree en el poder de los brujos para conjurar males, se ofrenda el papel amate que en San Pablito se produce, y aún se ejecuta el ritual de los Voladores, ese que Pahuatlán heredó del antiguo Totonacapan.','2012-03-23',8,5),(9,'Xicotepec','Ensimismado, ajeno al resto del mundo por estar ubicado en plena sierra poblana, Xicotepec pasa sus días entre árboles de aguacate. Su clima es cálido, también su gente acostumbrada al aroma que el café desprende. Porque si algo abunda alrededor del pueblo son cafetales y montañas que llenan los ojos de verde. Aquí, además, se tiene fe no solo en los santos de la religión que trajeron consigo los españoles, también en los dioses prehispánicos y en los magos.','2012-11-30',9,5),(10,'Zacatlán','Siempre acompañado de neblina, Zacatlán vive al borde de la hermosa Barranca de Los Jilgueros. Aquí se tiene la costumbre de hornear pan todos los días, de fabricar monumentales relojes y cultivar las frutas que la tierra regala. Son las manzanas las que más abundan, así que se deshidratan o se convierten en licores y  mermeladas. Su existencia se agradece cada año durante la Feria de la Manzana con bailes y desfiles de carros alegóricos.','2012-04-27',10,5),(11,'Huejotzingo','Huejotzingo de Nieva es una ciudad localizada cerca de la falda de la Sierra Nevada. Este municipio es el hogar del Aeropuerto Internacional Hermanos Serdán, además, se distingue por su carnaval de más de 150 años de historia. En el carnaval renacen tres sucesos: la lucha contra la intervención francesa en México, el rapto de la hija del corregidor y el casamiento indígena tradicional, todo ello en un ambiente de pólvora.','2023-07-09',11,5),(12,'Teziutlán','Conocido como \'La Perla de la Sierra\', el municipio de Teziutlán es famoso por sus deliciosos tlayoyos y por ser un pueblo colonial pintoresco. Teziutlán es un Pueblo Mágico localizado cerca de Veracruz que durante el Porfiriato ganó fama e importancia en cuanto a desarrollo económico.','2023-07-09',12,5);
/*!40000 ALTER TABLE `tbc_pueblos_magicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_roles`
--

DROP TABLE IF EXISTS `tbc_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_roles` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(40) NOT NULL,
  `Descripcion` text NOT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '1',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_roles`
--

LOCK TABLES `tbc_roles` WRITE;
/*!40000 ALTER TABLE `tbc_roles` DISABLE KEYS */;
INSERT INTO `tbc_roles` VALUES (1,'Administrador','Este rol tiene el máximo nivel de acceso y control en el sistema. Los administradores pueden configurar y gestionar todas las funcionalidades, agregar o eliminar usuarios y asignar roles, así como acceder a datos y configuraciones sensibles.',1,'2023-07-31 18:04:44',NULL),(2,'Usuario','Es el rol básico que poseen la mayoría de los usuarios. Los usuarios pueden interactuar con las funcionalidades del sistema permitidas para su nivel de acceso, pero no tienen permiso para cambiar configuraciones críticas o realizar tareas administrativas.',1,'2023-07-31 18:04:44',NULL);
/*!40000 ALTER TABLE `tbc_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_ubicaciones`
--

DROP TABLE IF EXISTS `tbc_ubicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_ubicaciones` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(150) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '1',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Ubicacion_Padre_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_ubicaciones1_ubicaciones_idx` (`Ubicacion_Padre_ID`),
  CONSTRAINT `fk_ubicaciones1_ubicaciones` FOREIGN KEY (`Ubicacion_Padre_ID`) REFERENCES `tbc_ubicaciones` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_ubicaciones`
--

LOCK TABLES `tbc_ubicaciones` WRITE;
/*!40000 ALTER TABLE `tbc_ubicaciones` DISABLE KEYS */;
INSERT INTO `tbc_ubicaciones` VALUES (1,'Atlixco','Ciudad',1,'2023-07-31 18:27:43',NULL,NULL),(2,'Cholula','Ciudad',1,'2023-07-31 18:27:43',NULL,NULL),(3,'Chignahuapan','Ciudad',1,'2023-07-31 18:27:43',NULL,NULL),(4,'Cuetzalan','Ciudad',1,'2023-07-31 18:27:43',NULL,NULL),(5,'Huauchinango','Ciudad',1,'2023-07-31 18:27:43',NULL,NULL),(6,'Tlatlauquitepec','Ciudad',1,'2023-07-31 18:27:43',NULL,NULL),(7,'Tetela de Ocampo','Ciudad',1,'2023-07-31 18:27:43',NULL,NULL),(8,'Pahuatlán','Ciudad',1,'2023-07-31 18:27:43',NULL,NULL),(9,'Xicotepec','Ciudad',1,'2023-07-31 18:27:43',NULL,NULL),(10,'Zacatlán','Ciudad',1,'2023-07-31 18:27:43',NULL,NULL),(11,'Huejotzingo','Ciudad',1,'2023-07-31 18:27:43',NULL,NULL),(12,'Teziutlán','Ciudad',1,'2023-07-31 18:27:43',NULL,NULL);
/*!40000 ALTER TABLE `tbc_ubicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbr_visita_atractivo`
--

DROP TABLE IF EXISTS `tbr_visita_atractivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbr_visita_atractivo` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_Usuario` int unsigned NOT NULL,
  `ID_Atractivo` int unsigned NOT NULL,
  `Fecha_Visita` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_visatr1_usuario_idx` (`ID_Usuario`),
  KEY `fk_visatr2_atractivo_idx` (`ID_Atractivo`),
  CONSTRAINT `fk_visatr1_usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `tbb_usuarios` (`Persona_ID`),
  CONSTRAINT `fk_visatr2_atractivo` FOREIGN KEY (`ID_Atractivo`) REFERENCES `tbb_atractivo_turistico` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbr_visita_atractivo`
--

LOCK TABLES `tbr_visita_atractivo` WRITE;
/*!40000 ALTER TABLE `tbr_visita_atractivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbr_visita_atractivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbr_visita_establecimiento`
--

DROP TABLE IF EXISTS `tbr_visita_establecimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbr_visita_establecimiento` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_Usuario` int unsigned NOT NULL,
  `ID_Establecimiento` int unsigned NOT NULL,
  `Fecha_Visita` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_visest1_usuario_idx` (`ID_Usuario`),
  KEY `fk_visest2_establecimiento_idx` (`ID_Establecimiento`),
  CONSTRAINT `fk_visest1_usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `tbb_usuarios` (`Persona_ID`),
  CONSTRAINT `fk_visest2_establecimiento` FOREIGN KEY (`ID_Establecimiento`) REFERENCES `tbc_establecimientos` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbr_visita_establecimiento`
--

LOCK TABLES `tbr_visita_establecimiento` WRITE;
/*!40000 ALTER TABLE `tbr_visita_establecimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbr_visita_establecimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbr_visita_pueblo`
--

DROP TABLE IF EXISTS `tbr_visita_pueblo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbr_visita_pueblo` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `ID_Usuario` int unsigned NOT NULL,
  `ID_Pueblo` int unsigned NOT NULL,
  `Fecha_Visita` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_vispue1_usuario_idx` (`ID_Usuario`),
  KEY `fk_vispue2_pueblo_idx` (`ID_Pueblo`),
  CONSTRAINT `fk_vispue1_usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `tbb_usuarios` (`Persona_ID`),
  CONSTRAINT `fk_vispue2_pueblo` FOREIGN KEY (`ID_Pueblo`) REFERENCES `tbc_pueblos_magicos` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbr_visita_pueblo`
--

LOCK TABLES `tbr_visita_pueblo` WRITE;
/*!40000 ALTER TABLE `tbr_visita_pueblo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbr_visita_pueblo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_turismo_de_aventura'
--

--
-- Dumping routines for database 'db_turismo_de_aventura'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_bandera_porcentaje` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_bandera_porcentaje`(v_porcentaje INT) RETURNS int
    DETERMINISTIC
BEGIN
   /* Declaración de una variable con un valor aleatorio de entre 0 y 100*/
   DECLARE v_valor INT DEFAULT (fn_numero_aleatorio_rangos(0,100));
   /* Declaración de una variable booleana con valor inicial de falso */
   DECLARE v_bandera BOOLEAN DEFAULT false;
   
   IF v_valor <= v_porcentaje THEN 
      SET v_bandera = true;
   END IF;
   RETURN v_bandera;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_calcula_edad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_calcula_edad`(v_fecha_nacimiento DATE) RETURNS int
    DETERMINISTIC
BEGIN
  /*SET @mensaje ="Calculando la edad";*/
  RETURN FLOOR(DATEDIFF(NOW(),v_fecha_nacimiento)/365.25);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_apellido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_apellido`() RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE v_apellido_generado VARCHAR(50) DEFAULT NULL;
    
    SET v_apellido_generado = ELT(fn_numero_aleatorio_rangos(1,100), 
			"Álvarez","Briones","Cruz","Díaz","Estrada", "Fuentes","Gayosso","Hernández","Ibarra","Jiménez",
			"Kuno","López","Martínez","Ortíz","Paredes", "Quiróz","Ramírez","Sampayo","Téllez","Urbina",
			"Vargas","Wurtz","Ximénez","Yañez","Zapata", "García","González","Pérez","Rodríguez","Sánchez",
            "Romero","Gómez","Flores","Morales","Vázquez", "Reyes","Torres","Gutiérrez","Ruíz","Mendoza",
            "Aguilar","Moreno","Castillo","Méndez","Chávez", "Rivera","Juárez","Ramos","Domínguez","Herrera",
            "Medina","Castro","Vargas","Guzmán","Velazquez", "Muñoz","Rojas","de la Cruz","Contreras","Salazar",
            "Luna","Ortega","Santiago","Guerrero","Bautista", "Cortés","Soto","Alvarado","Espinoza","Lara",
            "Ávila","Ríos","Cervantes","Silva","Delgado", "Vega","Márquez","Sandoval","Carrillo","León",
            "Mejía","Solís","Rosas","Valdéz","Nuñez", "Campos","Santos","Camacho","Navarro","Peña",
            "Maldonado","Rosales","Acosta","Miranda","Trejo", "Valencia","Nava","Pacheco","Huerta","Padilla");

RETURN v_apellido_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_email`(vnombre VARCHAR(60), vapellido_paterno VARCHAR(60)) RETURNS varchar(60) CHARSET utf8mb4
    DETERMINISTIC
BEGIN

 DECLARE vusuario_correo VARCHAR(60) DEFAULT NULL;
 DECLARE vdominio VARCHAR(60) DEFAULT NULL;
 DECLARE vcorreo_existente BOOLEAN DEFAULT FALSE;
 DECLARE vnumeral INT DEFAULT NULL;
 DECLARE vcorreo_generado VARCHAR(60) DEFAULT NULL;
 DECLARE vnumeral_correo INT DEFAULT NULL;

    SET vapellido_paterno = fn_remplaza_caracteres(vapellido_paterno);
	SET vusuario_correo = fn_remplaza_caracteres(concat(substring(vnombre,1,1),".",vapellido_paterno));
    SET vdominio=ELT(fn_numero_aleatorio_rangos(1, 10),
			"hotmail.com", "live.com", "gmail.com","outlook.com","yahoo.com",
            "altavista.com","excite.com","gmx.com","zoho.com","apple.com");
    SET vcorreo_generado= LOWER(CONCAT(vusuario_correo,'@',vdominio));
    IF vcorreo_generado IN (SELECT correo FROM tbb_usuarios  where correo like CONCAT(vusuario_correo,'%@', vdominio)) then 
    SET vnumeral_correo= (SELECT count(*) FROM tbb_usuarios WHERE correo like  CONCAT(vusuario_correo,'%@', vdominio))+1;
	SET vcorreo_generado= LOWER(CONCAT(vusuario_correo,vnumeral_correo,'@',vdominio));
 END IF;

RETURN vcorreo_generado;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_fechahora_aleatoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_fechahora_aleatoria`(fecha_inicio DATETIME, fecha_fin DATETIME) RETURNS datetime
    DETERMINISTIC
BEGIN
    DECLARE fecha_aleatoria DATETIME;
    DECLARE segundos_totales INT;
    
    SET @ultimo_mensaje= CONCAT("Calculando una fecha con hora del: ", fecha_inicio, " al " , fecha_fin, " -->", now());
    SET fecha_aleatoria = fecha_inicio;
    SET segundos_totales = TIMESTAMPDIFF(SECOND, fecha_inicio, fecha_fin);
    SET @segundos_totales= CONCAT("Segundos Totales: ", segundos_totales);
    SET fecha_aleatoria = fecha_aleatoria + INTERVAL FLOOR(RAND() * segundos_totales) SECOND;
    RETURN fecha_aleatoria;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_fecha_nacimiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_fecha_nacimiento`(fecha_inicio DATE, fecha_fin DATE) RETURNS date
    DETERMINISTIC
BEGIN
    DECLARE min_dias INT;
    DECLARE max_dias INT;
    DECLARE dias_aleatorios INT;
    DECLARE fecha_aleatoria DATE;

    SET min_dias = DATEDIFF(fecha_inicio, '1900-01-01');
    SET max_dias = DATEDIFF(fecha_fin, '1900-01-01');
    SET dias_aleatorios = fn_numero_aleatorio_rangos(min_dias, max_dias);
    SET fecha_aleatoria = DATE_ADD('1900-01-01', INTERVAL dias_aleatorios DAY);

    RETURN fecha_aleatoria;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_nombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_nombre`(v_genero CHAR) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE v_nombre_generado VARCHAR(50) DEFAULT NULL;
    DECLARE v_nombre2_generado VARCHAR(50) DEFAULT NULL;
    DECLARE v_bandera_nombrecompuesto BOOLEAN DEFAULT (fn_bandera_porcentaje(35));
    
   	SET v_nombre_generado = fn_genera_nombre_simple(v_genero);
    
    IF v_bandera_nombrecompuesto THEN 
		WHILE v_nombre2_generado IS NULL OR v_nombre2_generado = v_nombre_generado DO
             SET v_nombre2_generado = fn_genera_nombre_simple(v_genero);
        END WHILE;
        SET v_nombre_generado = CONCAT(v_nombre_generado," ", v_nombre2_generado);
	END IF;
    
    RETURN v_nombre_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_nombre_simple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_nombre_simple`(v_genero CHAR) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE v_nombre_generado VARCHAR(100) DEFAULT NULL;
    IF v_genero = "M" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Antonio", "Baltazar", "Carlos", "Daniel", "Ernesto", "Fernando", "Gustavo", "Hugo", "Ignacio" ,"Jaime",
                "Karim", "Lorenzo", "Manuel", "Nabor", "Octavio", "Pablo", "Quetzálcoatl", "Ramón", "Saúl" ,"Tadeo",
                "Uriel", "Valentín", "Yahir", "Xavier", "Zacek", "Alejandro", "Bernardo", "Camilo", "Dylan" ,"Edgar",
                "Francisco", "Gerardo", "Héctor", "Iván", "Josafat", "Karlo", "Luis", "Marco", "Neftalí" ,"Óscar",
                "Pedro", "Raúl", "Salvador", "Timoteo", "Uziel", "Víctor", "William", "Germán", "Benito","Gonzálo");
		ELSEIF v_genero = "F" THEN 
			SET v_nombre_generado = ELT(fn_numero_aleatorio_rangos(1,50),
				"Alondra", "Berenice", "Carla", "Daniela", "Evelyn", "Fernanda", "Gabriela", "Hanna", "Isabel" ,"Jazmín",
                "Karen", "Laura", "María", "Natalia", "Olga", "Patricia", "Quetzálli", "Renata", "Sandra" ,"Tamara",
                "Ursula", "Valeria", "Yara", "Xochítl", "Zara", "Alma", "Barbara", "Carolina", "Denisse" ,"Esther",
                "Fatima", "Galilea", "Helena", "Ivana", "Jaqueline", "Karla", "Lorena", "Magdalena", "Nadia" ,"Ofelia",
                "Paola", "Rosa", "Salomé", "Tanya", "Alejandra", "Josefa", "Wendy", "Valentina", "Elena","Sofía");
		END IF;

RETURN v_nombre_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_nombre_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_nombre_usuario`(v_id_persona int) RETURNS varchar(255) CHARSET utf8mb3
    DETERMINISTIC
BEGIN

 DECLARE vnombre VARCHAR(50) DEFAULT '-';
 DECLARE vapellido VARCHAR(50) DEFAULT '-';
 DECLARE vnumeral INT DEFAULT 0;
 
 SET vnombre = (select nombre from tbb_personas where id=v_id_persona);
 SET vapellido = (select primer_apellido from tbb_personas where id=v_id_persona);

 SET vnumeral = (select count(*) from tbb_usuarios where 
    Nombre_Usuario like CONCAT(vnombre,' ',vapellido,' %')); 

 
 
 IF vnumeral > 0 THEN 
 RETURN CONCAT(vnombre,' ',vapellido,' ',vnumeral);
 ELSEIF vnumeral=0 THEN
 RETURN CONCAT(vnombre,' ',vapellido);
 ELSEIF vnumeral>0 THEN
 RETURN CONCAT(vnombre,' ',vapellido,' ',vnumeral);
 ELSE
 RETURN CONCAT(vnombre,' ',vapellido);
 
 END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_numero_aleatorio_rangos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_numero_aleatorio_rangos`(v_limite_inferior int,
 v_limite_superior INT) RETURNS int
    DETERMINISTIC
BEGIN
     DECLARE v_numero_generado INT DEFAULT FLOOR(Rand()* (v_limite_superior-v_limite_inferior+1)+v_limite_inferior);
     SET @numero_generado = v_numero_generado;
RETURN v_numero_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_password_aleatorio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_password_aleatorio`(min_caracteres INT, max_caracteres INT) RETURNS char(32) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE chars VARCHAR(255) DEFAULT 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+=-';
    DECLARE password_chain CHAR(32) DEFAULT '';
    DECLARE i INT DEFAULT 0;
    DECLARE char_count INT DEFAULT 0;
    DECLARE password_length INT DEFAULT 0;

    SET password_length = fn_numero_aleatorio_rangos(min_caracteres,max_caracteres);

    WHILE i < password_length DO
        
        SET password_chain = CONCAT(password_chain, SUBSTRING(chars, fn_numero_aleatorio_rangos(0,length(chars)), 1));
        SET i = i + 1;
    END WHILE;

    /*SET password_chain = MD5(password_chain);*/

    RETURN password_chain;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_remplaza_caracteres` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_remplaza_caracteres`(vpalabra VARCHAR(60)) RETURNS varchar(60) CHARSET utf8mb4
    DETERMINISTIC
BEGIN

set vpalabra=REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(vpalabra, 'Á', 'A'), 'É','E'), 'Í', 'I'), 'Ó', 'O'), 'Ú','U');
set vpalabra=REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(vpalabra, 'á', 'a'), 'é','e'), 'í', 'i'), 'ó', 'o'), 'ú','u');
set vpalabra=REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(vpalabra, 'ä', 'a'), 'ë','e'), 'ï', 'i'), 'ö', 'o'), 'ü','u');
set vpalabra=REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(vpalabra, 'À', 'A'), 'È','E'), 'Ì', 'I'), 'Ò', 'O'), 'Ù','U');
set vpalabra=REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(vpalabra, 'à', 'a'), 'è','e'), 'ì', 'i'), 'ò', 'o'), 'ù','u');
set vpalabra=REPLACE(vpalabra, ' ', '_');
set vpalabra=REPLACE(vpalabra, '\'', '');
set vpalabra=REPLACE(vpalabra, 'ñ', 'n');
set vpalabra=REPLACE(vpalabra, 'Ñ', 'N');
set vpalabra=REPLACE(vpalabra, 'ç', 'c');
set vpalabra=REPLACE(vpalabra, 'Ç', 'C');
set vpalabra=REPLACE(vpalabra, 'ø', 'o');
set vpalabra=REPLACE(vpalabra, 'Ø', 'O');
set vpalabra=REPLACE(vpalabra, 'æ', 'ae');
set vpalabra=REPLACE(vpalabra, 'Æ', 'AE');
set vpalabra=REPLACE(vpalabra, 'œ', 'oe');
set vpalabra=REPLACE(vpalabra, 'Œ', 'OE');

RETURN vpalabra;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_estatus_bd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_estatus_bd`()
BEGIN
	
	(SELECT "tbb_atractivo_turistico" as Tabla,  COUNT(*) as Total_Registros FROM tbb_atractivo_turistico)
     UNION
	(SELECT "tbb_comentarios" as Tabla,	 COUNT(*) as Total_Registros FROM tbb_comentarios)
     UNION
	(SELECT "tbb_personas" as Tabla, COUNT(*) as Total_Registros FROM tbb_personas)
     UNION
	(SELECT "tbb_usuarios" as Tabla, COUNT(*) as Total_Registros FROM tbb_usuarios)
     UNION
	(SELECT "tbb_valoracion" as Tabla, COUNT(*) as Total_Registros FROM tbb_valoracion)
     UNION
	(SELECT "tbc_criterio" as Tabla, COUNT(*) as Total_Registros FROM tbc_criterio)
     UNION
	(SELECT "tbc_establecimientos" as Tabla, COUNT(*) as Total_Registros FROM tbc_establecimientos)
     UNION
	(SELECT "tbc_horarios" as Tabla, COUNT(*) as Total_Registros FROM tbc_horarios)
     UNION
	(SELECT "tbc_pueblos_magicos" as Tabla, COUNT(*) as Total_Registros FROM tbc_pueblos_magicos)
     UNION
	(SELECT "tbc_roles" as Tabla, COUNT(*) as Total_Registros FROM tbc_roles)
	UNION
	(SELECT "tbc_ubicaciones" as Tabla, COUNT(*) as Total_Registros FROM tbc_ubicaciones)
    UNION
    (SELECT "tbr_visita_atractivo" as Tabla, COUNT(*) as Total_Registros FROM tbr_visita_atractivo)
	UNION
	(SELECT "tbr_visita_establecimiento" as Tabla, COUNT(*) as Total_Registros FROM tbr_visita_establecimiento)
     UNION
	(SELECT "tbr_visita_pueblo" as Tabla, COUNT(*) as Total_Registros FROM tbr_visita_pueblo);
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_exportar_csv` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_exportar_csv`()
BEGIN
SELECT *
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tbb_atractivo_turistico.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM tbb_atractivo_turistico;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_inserta_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_inserta_usuario`()
BEGIN
   DECLARE v_genero CHAR(3) DEFAULT ELT(fn_numero_aleatorio_rangos(1,2), "M", "F");
   DECLARE v_nombre_generado VARCHAR(50) DEFAULT fn_genera_nombre(v_genero);
   DECLARE v_primer_apellido VARCHAR(50) DEFAULT fn_genera_apellido();
   DECLARE v_segundo_apellido VARCHAR(50) DEFAULT NULL;
   DECLARE v_fecha_nacimiento DATE DEFAULT NULL;
   DECLARE v_fecha_valida BOOLEAN DEFAULT FALSE;
   DECLARE v_fecha_inicio_sistema DATE DEFAULT "2023-05-14";
   DECLARE v_edad_persona INT DEFAULT FALSE;
   DECLARE v_fecha_edadminima DATETIME DEFAULT NULL;
   DECLARE v_fecha_inferior_registro DATE DEFAULT NULL;
   DECLARE v_id_persona INT DEFAULT NULL;
   DECLARE v_bandera_nobinario BOOLEAN DEFAULT fn_bandera_porcentaje(5);
   DECLARE v_fecha_registro DATETIME DEFAULT NULL;
   DECLARE v_nombre_usuario VARCHAR(80) DEFAULT NULL;
   DECLARE v_email_usuario VARCHAR(256) DEFAULT NULL;

   SELECT CONCAT("Generando los datos para un usuario del genero: ", v_genero) as Mensaje;      
   SET v_segundo_apellido = fn_genera_apellido();
   
   WHILE NOT v_fecha_valida  OR v_edad_persona <= 13 DO 
	SET v_fecha_nacimiento = fn_genera_fecha_nacimiento("1940-01-01",NOW());
    SET v_edad_persona = fn_calcula_edad(v_fecha_nacimiento);
    
    IF v_edad_persona >= 13 THEN
    SET v_fecha_valida = TRUE;
    END IF;
    
   END WHILE;
   
   SET v_fecha_edadminima= DATE_ADD(v_fecha_nacimiento, INTERVAL 13 YEAR);
   
   
   IF v_bandera_nobinario = TRUE THEN 
   SET v_genero = "N/A";
   END IF;
   
   IF v_fecha_edadminima < v_fecha_inicio_sistema THEN
		SET v_fecha_inferior_registro = v_fecha_inicio_sistema ;
   ELSE
		SET v_fecha_inferior_registro = v_fecha_edadminima;
   END IF;
   
   SET v_fecha_registro= fn_genera_fechahora_aleatoria(v_fecha_inferior_registro, 
   DATE_SUB(NOW(), INTERVAL 90 SECOND));
   
   
   
   /*Paso 1: Insertar los Datos de la Persona*/
   INSERT INTO tbb_personas VALUES (DEFAULT, v_nombre_generado, v_primer_apellido, 
   v_segundo_apellido, v_genero, v_fecha_nacimiento, DEFAULT, v_fecha_registro, NULL);
   SELECT "La persona correspondiente al Usuario ha sido creada." as Mensaje; 
   SET v_id_persona = last_insert_id();
    
   
    /* Paso 2: Insertar Úbicación de Procedencia*/
   
   /* Paso 4: Insertar los Datos del Usuario*/
   SET v_nombre_usuario=fn_genera_nombre_usuario(v_id_persona);
   SET v_email_usuario= fn_genera_email(v_nombre_generado,v_primer_apellido);
   INSERT INTO tbb_usuarios VALUES (v_id_persona, v_nombre_usuario, v_email_usuario, fn_password_aleatorio(3,15),
   DEFAULT, v_fecha_registro, NULL, 2);
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_inserta_usuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_inserta_usuarios`(v_cuantos INT)
BEGIN
   DECLARE i INT DEFAULT 1;
   WHILE i <= v_cuantos DO 
     SELECT CONCAT("Insertando al Usuario: ",i) as Mensaje;
			CALL sp_inserta_usuario();
    SET i=i+1;
	END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_limpia_bd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_limpia_bd`(v_password VARCHAR(10))
BEGIN
    IF v_password = "Turismo" THEN
		
        DELETE FROM tbb_usuarios;
        DELETE FROM tbb_personas;
        ALTER TABLE tbb_personas auto_increment = 1;


	ELSE 
		SELECT ("La contraseña es incorrecta.") AS ErrorMessage;
        
	END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-10 14:20:05
