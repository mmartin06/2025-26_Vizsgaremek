-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Ápr 01. 10:41
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `konyvhuszarok`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `bookcategories`
--

CREATE TABLE `bookcategories` (
  `BookId` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `bookcategories`
--

INSERT INTO `bookcategories` (`BookId`, `CategoryId`) VALUES
(1, 1),
(2, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 5),
(23, 5),
(24, 5),
(25, 5),
(26, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 8),
(31, 8),
(32, 8),
(33, 8),
(34, 8),
(35, 8),
(36, 8),
(37, 8),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 4),
(48, 4),
(49, 4),
(50, 4),
(51, 4),
(52, 4),
(53, 6),
(54, 6),
(55, 6),
(56, 6),
(57, 6),
(58, 7),
(59, 7),
(60, 7),
(61, 7),
(62, 7),
(63, 7);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `books`
--

CREATE TABLE `books` (
  `Id` int(11) NOT NULL,
  `Title` longtext NOT NULL,
  `Isbn` varchar(255) DEFAULT NULL,
  `Author` longtext DEFAULT NULL,
  `Publisher` longtext DEFAULT NULL,
  `PublicationYear` int(11) DEFAULT NULL,
  `PageCount` int(11) DEFAULT NULL,
  `Language` longtext DEFAULT NULL,
  `CoverType` longtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `Price` decimal(10,2) NOT NULL,
  `StockQuantity` int(11) NOT NULL,
  `CoverImageUrl` longtext DEFAULT NULL,
  `ReleaseDate` datetime(6) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `books`
--

INSERT INTO `books` (`Id`, `Title`, `Isbn`, `Author`, `Publisher`, `PublicationYear`, `PageCount`, `Language`, `CoverType`, `Description`, `Price`, `StockQuantity`, `CoverImageUrl`, `ReleaseDate`, `IsActive`) VALUES
(1, 'Harry Potter és a bölcsek köve', '9789636140533', 'J. K. Rowling', 'Animus kiadó', 2025, 287, 'Magyar', 'hardcover', 'A Harry Potterről szóló, hétkötetesre tervezett regényfolyam első része. A könyvben megismerkedhetünk többek között a Roxfort varázslóiskolával, Harryvel, a varázslópalántával, és tanúi lehetünk csodálatosan izgalmas kalandjainak. \"Harry Potter kisfiú, történetünk kezdetén 11 éves, valamint varázsló is, talán a leghatalmasabb varázsló, a kiválasztott, aki meg tud küzdeni a gonosz erőivel, erről azonban fogalma sincs. (..) Harry aztán egy napon levelet kap, pontosabban néhány tízezer levelet, a biztonság kedvéért, mivel a nagybácsi elkobzós kedve magasra hág, amelyből megtudja, hogy a következő szemesztert Roxfortban kezdheti, a világ legnevesebb bentlakásos varázslóiskolájában, amely nem kis mértékben hasonlít a brit iskolarendszer hírhedett public schooljaira, talán attól eltekintve, hogy koedukált. Harry, a kifosztott árva ekkor belép abba a világba, amelyhez szülei is tartoztak, hogy megküzdjön azzal a Ki-Ne-Mondd-A-Nevét sötét erővel, amely árvává tette. Harry kiválasztott, homlokán a jegy, de egyben közönséges nebuló is, akinek minden kiválasztottsága ellenére fel kell mutatnia valamit, esetünkben kiemelkedő sportteljesítményt és kellő csapatszellemet, hogy elnyerje az egyszerű diáktársat megillető tiszteletet, és megússza valahogy a vizsgáit. A Gonosz Erőt nem könnyű legyőzni, de egy elitiskola hierarchiájában kiküzdeni valami helyet, főként, ha az alsóbbrendű muglik között nevelkedett az ember, és mit sem tud a magasabb bűbájról, az még nehezebb. Több tucatnyi sajtótermék próbált már magyarázatot találni Harry Potter sikerére. Kezdjük talán azzal, hogy a könyv jó, szellemes, technikás, sodorja az olvasót, és ez elmondható a magyar kiadásról is, amely eltalálta a helyes középutat a máris nemzetközi kultusz tárgyát alkotó invenciók (Muggle: a tökfej normális világ, Quidditsch: a nagy nemzeti varázsló sport) túlzott magyarítása és elvtelen átvétele között.', 5200.00, 15, 'https://s01.static.libri.hu/cover/b6/f/716048_4.jpg', NULL, 1),
(2, 'Harry Potter és a titkok kamrája', '9789636142094', 'J. K. Rowling', 'Animus kiadó', 2026, 319, 'Magyar', 'hardcover', 'Könyvünk címszereplőjével, a varázslónak tanuló kiskamasszal már megismerkedhettünk a \"Harry Potter és a bölcsek köve\" című meseregényben. A mű és szerzője gyorsan világhírnévre tett szert. Harry varázslónak született. Második tanéve a Roxfort Boszorkány - és Varázslóképző Szakiskolában éppen olyan eseménydúsnak bizonyult, mint amilyen az első volt. Lekési a különvonatot, így barátai repülő autóján érkezik tanulmányai színhelyére. S a java csak ezután következik...', 5340.00, 14, 'https://s01.static.libri.hu/cover/33/2/716047_4.jpg', NULL, 1),
(4, 'Harry Potter és az azkabani fogoly', '9789636142100', 'J. K. Rowling', 'Animus kiadó', 2026, 399, 'Magyar', 'hardcover', 'Azkabanból, a gonosz varázslókat őrző rettegett és szuperbiztos börtönből megszökik egy fogoly. A Mágiaügyi Minisztériumban tudják, hogy a veszélyes szökevény Roxfortba tart, a Boszorkány-és Varázslóképző Szakiskolába.A varázslónövendék Harry Potter és barátai számára a harmadik tanév sem csak a vizsgák izgalmait tartogatja...', 5670.00, 12, 'https://s01.static.libri.hu/cover/c0/6/684283_4.jpg', NULL, 1),
(5, 'Harry Potter és a Tűz Serlege', '9789636144906', 'J. K. Rowling', 'Animus kiadó', 2026, 674, 'Magyar', 'hardcover', 'Melyik nemzeti válogatott nyeri a Kviddics Világkupát? Ki lesz a Trimágus Tusa győztese? Utóbbiért a világ három boszorkány- és varázslóképző tanintézetének legrátermettebb diákjai küzdenek. A világraszóló versengés házigazdája Roxfort, az az iskola, ahová Harry Potter immár negyedévesként érkezik. S ahogy az a felsőbb osztályosoknál már egyáltalán nem különös, Harry és barátai a másik nemet is felfedezik... Ám nem csupán e kellemes izgalmakat ígérő események várnak Harryre és barátaira. Voldemort, a fekete mágusok vezére újból készülődik...Tele van a történet váratlanokkal, véletlenekkel, s miért tagadnánk: rémekkel, szörnyekkel, kísértetekkel. Valahogy annyira tele, mint az életünk.', 6150.00, 18, 'https://s01.static.libri.hu/cover/a6/9/716046_4.jpg', NULL, 1),
(6, 'Harry Potter és a Főnix Rendje', '9789636140847', 'J. K. Rowling', 'Animus kiadó', 2026, 751, 'Magyar', 'hardcover', 'Dumbledore végül leeresztette kezét, és félhold szemüvegén át, fürkészve nézett Harry szemébe. - Eljött az ideje - szólt -, hogy elmondjam neked, amit már öt éve el kellett volna mondanom. Ülj le, kérlek! Ha megajándékozol egy kis türelemmel, mindent hallani fogsz, amit tudnod kell. Ha befejeztem, szidhatsz, dühönghetsz. Nem fogok védekezni. Harry Potter ötödik évére készül a Roxfort Boszorkány-Varázslóképző Szakiskolában. Harry - társaival ellentétben sosem örül a nyári szünetnek, ám ez a mostani még rosszabb, mint rendesen. Nem csak rokonai, Dursleyék keserítik meg az életét, de - ami a legfájdalmasabb - mintha barátai is elfeledkeztek volna róla. Harry azon töri a fejét, hogyan törhetne ki lehetetlen helyzetéből, ám nyári szünidejének egy hirtelen, drámai fordulat vet véget. Hamarosan azt is megtudja, hogy Roxfortban sem számíthat békés tanulásra és kviddicsezésre...', 7200.00, 5, 'https://s01.static.libri.hu/cover/ff/5/716045_4.jpg', NULL, 1),
(7, 'Harry Potter és a Félvér Herceg', '9789636144913', 'J. K. Rowling', 'Animus kiadó', 2026, 618, 'Magyar', 'hardcover', 'A Harry Potter sorozat hatodik kötete 2006. február 10-én jelenik meg magyar nyelven az Animus Kiadó gondozásában. A szerző nem árulja el előre, hogy ki a címben szereplő félvér herceg, csak annyit közölt, hogy nem az immár hatodéves varázslótanonc, de nem is Lord Voldemort, a gonosz varázsló. A regény egyik szereplője meghal - egyelőre titok, hogy ki.', 6820.00, 22, 'https://s01.static.libri.hu/cover/d8/e/716068_4.jpg', NULL, 1),
(8, 'Harry Potter és a Halál ereklyéi', '9789636145019', 'J. K. Rowling', 'Animus kiadó', 2025, 623, 'Magyar', 'hardcover', 'Ujjait öntudatlanul a karjába fúrta, mintha fizikai fájdalommal viaskodna. Össze sem tudta számolni, hányszor hullott már a vére. Egyszer elvesztette a jobb karja összes csontját, s ennek az útnak a során a homlokán és a kezén viselt sebhely mellé máris szerzett még egyet a mellkasára és párat az alkarjára, se mindeddig soha, egyetlenegyszer sem érezte azt, amit most: hogy végzetesen meggyengült, hogy pőre és kiszolgáltatott lett, hogy varázsereje legjavától fosztották meg. Hermione, ha ezt elpanaszolná neki, azt mondaná, a pálca annyit ér csak, amennyit a varázsló, aki használja. De Hermione nem tudhatja ezt, ő nem élte át, hogy a pálcája magától meglódul, akár az iránytű, és aranyló lángolkat lő az ellenségre. Harry most érezte csak át igazán, hogy mennyire bízott őrangyalában, a pálcájában lévő ikermagban, most, mikor már elveszítette azt.\"\n\nHarry, mint mindig, most is a Privet Drive-on, az őt csecsemőkorában befogadó Dursley-család otthonában tölti az iskolai szünetet. Ám hetedik tanévét nem kezdheti el a Roxfort Boszorkány- és Varázslóképző Szakiskolában. A Főnix Rendje azon fáradozik, hogy biztos helyre szöktesse, ahol Voldemort és csatlósai nem találnak rá. De teljesítheti-e folytonos bujkálás és életveszély közepette a küldetést, melyet Dumbledore professzortól kapott?\n\nA hetedik, s egyben utolsó Harry Potter-regény megjelenése valószínűleg a legnagyobb izgalommal várt esemény a könyvkiadás történetében. J. K. Rowlingnak még a legapróbb, Harry és barátai várható sorsára vonatkozó utalásai is mind szenzációs hírekként láttak napvilágot a sajtóban.\n\nValóban meghalt Albus Dumbledore? Kinek az oldalán áll Perselus Piton? Mik a megmaradt horcruxok, hová rejtette el lelkét Ő, akit nem nevezünk a nevén? Harry a forradásában hordozza a Sötét Nagyúr lelkének egy darabját, s ezért párszaszájú? Ezekre a kérdésekre választ kapunk a hetedik, egyben befejező kötetben.', 6620.00, 17, 'https://s01.static.libri.hu/cover/0c/e/682623_4.jpg', NULL, 1),
(9, 'A hobbit', '9789631437218', 'J. R. R. Tolkien', 'Magvető kft.', 2025, 306, 'Magyar', 'hardcover', 'Amikor kellemes, minden becsvágy nélküli életéből, meghitt föld alatti otthonából Gandalf, a mágus és egy csapat törp elragadja, Bilbó, a hobbit igazi kaland kellős közepébe csöppen: \"betörési szakértőként\" kell segédkeznie a kincs visszaszerzésében, amitől Smaug, a nagy és veszedelmes sárkány fosztotta meg egykor a Hegymély Királyát. Noha egy porcikája sem kívánja a kellemetlen megbízatást, Bilbó maga is lépten-nyomon meglepődik tulajdon ügyességén és leleményességén! A kalandok során már itt felbukkan a titokzatos varázserővel rendelkező gyűrű, amely Tolkien világában később is kiemelt szerepet fog játszani...\nJ. R. R. Tolkien saját gyermekeinek írta ezt a meseregényt, de 1937-es megjelenésekor azonnal óriási sikert aratott. Később megszületett a monumentális folytatás is, és azóta \"a világ két részre oszlik: azokra, akik már olvasták A hobbitot és A Gyűrűk Urát, és azokra, akik ezután fogják elolvasni őket.\"', 4480.00, 31, 'https://s01.static.libri.hu/cover/ab/b/4533028_4.jpg', NULL, 1),
(10, 'Trónok harca', '9789635826414', 'George R. R. Martin', 'Alexandra Könyvesház kft.', 2024, 815, 'Magyar', 'paperback', 'Westeros hét királyságát egykor a sárkánykirályok uralták. Vérrel és tűzzel teli uralmuknak Robert Baratheon vetett véget, aki letaszította a Vastrónról az utolsó, őrült Targaryen királyt. Azonban Robertet külső és belső ellenségek fenyegetik, és amikor jobbkeze, a hűséges Jon Arryn váratlanul meghal, legrégebbi barátjához és fegyvertársához, a hideg Északot kormányzó Eddard Starkhoz fordul segítségért. Deres végletekig hűséges, egyenes és merev ura egyedül találja magát a királyi udvarban, ahol senki és semmi sem az, aminek látszik, és egyre erősödik benne a gyanú, hogy Jon Arryn halála nem volt véletlen. Egy kontinenssel arrébb az utolsó sárkányherceg húgát bocsájtja áruba, hogy visszaszerezze a trónt, ám Robert legveszélyesebb ellenségei sokkal közelebb rejtőznek.\nMiközben az ambiciózus nagyurak és mindenre elszánt trónkövetelők dögkeselyűként köröznek a Vastrón körül, az emberek világát védő Falon túl feltámadnak a hideg szelek, és egy ősi fenyegetés kel újra életre. Westeros hosszú nyara véget érőben van; közeleg a tél.\n\nGeorge R. R. Martin elsöprő sikerű könyvsorozata, A tűz és jég dala forradalmasította a fantasy műfaját, és a 21. század egyik legnépszerűbb tévésorozata született belőle.', 5970.00, 11, 'https://s01.static.libri.hu/cover/5b/e/10295199_4.jpg', NULL, 1),
(11, 'Királyok csatája', '9789635828258', 'George R. R. Martin', 'Alexandra Könyvesház kft.', 2024, 909, 'Magyar', 'paperback', 'Westeros földjére ősz borul, az eget kettészelő üstökös vérontást és nyomorúságot jósol. Sárkánykő komor falaitól egészen Deres rideg földjéig seregek gyülekeznek; céljuk a Vastrón és a hét királyság fölötti uralom megszerzése. A Starkok bosszúra szomjaznak, ám a Lannisterek elsöprő vagyonával és haderejével kell szembenézniük, míg a Baratheon-házban fivér fordul fivér ellen.\nA fegyverek zajától távol több évszázad óta először újra sárkányüvöltés visszhangzik a világban. Daenerys Targaryennek ki kell vezetnie népe maradékát a sivatagból, és meg kell óvnia gyermekeit, a három sárkányfiókát, akik az egész történelem menetét megfordíthatják.\nEközben a mindenki által elfeledett és cserben hagyott Éjjeli Őrség maradék erejét összeszedve a Falon túlra indul, hogy szembenézzen a kietlen északi pusztákon rejtőzködő fenyegetéssel; az Őrség ifjú felderítője, Havas Jon útja sötétségbe és hidegbe vezet.\n\nGeorge R. R. Martin elsöprő sikerű könyvsorozata, A tűz és jég dala második része a kortárs fantasztikus irodalom egyik csúcsteljesítménye.', 6800.00, 18, 'https://s01.static.libri.hu/cover/53/e/11315103_4.jpg', NULL, 1),
(12, 'Kardok vihara', '9789635828265', 'George R. R. Martin', 'Alexandra Könyvesház kft.', 2024, 1116, 'Magyar', 'paperback', 'Eső áztatja Westeros felégetett földjét és a temetetlen holtakat. Az öt király háborúja a végéhez közeledik: a megsemmisítő vereséget szenvedett Stannis Baratheon Sárkánykőn várja a kegyelemdöfést, míg a kölyökkirály, Joffrey Baratheon Királyvárban ül diadalt. A minden egyes csatáját megnyerő, ám családja ősi székhelyét elvesztő Ifjú Farkas, Robb Stark Zúgóban gyűjti az erejét, miközben a többi Stark gyermek a szélrózsa minden irányába szétszóródva próbálja túlélni a káoszt és a pusztítást.\nMessze Északon a Falat évezredek óta nem látott veszély fenyegeti, ám az elfoglalására induló vadak seregét egy még halálosabb ellenség űzi az üvöltő hóviharban. A testvéreitől elszakadt Havas Jonnak választania kell a kötelesség és a boldogság között, és döntése egész Észak sorsát megpecsételheti.\nA Sárkányok Anyja vér és homok között tör előre jussa, a Vastrón felé, útja azonban váratlan kitérőkkel és áldozatokkal teli. Sárkányai révén élet és halál ura, ám sokkal könnyebb halált osztani, mint életet adni.\n\nGeorge R. R. Martin elsöprő sikerű könyvsorozata, A tűz és jég dala harmadik része egy percre sem engedi fellélegezni olvasóját; kíméletlen, megdöbbentő fordulatokkal és csúcspontokkal teli, letehetetlen olvasmány.', 6940.00, 10, 'https://s01.static.libri.hu/cover/78/0/11315102_4.jpg', NULL, 1),
(13, 'Varjak lakomája', '9789634478492', 'George R. R. Martin', 'Alexandra Könyvesház kft.', 2020, 829, 'Magyar', 'paperback', 'Csalóka béke honol Westeros sokat szenvedett földjén. A Lannister-ház minden ellenlábasát szétzúzta, ám a győzelemért szörnyű árat fizetett. A gyásztól csak még elszántabbá és ádázabbá váló Cersei uralma ingatag. Az anyakirálynő mindenhol ellenséget lát, és már élete egyetlen biztos pontjában, ikertestvérében és szerelmében sem bízik. A meggyengült Lannisterek körül ragadozók köröznek: a vasemberek Westeros partjait dúlják, míg Dorne hercege egyre közelebb jut lassan két évtizede dédelgetett bosszúvágya beteljesítéséhez.\nSamwell Tarly a Fal ifjú parancsnoka utasítására Óvárosba indul, hogy elnyerje a mesterek láncát. A Fellegvár azonban rengeteg veszélyes titkot őriz: köztük talán a Mások legyőzésének kulcsát... és a sárkányok rejtélyes kipusztulásának okát.\nTarth-i Brienne az eltűnt Stark sarjak nyomába ered, ám Folyóvidék romjai között nála veszélyesebb vadászok leselkednek. Eközben Westeros kikötőiben a tengerészek a sárkánykirálynőről és három sárkányáról regélnek...\n\nGeorge R. R. Martin elsöprő sikerű könyvsorozata, A tűz és jég dala negyedik része újra a hatalmasok könyörtelen játszmájába veti az olvasót, ahol csak győzelem és halál létezik.', 5100.00, 14, 'https://s01.static.libri.hu/cover/c7/f/6708940_4.jpg', NULL, 1),
(14, 'Sárkányok tánca', '9789635828289', 'George R. R. Martin', 'Alexandra Könyvesház kft.', 2024, 1101, 'Magyar', 'paperback', 'Közeleg a tél. A hideg szelek feltámadtak a sokat szenvedett Hét Királyságban, ahol az öt király háborúja után a túlélőknek most az éhínséggel kell szembenézniük.\n\nKözeleg a tél. A hideg szelek feltámadtak a sokat szenvedett Hét Királyságban, ahol az öt király háborúja után a túlélőknek most az éhínséggel kell szembenézniük. Az emberek birodalmát védelmező Fal ifjú parancsnoka, Havas Jon a Mások elleni reménytelen küzdelemre készíti fel a szétzüllött Éjjeli Őrséget, ám rá kell döbbennie, hogy ellenségei jóval közelebb vannak hozzá, mint gondolná. Stannis Baratheon Észak uralmáért vív elkeseredett harcot a Boltonokkal, miközben Királyvárban a Lannister-ház próbálja megerősíteni Tommen, a gyermekkirály törékeny uralmát a kivérzett Hét Királyság fölött. A Keskeny-tenger másik oldalán Tyrion Lannister, a megvetett és üldözött rokongyilkos sárkányvadászatra indul, ám útja veszélyekkel és váratlan kitérőkkel teli. A világ eközben az ősi városra, Meereenre figyel, ahol Viharbanszületett Daeneryst, Westeros jog szerinti uralkodóját minden oldalról ellenségei szorongatják. Hogy arathat diadalt a Sárkányok Anyja, ha három gyermekére sem számíthat? A végkifejlet csak tűz és vér lehet, ám ki éli túl a sárkányok táncát?\n\nGeorge R. R. Martin elsöprő sikerű könyvsorozata, A tűz és jég dala ötödik része szinte mindegyik oldala új fordulatokat, titkokat és drámai összecsapásokat tartogat.', 6900.00, 13, 'https://s01.static.libri.hu/cover/21/1/11315099_4.jpg', NULL, 1),
(15, 'The Witcher - Az utolsó kívánság', '9789635667024', 'Andrzej Sapkowski', 'Gabo Könyvkiadó Kft.', 2024, 346, 'Magyar', 'paperback', 'Geralt a vajákok közé tartozik: mágikus képességeinek köszönhetően, amelyeket hosszan tartó kiképzése és egy rejtélyes elixír csak még tovább csiszolt, zseniális és könyörtelen harcos hírében áll. Ugyanakkor nem hétköznapi gyilkos: célpontjai vérszomjas szörnyetegek és aljas fenevadak, amelyek mindenütt hatalmas pusztítást végeznek, és megtámadják az ártatlanokat.\nHiába tűnik azonban valami gonosznak vagy jónak, nem biztos, hogy valóban az - és minden mesében van egy csipetnyi igazság.\n\nAndrzej Sapkowski 1948-ban született Lengyelországban. Hazája egyik leghíresebb és legsikeresebb szerzőjének számít. A World Fantasy Életműdíjjal kitüntetett szerző Vaják-sorozatával nemzetközi sikert aratott, könyvei alapján képregények és számítógépes játékok is készültek, 2019-ben pedig a Netflix forgatott belőlük sorozatot Henry Cavill főszereplésével.', 4540.00, 13, 'https://s01.static.libri.hu/cover/e2/3/7016504_4.jpg', NULL, 1),
(16, 'The Witcher - A végzet kardja', '9786151100356', 'Andrzej Sapkowski', 'Gabo Könyvkiadó Kft.', 2025, 422, 'Magyar', 'paperback', 'Az utolsó kívánság nagy sikerű folytatásában Geralt további novellákban küzd szörnyekkel, démonokkal és emberi gonoszsággal...\n\nGeralt a vajákok közé tartozik: mágikus képességeinek köszönhetően, amelyeket hosszan tartó kiképzése és egy rejtélyes elixír csak még tovább csiszolt, zseniális és könyörtelen harcos hírében áll. Ugyanakkor nem hétköznapi gyilkos: célpontjai vérszomjas szörnyetegek és aljas fenevadak, amelyek mindenütt hatalmas pusztítást végeznek, és megtámadják az ártatlanokat. A birodalmat járva azonban fokozatosan ráébred, hogy bár prédái egy része kétségtelenül elvetemült szörnyeteg, mások azonban bűn, ármány vagy egyszerű ostobaság áldozatai.\n\nAndrzej Sapkowski 1948-ban született Lengyelországban. Hazája egyik leghíresebb és legsikeresebb szerzőjének számít. A World Fantasy Életműdíjjal kitüntetett szerző Vaják-sorozatával nemzetközi sikert aratott, könyvei alapján képregények és számítógépes játékok is készültek, 2019-ben pedig a Netflix forgatott belőlük sorozatot Henry Cavill főszereplésével.', 5400.00, 17, 'https://s01.static.libri.hu/cover/f1/5/6024228_4.jpg', NULL, 1),
(17, 'The Witcher - Tündevér', '9789635668779', 'Andrzej Sapkowski', 'Gabo Könyvkiadó Kft.', 2025, 371, 'Magyar', 'paperback', 'Több mint egy évszázada élnek viszonylagos békében az emberek, törpök és tündék. Az idők azonban változnak, és ahogy az indulatok egyre magasabbra csapnak, ismét vér áztatja a földet.\nRíviai Geralt, a vaják, egy megjövendölt gyermek születésére vár, akinek hatalma az egész világot képes lesz megváltoztatni - de hogy jobbá vagy rosszabbá teszi, még nem tudni.\nMiközben háború árnyéka borul a világra, a gyermeket különleges hatalma miatt többen is üldözőbe veszik, és Geraltra hárul a feladat, hogy megvédje - a vaják pedig soha nem adja fel.\n\nAndrzej Sapkowski 1948-ban született Lengyelországban. Hazája egyik leghíresebb és legsikeresebb szerzőjének számít. A World Fantasy Életműdíjjal kitüntetett szerző Vaják-sorozatával nemzetközi sikert aratott, könyvei alapján képregények és számítógépes játékok is készültek, 2019-ben pedig a Netflix forgatott belőlük sorozatot Henry Cavill főszereplésével. A Tündevérrel egy ötkötetes saga veszi kezdetét a Vaják-sorozaton belül.', 4400.00, 8, 'https://s01.static.libri.hu/cover/78/9/6147290_4.jpg', NULL, 1),
(18, 'The Witcher - A megvetés ideje', '9789634069263', 'Andrzej Sapkowski', 'Gabo Könyvkiadó Kft.', 2020, 402, 'Magyar', 'paperback', 'Hogy megvédje a rábízott Cirit, Ríviai Geraltnak messzire kell küldenie a vajákok otthonától, hogy Yennefer, a varázslónő szárnyai alatt tanuljon. A varázslógyűlésben azonban puccs készül, miközben kitör a háború. Geralt egy súlyos sérülés után az életéért küzd... Ciri pedig, akinek kezében a világ sorsa nyugszik, eltűnik.\n\nAndrzej Sapkowski 1948-ban született Lengyelországban. Hazája egyik leghíresebb és legsikeresebb szerzőjének számít. A World Fantasy Életműdíjjal kitüntetett szerző Vaják-sorozatával nemzetközi sikert aratott, könyvei alapján képregények és számítógépes játékok is készültek, 2019-ben pedig a Netflix forgatott belőlük sorozatot Henry Cavill főszereplésével.', 3980.00, 22, 'https://s01.static.libri.hu/cover/e6/d/6305292_4.jpg', NULL, 1),
(19, 'The Witcher - Tűzkeresztség', '9789635665747', 'Andrzej Sapkowski', 'Gabo Könyvkiadó Kft.', 2023, 422, 'Magyar', 'paperback', 'A varázslógyűlést ért támadásban Geralt súlyosan megsérült. A vaják feladata, hogy védje az ártatlanokat és megsegítse a szükségben azokat, akiket nagy hatalmú és veszedelmes szörnyek fenyegetnek. Most azonban sötétség borult a világra, és Ciri, Cintra trónjának várományosa, eltűnt - egy pletyka szerint a niflgaardi udvarban készül az esküvőjére. Geraltnak nincs választása: sérülései ellenére útnak kell indulnia, hogy megmentse a lányt.\n\nAndrzej Sapkowski 1948-ban született Lengyelországban. Hazája egyik leghíresebb és legsikeresebb szerzőjének számít. A World Fantasy Életműdíjjal kitüntetett szerző Vaják-sorozatával nemzetközi sikert aratott, könyvei alapján képregények és számítógépes játékok is készültek, 2019-ben pedig a Netflix forgatott belőlük sorozatot Henry Cavill főszereplésével.', 4530.00, 17, 'https://s01.static.libri.hu/cover/05/d/6429066_4.jpg', NULL, 1),
(20, 'Fecske-torony', '9789634069577', 'Andrzej Sapkowski', 'Gabo Könyvkiadó Kft.', 2020, 522, 'Magyar', 'paperback', 'A világot háború dúlja fel. Cirinek, a megjövendölt gyermeknek, nyoma veszett. Miközben barátok és ellenségek keresik, ő közönséges haramia álcáját ölti magára, és életében először az az életet éli, amit szeretne. Körülötte azonban egyre szorul a hurok. Geralt, a vaják összehívja szövetségeseit, hogy megmentse Cirit, akit kegyetlen zsoldosok üldöznek, miután haramiaként elhíresül. Csak egyetlen helyre menekülhet: a Fecske-toronyba. Andrzej Sapkowski 1948-ban született Lengyelországban. Hazája egyik leghíresebb és legsikeresebb szerzőjének számít. A World Fantasy Életműdíjjal kitüntetett szerző Vaják-sorozatával nemzetközi sikert aratott, könyvei alapján képregények és számítógépes játékok is készültek, 2019-ben pedig a Netflix forgatott belőlük sorozatot Henry Cavill főszereplésével.', 2990.00, 6, 'https://s01.static.libri.hu/cover/97/1/11086451_4.jpg', NULL, 1),
(21, 'A tó úrnője', '9789634069584', 'Andrzej Sapkowski', 'Gabo Könyvkiadó Kft.', 2020, 632, 'Magyar', 'paperback', 'Ciri, a vaják lány megmenekült a halál torkából, csak hogy a tündék világában essen fogságba. Szabadulására semmi remény, és ezen a helyen maga az idő sem létezik. A megjövendölt gyermek azonban nem fogadja el a vereséget - mindenáron csatlakoznia kell Geralthoz és társaihoz, és le kell győznie a legsötétebb rémálmát, Leo Bonhartot, a férfit, aki még mindig a nyomában liheg. A világban pedig továbbra is dúl a háború.   Andrzej Sapkowski 1948-ban született Lengyelországban. Hazája egyik leghíresebb és legsikeresebb szerzőjének számít. A World Fantasy Életműdíjjal kitüntetett szerző Vaják-sorozatával nemzetközi sikert aratott, könyvei alapján képregények és számítógépes játékok is készültek, 2019-ben pedig a Netflix forgatott belőlük sorozatot Henry Cavill főszereplésével.', 3100.00, 4, 'https://s01.static.libri.hu/cover/df/1/11086453_4.jpg', NULL, 1),
(22, 'Dűne', '9789635667000', 'Frank Herbert', 'Gabo Könyvkiadó Kft.', 2024, 594, 'Magyar', 'hardcover', 'Az univerzum legfontosabb terméke a fűszer, amely meghosszabbítja az életet, lehetővé teszi az űrutazást, és élő számítógépet csinál az emberből. Az emberlakta világokat uraló Impériumban azé a hatalom, aki a fűszert birtokolja. A Padisah Császár, a bolygókat uraló Nagy Házak, az Űrliga és a titokzatos rend, a Bene Gesserit kényes hatalmi egyensúlyának, a civilizáció egészének záloga, hogy a fűszerből nem lehet hiány. Ám ez az anyag csak egy helyen található, a sivatagos, kegyetlen Arrakison, amelyet lakói, a vad fremenek csak úgy ismernek: Dűne.\n\nFrank Herbert legendás regénye, amely megjelenésekor elnyerte a Hugo- és a Nebula-díjat, talán a legjobb science fiction, amit valaha írtak. A Dűne hatása ma már felfoghatatlan, az elmúlt fél évszázadban olvasók milliói fedezték fel az Arrakis világának részletességét, a szöveg szépségét és a könyvben rejlő filozófiát, társadalmi és vallási gondolatokat. Herbert lehengerlő és eleven története most átdolgozott kiadásban kerül újra az olvasók elé.\n\n,,A modern science fiction egyik alapköve.\"\nChicago Tribune', 6800.00, 18, 'https://s01.static.libri.hu/cover/b5/c/5828424_4.jpg', NULL, 1),
(23, 'A Dűne messiása', '9789635666089', 'Frank Herbert', 'Gabo Könyvkiadó Kft.', 2023, 344, 'Magyar', 'hardcover', 'Az emberi bolygókat egyesítő Impériumban Paul Muad-Dib, a jövőbe látó messiás uralkodik. Hithű harcosai, a vad fremenek szent dzsihádjukban feldúlták az univerzumot, és mindenhová elvitték a Mahdi szavait. Ám a háború és a vallási fanatizmus ádáz ellenségeket szült, akik mindenüket feláldoznák Muad-Dib bukásáért. Az Impérium régi hatalmai összefognak, hogy egy bonyolult összeesküvéssel törjenek az új Császár életére, aki maga sincs meggyőződve róla, hogy valóban egy jobb világot teremtett az emberiség számára.\n\nA Dűne messiásában Frank Herbert továbbviszi a magával ragadó Dűne történetét. Tizenkét évvel az első regény eseményei után a régi és az új világrend csap össze, a középpontban pedig olyan emberek állnak, akiknek minden erejükre szükségük van, hogy megbirkózzanak a rájuk váró sorssal. Herbert lenyűgöző gondolatisága és mély emberismerete emlékezetes karaktereken keresztül mutatja be, hogy sokszor a megváltó maga is lehet áldozat.\n\nA szerzőről:\nFrank Herbert (1920-1986) a modern science fiction egyik legfontosabb szerzője. Első regénye 1956-ban jelent meg, de az igazi sikert az 1965-ben kiadott Dűne hozta meg számára. A könyv több díjat nyert, többször választották a sci-fi legjobbjának, egyetemi tananyagként oktatják, és egyike a legnagyobb hatású regényeknek a zsánerben. Többen próbálkoztak a megfilmesítésével, a legismertebb David Lynch 1984-es mozifilmje, a legújabb pedig Denis Villeneuve rendezésében érkezik 2020-ban. Herbert a Dűnéhez öt folytatást írt, ezeken kívül mintegy másfél tucat regényt publikált önállóan és társszerzőkkel közösen. 2006 óta a Science Fiction Hall of Fame tagja.', 5750.00, 6, 'https://s01.static.libri.hu/cover/3e/d/6161133_4.jpg', NULL, 1),
(24, 'A Dűne gyermekei', '9789635667260', 'Frank Herbert', 'Gabo Könyvkiadó Kft.', 2024, 443, 'Magyar', 'hardcover', 'A Dűne örökre megváltozott. Paul Muad-Dib, a Kwisatz Haderach, a jövőbe látó messiás olyan folyamatokat indított el, amelyek túlnőttek az embereken, és a mindenség legfontosabb helyévé tették az Arrakist. Ám Muad-Dib nincs többé, elnyelte a sivatag mélye. Öröksége azonban tovább él.\n\nPaul gyermekei, Leto és Ghanima kénytelenek szembenézni a sorssal, melyet a történelem nekik rendelt. Az Impérium trónjának várományosaiként nemcsak emberek milliárdjai imádják és gyűlölik őket, de a legveszedelmesebb politikai intrikák középpontjában állnak. Mi a terve Aliának, aki Régensként uralja a világegyetemet? Miért tér vissza évtizedes távollét után nagyanyjuk, Lady Jessica az Arrakisra? Kicsoda a titokzatos Prédikátor, aki a Mahdi egyháza és az új világ ellen szónokol? És hogyan változnak meg az erőviszonyok, amikor újra színre lépnek a trónfosztott Corrinók? Az ikreknek és támogatóiknak nemsokára rá kell döbbenniük, hogy az események sokkal nagyobb áldozatot követelnek tőlük, mint amire eddig gondoltak volna.\n\nFrank Herbert A Dűne gyermekeiben továbbviszi az Atreides-dinasztia és a magával ragadó sivatagbolygó történetét. A szerző, miközben a társadalmat mozgató erőket vizsgálja, bemutatja azt is, milyen döntésekre kényszerülnek azok, akik milliárdok sorsára lehetnek hatással, és hogy az emberek gyakran olyan tettekre kényszerülnek, melyekért hatalmas árat kell fizetniük.\n\nA szerzőről:\n\nFrank Herbert (1920-1986) a modern science fiction egyik legfontosabb szerzője. Első regénye 1956-ban jelent meg, de az igazi sikert az 1965-ben kiadott Dűne hozta meg számára. A könyv több díjat nyert, többször választották a sci-fi legjobbjának, egyetemi tananyagként oktatják, és egyike a legnagyobb hatású regényeknek a zsánerben. Többen próbálkoztak a megfilmesítésével, a legismertebb David Lynch 1984-es mozifilmje, a legújabb pedig Denis Villeneuve rendezésében érkezik 2020-ban. Herbert a Dűnéhez öt folytatást írt, ezeken kívül mintegy másfél tucat regényt publikált önállóan és társszerzőkkel közösen. 2006 óta a Science Fiction Hall of Fame tagja.', 6800.00, 12, 'https://s01.static.libri.hu/cover/7d/4/10895658_4.jpg', NULL, 1),
(25, 'Alapítvány', '9789635669530', 'Isaac Asimov', 'Gabo Könyvkiadó Kft.', 2025, 361, 'Magyar', 'paperback', 'A Galaktikus Birodalom tizenkétezer éve létezik - ám egy matematikus szerint már nem sokáig. Hari Seldon minden politikai nyomás ellenére kitart amellett, hogy az általa kidolgozott új tudomány - a pszichohistória - megjósolta a civilizáció bukását. Az új Birodalom felemelkedését megelőző zűrzavar évezredei azonban lerövidíthetők, ha létrehozzák az emberi tudás tárházát egy távoli bolygón: az Alapítványt.\n\nIsaac Asimov klasszikus regénye írók és olvasók generációinak meghatározó olvasmányélménye, ami arra a kérdésre keresi a választ, vajon a tudomány módszereivel feltérképezhetjük-e a jövőt, és képesek vagyunk-e befolyásolni azt. Az Alapítvány-trilógia évtizedekkel a megírása után is elgondolkodtató olvasmány, aminek ott a helye minden sci-fi olvasó polcán.', 4400.00, 23, 'https://s01.static.libri.hu/cover/9b/7/7587628_4.jpg', NULL, 1),
(26, 'Alapítvány és Birodalom', '9789634067368', 'Isaac Asimov', 'Gabo Könyvkiadó Kft.', 2021, 367, 'Magyar', 'paperback', 'A Galaktikus Birodalom bukása elkezdődött. A távoli világok lassan modern barbárságba süllyednek, miközben elfeledik a modern tudomány vívmányait. A galaxis széli, jelentéktelen bolygón, a Terminuson azonban már működésbe lépett a matematikus Hari Seldon évezredes terve. Az Alapítvány vezetői, kihasználva tudásukat és leleményességüket, még a legnagyobb ellenfelekkel is szembe szállnak. Ám még a nagy Seldon sem számíthatott minden váratlan tényezővel, ami veszélybe sodorhatja az új aranykor eljövetelét.\n\nA klasszikus történet folytatásában Isaac Asimov tovább boncolgatja az emberi társadalmak működését és törvényszerűségeiket, arra keresve a választ, hogyan lehetne megjósolni a jövőt a tudomány segítségével. Az Alapítvány-trilógia évtizedekkel a megírása után is elgondolkodtató olvasmány, aminek ott a helye minden sci-fi olvasó polcán.', 3350.00, 12, 'https://s01.static.libri.hu/cover/df/a/7665522_4.jpg', NULL, 1),
(27, 'Második Alapítvány', '9789635665761', 'Isaac Asimov', 'Gabo Könyvkiadó Kft.', 2023, 338, 'Magyar', 'paperback', 'A Galaktikus Birodalom már csak emlék, az Alapítvány pedig behódolt a titokzatos Öszvér hatalmának. Úgy tűnik, a Seldon-terv elbukott. Ám létezik egy Második Alapítvány, amely a színfalak mögött igyekszik alakítani az eseményeket, és különleges módszereikkel visszavezetni az emberiséget a Seldon által megálmodott útra. Az Öszvér és az Első Alapítvány tagjai is mindent megtesznek, hogy rábukkanjanak erre a rejtélyes szervezetre, de a titkot, amely meghatározza az egész faj sorsát, nem olyan egyszerű feltárni.\n\nIsaac Asimov klasszikus trilógiájának utolsó kötetében az egész galaxisra kiterjedő kutatás során továbbra is azzal foglalkozik, mi mozgatja az emberiséget, milyen törvényszerűségeknek engedelmeskednek a társadalmak, és hogyan képes egy egyén döntése befolyásolni a jövő alakulását. Az Alapítvány-trilógia évtizedekkel a megírása után is elgondolkodtató olvasmány, aminek ott a helye minden sci-fi olvasó polcán.', 3990.00, 5, 'https://s01.static.libri.hu/cover/25/d/7753903_4.jpg', NULL, 1),
(28, 'Neuromancer', '9789634198918', 'William Gibson', 'Agave Könyvek Kiadó Kft.', 2024, 320, 'Magyar', 'hardcover', 'Sprawl-trilógia 1.\n\nA kikötő felett úgy szürkéllett az ég, mint a televízió képernyője adásszünet idején.\n\nEzzel a mondattal kezdődik minden idők egyik legjobb science fiction regénye, aminél pontosabban semmi sem jósolta meg a jövőt. William Gibson 1984-ben megjelent, Hugo-, Nebula és Philip K. Dick-díjakkal kitüntetett műve a cyberpunk műfaj alapköve, hatása mindmáig tetten érhető filmekben, zenékben, videojátékokban és más kortárs művészeti alkotásokban. Ráadásul itt találkozhatunk először a mátrixszal, azzal a globális konszenzuális-hallucinációval, ami a cybertér minden egyes adatbájtját megtestesíti, és ami alapjául szolgált a tizenöt évvel későbbi, azonos című kultikus film világának.\n\nCase volt a legjobb adattolvaj a mátrixban, egészen addig, amíg el nem követte a klasszikus hibát - lopott a megbízióitól, akik büntetésként megmérgezték az idegrendszerét, örökre száműzve őt a cybertérből. Most azonban egy rejtélyes, magát Armitage-nak nevező alak a megváltást ígéri neki: a teljes gyógyulást, ha Case elvállal egy munkát egy felmérhetetlenül erős mesterséges intelligencia ellen, ami Föld körüli pályán kering a baljós Tessier-Ashpool klán szolgálatában. Egy legendás adattolvaj lementett emlékezetével és egy utcai szamuráj védelmében Case útra kel mind a való világban, mind a mátrixban, a többi pedig már, ahogy mondani szokás: science fiction történelem.\n\nAz olvasó új fordításban tartja kezében a könyvet, mely Gibson exkluzív utószava mellett Jack Womack Valami sötét gödör című esszéjét is tartalmazza.', 4500.00, 17, 'https://s01.static.libri.hu/cover/a4/e/7961351_4.jpg', NULL, 1),
(29, 'A marsi', '9789634703761', 'Andy Weir', 'Fumax Kft', 2024, 357, 'Magyar', 'hardcover', 'Hat nappal ezelőtt Mark Watney az elsők között érkezett a Marsra. Most úgy fest, hogy ő lesz az első ember, aki ott is hal meg.\nMiután csaknem végez vele egy porvihar, ami evakuációra kényszeríti az őt halottnak gondoló társait, Mark a Marson ragad. Még arra is képtelen, hogy üzenetet küldjön a Földre, és tudassa a világgal, hogy életben van de még ha üzenhetne is, a készletei elfogynának, mielőtt egy mentőakció a segítségére siethetne.\nBár valószínűleg úgysem lesz ideje éhen halni. Sokkal valószínűbb, hogy még azelőtt vesztét okozzák a sérült berendezések, a könyörtelen környezet vagy egyszerűen csak a jó öreg emberi tényező.\nDe Mark nem hajlandó feladni. Találékonyságát, mérnöki képességeit és az élethez való hajthatatlan, makacs ragaszkodását latba vetve, rendíthetetlenül állja a sarat a számtalan leküzdhetetlennek tűnő akadállyal szemben. Vajon elegendőnek bizonyul-e leleményessége a lehetetlen véghezviteléhez?', 5800.00, 10, 'https://s01.static.libri.hu/cover/ce/2/1223442_4.jpg', NULL, 1),
(30, 'A tetovált lány', '9789633240588', 'Stieg Larsson', 'Animus kiadó', 2012, 622, 'Magyar', 'hardcover', 'Negyven éve történt. Az agg milliárdos elveszítette unokahúgát, akit gyermekeként szeretett. S azóta is, évről évre, valaki - mintha az őrületbe akarná kergetni - minden születésnapján emlékezteti az idős urat arra a tragikus napra. Az évek óta tartó nyomozás új lendületet kap, amikor a férfi felfogad egy vesztes sajtóper után állás nélkül maradt, rámenősnek tűnő újságírót, hogy kísérelje meg az igazság kiderítését. Hisz sokan élnek még a rokonságból, akik akkor ott voltak. A gyilkosnak köztük kell lennie. Ugyanakkor egy jó hírű magánnyomozó iroda munkatársnője rááll az újságíróra, s szinte mindent kiderít róla, ahogyan mások sem bízhatnak abban, hogy titkuk rejtve marad a kivételes tehetségű, tetovált lány előtt.', 3340.00, 16, 'https://s01.static.libri.hu/cover/08/6/833607_4.jpg', NULL, 1),
(31, 'A lány, aki a tűzzel játszik', '9789633243510', 'Stieg Larsson', 'Animus kiadó', 2019, 527, 'Magyar', 'hardcover', 'ényfeltáró riport megjelentetésére készül a kérlelhetetlen szókimondásáról ismert folyóirat, a Millennium. Hogyan kerülnek Svédországba a prostitúcióra kényszerített fiatal külföldi lányok? Kik a futtatók? És mindenekelőtt: kik veszik igénybe - köztük befolyásos emberek - a rabszolgasorban tartott nők szolgáltatásait? Érthető, ha egyesek mindent megtennének, hogy a nevük kimaradjon a cikkből. A tetovált lány című regényből már megismert Lisbeth Salander is tudomást szerez a Millennium tervéről, mégpedig korábbi barátja és bajtársa, az újságíró Mikael Blomkvist számítógépéről. Így keveredik bele ez a furcsa, öntörvényű lány egy az egész országot izgalomban tartó gyilkossági ügybe. Hajtóvadászat indul ellene, de ha valakit, őt nem könnyű elkapni, pedig nem csak a rendőrség keresi...', 3900.00, 21, 'https://s01.static.libri.hu/cover/27/b/739799_4.jpg', NULL, 1),
(32, 'A kártyavár összedől', '9789633243527', 'Stieg Larsson', 'Animus kiadó', 2019, 620, 'Magyar', 'hardcover', 'A zseniális és öntörvényű Lisbeth Salander életveszélyesen megsebesül. Még kórházban ápolják, amikor egy szűk, semmitől vissza nem riadó kör már szervezkedni kezd. A tét óriási a számukra: a svéd titkosszolgálat munkatársaiként bizonyíthatóan súlyos törvénytelenségeket követtek el. Mindenre képesek, hogy Salandert egyszer és mindenkorra eltüntessék, és ártalmatlanná tegyék szövetségesét, a sztárújságíró Mikael Blomkvistot is, aki jól dokumentált tényfeltáró riportban akarja leleplezni üzelmeiket. Rendőrök, titkos ügynökök, újságírók, közhivatalnokok válnak szövetségessé vagy halálos ellenséggé a küzdelemben, amely az egész politikai elitet óriási botránnyal fenyegeti. Azzal a gyermeki izgalommal és örömmel olvastam a Millennium trilógiát, mint valaha Dumas vagy Dickens műveit. Titkon azzal a reménnyel tölt el, hogy talán nincs minden veszve a mi tökéletlen világunkban. Lisbeth Salander, légy üdvözölve a halhatatlan regényhősök között!', 4000.00, 13, 'https://s01.static.libri.hu/cover/d0/c/743356_4.jpg', NULL, 1),
(33, 'A Da Vinci-kód', '9789639635449', 'Dan Brown', 'Gabo Könyvkiadó Kft.', 2006, 516, 'Magyar', 'hardcover', 'A csavaros kód Leonardo műveiben rejtőzik. • Kétségbeesett hajsza Európa székesegyházain és kastélyain keresztül. • Végül fény derül az évszázadokon át titokban tartott, megdöbbentő igazságra. \"Egy lángelme szüleménye.\" Nelson DeMille A tanulmányi úton Párizsban tartózkodó Robert Langdon szimbólumkutatót telefonon riasztják egy késő esti órán. A Louvre idős kurátorát meggyilkolták a múzeumban, és érthetetlen kódot találtak a holttest mellett. Miközben Langdon és Sophie Veveu, a tehetséges francia titkosírásszakértő a rejtvény megoldásán dolgozik, elképedten fedezi fel a rejtett utalások nyomát Leonardo da Vinci műveiben - noha ezeket az utalásokat mindenki láthatja, a festő zseniálisan álcázta őket. A hagyományos thrillerregények kliséiből kilépő A Da Vinci-kód egyszerre villámgyors, intelligens és többrétegű; részletek sokasága és alapos kutatások eredménye. Az első oldalaktól a váratlan és elképesztő végkifejletig Dan Brown bestsellerszerző már megint mesterien bonyolítja a történetet.', 7800.00, 17, 'https://s01.static.libri.hu/cover/86/f/729667_4.jpg', NULL, 1),
(34, 'Angyalok és démonok', '9789635662982', 'Dan Brown', 'Gabo Könyvkiadó Kft.', 2023, 708, 'Magyar', 'hardcover', 'Egy ősrégi, titkos testvériség. Egy pusztító erejű, új fegyver. És egy elképesztő célpont. Robert Langdont, a Harvard világhírű szimbólumkutatóját egy svájci tudományos intézetbe hívják, hogy segítsen megfejteni egy rejtélyes jelet, amelyet egy meggyilkolt fizikus mellkasába égettek. Langdon elképesztő felfedezésre jut: egy több száz éves földalatti szervezet - az Illuminátusok - bosszúhadjáratra készül a katolikus egyház ellen. Langdon mindenáron meg akarja menteni a Vatikánt a hatalmas erejű időzített bombától; a gyönyörű és titokzatos tudóssal, Vittoria Vetrával szövetségben Rómába megy. Hétpecsétes titkokon, veszélyes katakombákon, elhagyatott székesegyházakon és a földkerekség legrejtettebb barlangján át, őrült hajszát indítanak együtt a rég elfeledett Illuminátusok búvóhelye után.', 5760.00, 30, 'https://s01.static.libri.hu/cover/12/b/819752_4.jpg', NULL, 1),
(35, 'Holtodiglan', '9789633571170', 'Gillian Flynn', 'Alexandra Kiadó', 2013, 528, 'Magyar', 'paperback', 'Ásó, kapa, nagyharang - a romantikus hollywoodi filmekben valahol itt ér véget a történet. Ám mi lesz ezután? Mi történik, amikor a boldog álom szép lassan szertefoszlik, s már abban sem vagyunk biztosak, hogy valóban ismerjük azt, akinek igent mondtunk.', 3600.00, 14, 'https://s01.static.libri.hu/cover/d9/b/872497_4.jpg', NULL, 1),
(36, 'Tíz kicsi néger', '9789634794110', 'Agatha Christie', NULL, 2019, 262, 'Magyar', 'paperback', 'Agatha Christie leghíresebb és legnépszerűbb krimijében nyolc ember kap meghívást egy szigetre - és aztán az időjárás szeszélye elvágja őket a külvilágtól, a szakácsnővel és az inassal együtt.  Tíz ember, aki mind megúszta, hogy elítéljék gyilkosságért, most együtt kénytelen tölteni néhány napot. Szerencsére a szakácsnő remekül főz, a portói bor kiváló, és a helyzet nem olyan rossz, mint várták. Egészen addig, amíg vacsora után fel nem hangzik egy hang, amely mindannyiukat megvádolja. És az ebédlőasztalon a tíz kicsi porcelán négerfigurából eltörik egy... és egyikük meghal.  Vajon miért van minden szobában a falon a gyerekvers a tíz kicsi négerről, és a vendégek közül hányan távoznak a szigetről végül?', 2000.00, 13, 'https://s01.static.libri.hu/cover/bd/e/5892416_4.jpg', NULL, 1),
(37, 'Gyilkosság az Orient expresszen', '9789636205362', 'Agatha Christie', 'Helikon Kiadó', 2024, 300, 'Magyar', 'paperback', 'A történet a szerzőtől megszokott módon rendkívül csavaros, a feszültség oldalról oldalra nő, a megfejtéstől pedig leesik az állunk. A kor olvasóinak azonban még egy szempontból különleges élményt jelenthetett a regény: a cselekménybe ugyanis Agatha Christie beépítette az évszázad bűnügyének nevezett, brutális gyermekgyilkossági esetet, mely \"a Lindbergh bébi elrablása\" néven híresült el világszerte.\n\nA híres Orient expressz a hóban vesztegel. Az egyik utas holtan fekszik a kabinjában, testét tizenkét késszúrás járta át. Az ajtó belülről zárva. A vonaton tizenkét utas maradt, a legkülönbözőbb társadalmi osztályból és nemzetiségből, ám mind egyre idegesebbek. Vagy van más is, ami összeköti őket?\nHercule Poirot, a legendás nyomozó csak a kis szürke agysejtjeire támaszkodhat a hóviharban rekedt luxusvonaton. Egyetlen dolog biztos: a gyilkos az utasok közt van, és Poirot-nak meg kell találnia, mielőtt újra lesújt...', 4000.00, 16, 'https://s01.static.libri.hu/cover/7c/8/6081223_4.jpg', NULL, 1),
(38, 'Büszkeség és balítélet', '9789634038306', 'Jane Austen', 'Manó Könyvek', 2024, 452, 'Magyar', 'hardcover', 'Az öt hajadon leánygyermekkel büszkélkedő Bennet család még nem sejti, hogy a szomszéd birtokot megvásárló ifjú, vagyonos nemesember és legjobb barátja akaratlanul is alaposan felforgatják majd a családtagok hétköznapjait. Szenvedélyes mulatságok, intrika és pletyka, szerelmi incselkedés és féltékeny bosszú története ez, amelyben egy ifjú hölgy mindenki eszén túljár, és tűzön!vízen át megtalálja a boldogságát. Jane Austen utánozhatatlan ironikus humora és a XIX. századi Anglia színes korrajza teszi páratlanul szórakoztatóvá az írónő legismertebb, és legtöbbször filmre vitt romantikus regényét.', 4930.00, 12, 'https://s01.static.libri.hu/cover/6f/7/6585783_4.jpg', NULL, 1),
(39, 'Jane Eyre', '9789639678279', 'Charlotte Brontë', 'Új Palatinus Könyvesház Kft.', 2015, 608, 'Magyar', 'hardcover', 'Az árván maradt Jane Eyre-t szívtelen nagynénje neveli, ám egyre súlyosabb ellentéteik miatt a néni végül árvaházba adja a kislányt. Jane-ből művelt, kedves modorú kisasszony lesz, és ennek köszönhetően sikerül tanítónőként elhelyezkednie egy jómódú különc kastélyában, Thornfield Hall-ban. Miközben az úr, Mr. Rochester szeleburdi gyámleányát pallérozza, tiszta szerelem ébred benne gazdája iránt, és legnagyobb örömére érzelmei nem maradnak viszonzatlanok. Ám a kastély és a férfi sötét titka váratlan akadályt állít boldogságuk elé. Mind Jane-nek, mind Rochesternek súlyos megpróbáltatásokon kell átesnie, míg kiderül, vajon lehet-e reményük a megalkuvás nélküli beteljesedésre. Charlotte Bronte legkiérleltebb regénye máig érvényes példát mutat méltóságból, hűségből és a magára eszmélt női lélek erejébe vetett hitből.', 3520.00, 13, 'https://s01.static.libri.hu/cover/10/7/2775514_4.jpg', NULL, 1),
(40, 'Üvöltő szelek', '9789635841097', 'Emily Bronte', 'Menő Könyvek', 2026, 445, 'Magyar', 'hardcover', 'A gyermek Heathcliffet a skót felföld lápos vidékén találják. Mr. Earnshaw szíve megegesik az elhagyott fiún, és hazaviszi házába, ahol lányával, Cathyvel és fiával, Hindleyvel él együtt. Heathcliff az évek múltával beleszeret Cathybe. Ám a féltékeny Hindley mindenáron tönkre akarja tenni, ezért azon a napon, amikor Mr. Earnshaw meghal, az istállóba száműzi Heathcliffet. Nem sokkal később Cathy is elhagyja a házat, feleségül megy a szomszéd birtokos fiához, Edgar Lintonhoz. Heathcliff pedig szépen, lassan kiterveli rettenetes bosszúját... Harmincéves sem volt még Emily Brontë, amikor megírta a világirodalom talán legkülönösebb szerelmi regényét. Valóság és látomás, természet és lélekelemzés, vadság és szelídség furcsa szövedéke ez a történet, egy romantikus írói lélek vallomása a szenvedélyes szerelemről.', 5810.00, 47, 'https://s01.static.libri.hu/cover/84/3/8205199_4.jpg', NULL, 1),
(41, 'A nagy Gatsby', '9789635048359', 'Francis Scott Fitzgerald', 'Európa Könyvkiadó Kft.', 2025, 225, 'Magyar', 'hardcover', 'Jay Gatsby, a titokzatos milliomos felemelkedésének, tündöklésének és bukásának története sosem volt még ennyire aktuális. A 20. század egyik kiemelkedő világirodalmi alkotása művészi tökéllyel jeleníti meg az amerikai álom olyan örök témáit, mint a pénz és a hatalom bűvölete, az ambíció, a lehetetlen megkísértése és az újrakezdés lehetősége, miközben érzékletes képet fest a húszas évek túlhabzó dzsesszkorszakáról is. A szegény sorból származó Gatsby beleszeret egy gazdag lányba, Daisybe, de a háború elsodorja őket egymástól, s míg a fiatalember a tengerentúlon harcol, a lány férjhez megy egy faragatlan, ám dúsgazdag emberhez, Tom Buchananhez. Hazatérése után Gatsby fanatikus akarással, az eszközökben sem válogatva vagyont szerez, hogy \"méltó\" legyen Daisyhez, és hogy a világítótorony reményt adó zöld fényét követve újrateremthesse a múltat és visszahódíthassa a fiatal asszonyt. A gazdasági összeomlás előszobájában zajló szerelmi háromszög, a fényűző partik, a politikusok és filmsztárok, a luxusautók és hidroplánok ma is ismerős színfalai mögött azonban végül a boldogtalan házasságok és beteljesületlen szerelmek, a szegénység és az elnyomás, a reménytelenség, a kiábrándultság és a magány világát találjuk.\nF. Scott Fitzgerald 1925-ben, A nagy Gatsby-vel ért pályája csúcsára: ez az a regénye, amely egymagában is előkelő helyet biztosítana számára a világirodalom nagyjai között. Mesteri szimbólumok, elegáns szerkezet, kristálytiszta próza, s a görög tragédiák sorsszerűségével kibontakozó cselekmény teszik remekművé és ma is letehetetlen olvasmánnyá A nagy Gatsby-t.\nA regényt most új fordításban vehetik kézbe az olvasók.', 4900.00, 15, 'https://s01.static.libri.hu/cover/6f/9/10269353_4.jpg', NULL, 1),
(42, 'Mielőtt megismertelek', '9789636042301', 'Jojo Moyes', 'Libri Könyvkiadó Kft.', 2023, 560, 'Magyar', 'hardcover', 'Lou Clark átlagos, hétköznapi lány, aki sok mindent tud. Tudja, hány lépés van a buszmegálló és az otthona között. Tudja, hogy szeret a helyi kávézóban dolgozni, és tudja, hogy talán nem szerelmes a barátjába, Patrickbe.\nAmit Lou nem tud, az az, hogy hamarosan elveszíti a munkáját, és olyan kihívásokkal kell szembenéznie, amelyeket addig elképzelni sem tudott.\nWill Traynor fiatal és jóképű, ám egy motorbaleset következtében teljesen lebénult. Tudja, hogy ezentúl nem habzsolhatja nagykanállal az életet, és hogy a fényűző utazásoknak és kalandoknak befellegzett. Tudja, hogy az élet immár semmit sem tartogat számára, és azt is pontosan tudja, hogyan fog véget vetni az egésznek.\nAmit Will nem tud, az az, hogy a Lou hamarosan berobban a világába, és fenekestül felforgatja azt.\nÉs sem Lou, sem Will nem tudja még, de örökre megváltoztatják majd egymás életét.\n\n*\nA Mielőtt megismertelek szívszorítóan romantikus regény: két olyan ember története, akikben kezdetben semmi közös sincs, ám végül mégis képesek meghozni egymásért a világ legnehezebb döntését is.', 5200.00, 14, 'https://s01.static.libri.hu/cover/c0/c/10250591_4.jpg', NULL, 1);
INSERT INTO `books` (`Id`, `Title`, `Isbn`, `Author`, `Publisher`, `PublicationYear`, `PageCount`, `Language`, `CoverType`, `Description`, `Price`, `StockQuantity`, `CoverImageUrl`, `ReleaseDate`, `IsActive`) VALUES
(43, '1984', '9789632676623', 'George Orwell', 'Lazi Könyvkiadó Kft.', 2026, 291, 'Magyar', 'hardcover', 'George Orwell zseniális disztópiáját 1948-ban írta meg, de mit sem veszített aktualitásából. Az író által bevezetett fogalmak, mint például a Nagy Testvér, a Gondolatrendőrség, a 101-es szoba, vagy az olyan mondatok, mint: \"a szabadság az, ha szabadon kimondható, hogy kettő meg kettő az négy\" a mai napig erősen hatnak.\nEgy olyan világ jelenik meg ebben a műben, ahol a rendszer legfőbb célja az emberek fölötti totális hatalom megszerzése legbelsőbb lényegük megtörésével, elméjük ízekre szedésével és teljes átalakításával. Ehhez minden létező eszközt bevetnek, a beszélt nyelv - és ezáltal a gondolatok - egyre erőteljesebb redukálásától kezdve az állandó megfigyelésen át (a Nagy Testvér mindent lát), az agymosáson, tudatmanipuláción, a legrafináltabb testi- és lelki kínzásokon keresztül a történelemhamisításig, míg végül: \"Soha többé nem leszel képes normális emberi érzésekre. Minden meghal benned... Üres leszel. Kipréselünk belőled mindent, aztán megtöltünk önmagunkkal.\"\nA magányos lázadó, Winston Smith történetét is magában foglaló, sokkoló és egyben gondolatébresztő kultuszregényt minden érző és gondolkodó embernek fontos megismerni. Még fontosabb ezt követően olvasmányélményét a történelmi ismereteivel és az aktuális jelenével összevetni...', 4400.00, 16, 'https://s01.static.libri.hu/cover/55/4/7055356_4.jpg', NULL, 1),
(44, 'Állatfarm', '9789636202576', 'George Orwell', 'Helikon Kiadó', 2025, 119, 'Magyar', 'paperback', '\"Minden állat egyenlő, de néhány állat egyenlőbb a többinél.\" E szállóigévé vált mondat nagyjából össze is foglalja George Orwell 1945-ben megjelent kisregényének lényegét. Az 1984 mellett kétségkívül az Állatfarm az angol író legismertebb és legnagyobb hatású műve, amely szintén a totális diktatúrák működési mechanizmusát mutatja be - nem véletlen, hogy Magyarországon mindkét regény évtizedeken át csak szamizdat kiadásban volt olvasható.\nA két mű közötti legfőbb különbség az, hogy míg az 1984 egy elképzelt - igencsak ijesztő - jövő krónikája, az Állatfarm a múlt, konkrétan a szovjet forradalom és a sztálini diktatúra kiépülésének allegóriája. A parodisztikus történet hőseiben könnyen felismerhetők a legjelentősebb szovjet politikusok (Lenin, Sztálin és Trockij), illetve a különböző állatok által szimbolizált szervezetek vagy társadalmi rétegek.\nGeorge Orwell klasszikus művét most új fordításban kínáljuk olvasóinknak.', 2620.00, 8, 'https://s01.static.libri.hu/cover/a5/a/6951642_4.jpg', NULL, 1),
(45, 'Szép új világ', '9789632666457', 'Aldous Huxley', 'Cartaphilus Kiadó', 2018, 318, 'Magyar', 'ebook', '2540-ben a Boldogságra való puszta törekvés immár kevés, ha egyszer még az Életnél is több, a holtig tartó Ifjúság elidegeníthetetlen joga is mindenkinek megadatott. Ki bánja, ha közben a Szabadság és Egyenloség hiú eszméi s megannyi más kacat - muvészet, hit, az önmagáért valótudás - mind oda került, ahová való: a történelem szemétdombjára!Mert aki mást, úgymond, többet akar - Istent, költészetet, jóságot, szabadságot, olykor a magány csendjét vagy épp a bun katarzisát -, az nem akar mást, mint a boldogtalanságot.Az efféle Vadembernek a Világellenorök jóindulatú bölcsességgel kormányozott világállamában nincs helye. Jobban teszi hát, ha a földgolyó egy távoli zugába húzódva a sötét múlt kínjaival sanyargatja magát: ínséggel, betegséggel, hideggel, forrósággal, gyötro szenvedéssel és gyilkos szenvedéllyel.Netán egy Shakespeare nevu, rég halott rajongó összegyujtött muveinek forgatásával. Vagy Huxley olvasásával - mondjuk egy \"Szép új világ\" címu könyvvel.', 3600.00, 23, 'https://s01.static.libri.hu/cover/8b/e/6705439_4.jpg', NULL, 1),
(46, 'Fahrenheit 451 és más történetek', '9789634191841', 'Ray Bradbury', 'Agave Könyvek Kiadó Kft.', 2024, 255, 'Magyar', 'paperback', 'Guy Montag tűzőrként dolgozik. Az a munkája, hogy elégesse a könyveket a házakkal együtt, ahol eldugták azokat. Montag élvezi a munkáját. Tíz éve tűzőr, és mindig felhőtlen örömmel vonul ki az éjszakai riasztásokra, boldogan nézi a lapokat emésztő lángokat. Aztán egy nap találkozik egy lánnyal, aki egy olyan múltról mesél neki, amiben az emberek még nem féltek, majd megismerkedik egy professzorral, aki olyan jövőt fest elé, amelyben az emberek gondolkodnak. És akkor Guy Montag hirtelen ráébred arra, mi az igazi hivatása.\n\nKötetünkbe Bradbury nagy hatású klasszikusa mellé további öt remekbe szabott novellát választottunk a sci-fi irodalom nagymesterétől.', 3100.00, 13, 'https://s01.static.libri.hu/cover/de/5/3460912_4.jpg', NULL, 1),
(47, 'AZ', '9789634058366', 'Stephen King', 'Európa Könyvkiadó', 2017, 496, 'Magyar', 'ebook', 'Heten voltak. Hét kiskamasz barát, akiknek szembe kellett szállniuk a városukat terrorizáló rémmel. A csatornákban, a lefolyókban, a kanálisban lakó Az időről időre felszínre bukkant, és akkor útját hullák szegélyezték. Sok hulla. De Derry városában ezen senki sem lepődött meg. Az emberek halandóak, a gyerekek meg főleg. Egészen addig, amíg ők heten össze nem fogtak, hogy legyőzzék Azt. Bill, a vezér, aki az öccse halálát akarja megbosszulni. Ben, akinek a könyvek a barátai, na meg az ennivaló. Richie, akinek mindig rosszkor jár a szája, ráadásul különféle Hangokon. Stan, aki gyűlöli a rendetlenséget és a piszkot. Eddie, akinek asztmája van és tankszerű anyja. Michael, a néger. És Beverly, a lány, akit ver az apja és akibe ketten is szerelmesek. De hogyan szállhat szembe hét gyerek az egész várost megfertőző gonosszal? Stephen King hatalmas regénye vérfagyasztó izgalmak során válaszolja meg a kérdést. És mesél még gyerekkorról és felnőttségről, pénzről és szegénységről, barátságról és kirekesztettségről, lányról és fiúról. Szóval az életről.', 4100.00, 12, 'https://s01.static.libri.hu/cover/a5/3/4165010_4.jpg', NULL, 1),
(48, 'A ragyogás', '9789634059165', 'Stephen King', 'Európa Könyvkiadó Kft.', 2024, 430, 'Magyar', 'hardcover', '\"- Minden nagy szállodának vannak botrányai - mondta. - Ahogy kísértet is van minden nagy szállodában. Hogy miért? A fenébe is, az emberek jönnek-mennek. Megesik, hogy valamelyik a szobájában dobja fel a talpát, a szíve, vagy gutaütés, vagy valami ilyesmi. A szálloda babonás hely. Nincs tizenharmadik emelet, nincs tizenhármas szoba, nincs tükör az ajtón, amin az ember bemegy, meg hasonlók.\"\n\nStephen King egyik leghíresebb története, A ragyogás, a Sziklás-hegység egyik magaslatán, egy világtól elzárt szállodában játszódik. Itt vállal állást az alkoholizmusából éppen kigyógyult Jack Torrance, és vele együtt ideköltözik felesége, Wendy, és kisfia, Danny is. Miközben Jack egyre megszállottabban próbálja megírni a szálloda történetét, természetfeletti, látnoki képességekkel rendelkező fia egyre több furcsa jelet lát...\n\nA ragyogás 1977-ben jelent meg először, és azonnal bestseller lett. Az azóta klasszikussá vált műből 1980-ban Stanley Kubrick rendezett filmet, Jack Nicholson főszereplésével.', 5920.00, 16, 'https://s01.static.libri.hu/cover/5c/9/4832423_4.jpg', NULL, 1),
(49, 'Állattemető', '2399981323870', 'Stephen King', 'Európa Könyvkiadó', 1993, 453, 'Magyar', 'paperback', 'Ismertető: Dr. Louis Creed, a fiatal orvos kitűnő állást kapott: a Maine-i Egyetem rendelőjének lett a vezetője, ezért chicagóból az idilli New England-i tájban álló, magányos házba költözik családjával - feleségével, Rachellel, ötéves lányukkal, Ellie-vel és másfél éves kisfiukkal, Gage-dzsel. Boldogan, a szép jövő reményében veszik birtokba új otthonukat... Az első gondra az út túloldalán, velük átellenben élő öregember, Jud hívja föl a figyelmüket: a tájat kettészelő országúton éjjel-nappal olajszállító tartálykocsik dübörögnek, halálos veszélynek téve ki a háziállatokat és az apróságokat. Nem véletlenül van a közelben egy nyomasztó légkörű, ódon temető az elgázolt háziállatok számára... Az első trauma akkkor éri Louist, amikor egy baleset áldozatául esett, haldokló fiú a rendelőben dadogó szavakkal óva inti az állattemetőn túli veszedelemtől. Nem sokra rá egy tartálykocsi elgázolja Ellie imádott macskáját, és az öreg Jud - jó-vagy rosszakaratból? - az állattemetőn túli, hátborzongató vidékre, a micmac indiánok egykori temetkezőhelyére viszi Louist, s ott földelteti el vele az állatot. Másnap a macska visszatér - de ocsmány jószág lett belőle: lomha, ijesztően bűzlő és gonosz. Aztán néhány békés hónap után a kis Cage elszabadul szüleitől, és szaladni kezd pici lábain az országút felé...További ismertető: \"Belelapozás\".', 3100.00, 12, 'https://s06.static.libri.hu/cover/sl/21/d/21d116f305dedfb3d4167bd286b779ae_big.jpg', NULL, 1),
(50, 'Köd', '9789636143084', 'Ragnar Jónasson', 'Animus kiadó', 2023, 263, 'Magyar', 'hardcover', 'Erla és Einar, a középkorú házaspár évtizedek óta elszigeteltségben él egy tanyán Izland keleti részén. A téli hónapokban még a legközelebbi település is elérhetetlen a kegyetlen időjárási viszonyok miatt. 1987 karácsonyán, a hóvihar elől menekülve egy férfi bukkan fel a küszöbükön. Erlában rögtön felébred a gyanú, Einar azonban mindenképp segíteni szeretne az eltévedt utazón. Egy váratlan vendég, egy hazug, egy gyilkos. Nem mindenki éli túl az éjszakát.\n\nHulda Hermannsdóttir nyomozó csak nemrég állt újra munkába a lánya elvesztése után, amikor megkapja az ügyet. A lélekölő nyomozás során olyan részletek derülnek ki, amelyek örökké kísérteni fogják. Vajon feloszlik valaha a mindent elnyelő köd?\n\nA Köd Ragnar Jónasson kritikusok által is elismert krimisorozatának harmadik kötete, a Sötétség és a Ború méltán borzongató lezárása.', 4200.00, 12, 'https://s01.static.libri.hu/cover/b0/8/10253843_4.jpg', NULL, 1),
(51, 'Carrie', '9789635043934', 'Stephen King', 'Európa Könyvkiadó Kft.', 2023, 283, 'Magyar', 'hardcover', 'A chamberlaini gimnáziumban közeleg az érettségi. A tizenhat éves, esetlen Carrie White-ot nemcsak bigottan vallásos anyja terrorizálja, hanem diáktársai - főként a lányok - gúnyolódásának is állandó céltáblája. Egy különösen megalázó esemény után a főkolomposokat megbüntetik, Carrie-ben pedig nőttön-nő az indulat, elégtételt akar venni az őt ért sérelmekért. Egyre inkább tudatosul benne, hogy félelmetes telekinetikus képessége micsoda hatalom. Végül elérkezik az érettségi bál estéje, ami felejthetetlen lesz mindenki számára, és örökre megváltoztatja a város életét.\n\nA Carrie Stephen King sorrendben negyedik regénye, mégis elsőként jelent meg, és zajos sikert aratott: egy év alatt több mint egymillió példányt adtak el belőle. Írója akkoriban még középiskolai tanárként dolgozott, alig jött ki a fizetéséből, és ehhez a történethez nem fűzött komolyabb reményeket - kezdetben novellának szánta, de nem volt vele elégedett. Végül ki is dobta, az anekdota szerint felesége bányászta elő a szemetesből, és ő győzte meg a pályakezdő írót, hogy érdemes kidolgoznia az ötletet. Egy visszaemlékezésben afféle fordított Hamupipőke-történetnek nevezte a Carrie-t, amelyet a Rosemary gyermeke és az Ördögűző című filmekkel állítanak párhuzamba.', 4500.00, 6, 'https://s01.static.libri.hu/cover/11/5/7307518_4.jpg', NULL, 1),
(52, 'A kívülálló', '9789635043460', 'Stephen King', 'Európa Könyvkiadó Kft.', 2023, 503, 'Magyar', 'hardcover', 'A Mr. Mercedes - Aki kapja, marja - Agykontroll trilógia után Stephen King - vagy ahogy rajongói világszerte emlegetik: a Mester - ismét egy hátborzongató thrillerrel hozza rá olvasóira az álmatlanságot.\nAz oklahomai kisváros, Flint City egyik parkjában brutálisan megerőszakolt, meggyilkolt és megcsonkított holttestre bukkannak. Az áldozat Frank Peterson, egy fehér fiúgyermek, életkora 11 év. A felfoghatatlan tett elkövetője pedig szemtanúk állítása és több, cáfolhatatlan bizonyíték szerint Terry Maitland gimnáziumi irodalomtanár és baseballedző, azaz T. edző, egy mindenki által ismert, köztiszteletben álló ember, két kislány édesapja.\nRalph Anderson nyomozó letartóztatja az edzőt, méghozzá a lehető legmegalázóbb módon: a Maitland csapata számára kulcsfontosságú meccs közben, a szurkolósereg szeme láttára. Anderson indulata érthető: az ő kamasz fia is T. edző keze alatt tanulta a sportot.\nAz igazságszolgáltatás folyamatában azonban fennakadást okoz, hogy Maitlandnek kikezdhetetlen alibije van: szemtanúk, ujjlenyomatok, sőt DNS-minta igazolják, hogy a gyilkosság idején egy másik, távoli városban tartózkodott. Anderson nyomozónak segítőtársaival együtt választ kell találniuk a kérdésre: hogyan lehet ugyanaz az ember egyszerre két helyen?\nA rejtély megoldása Kinghez méltóan egyszerre hihetetlen és kétségbevonhatatlan, bármennyire sokkolja is azokat, akik egy texasi barlang mélyén végül szembekerülnek vele.\n\nA kívülálló amellett, hogy a New York Times bestsellerlistájának élére került, a Goodreads-en 2018-ban kategóriájának legjobb könyve lett, és az HBO minisorozatot készített belőle.', 5840.00, 15, 'https://s01.static.libri.hu/cover/56/9/6709337_4.jpg', NULL, 1),
(53, 'Egri csillagok', '9789639492615', 'Gárdonyi Géza', 'Könyvmolyképző Kiadó Kft.', 2006, 630, 'Magyar', 'paperback', 'A Gonoszt legyőzik, elveszik varázsgyűrűjét, ő pedig minden erővel vissza akarja szerezni. Ez nem Tolkien meseregényének, hanem az Egri csillagoknak a története. Ez a gyűrű egy félszemű janicsár talizmánja volt, aki a szerencséjét vesztette el vele, és az életét adta érte. A jók pedig győznek: övék a szerencse, Gergely és Éva visszakapják gyermeküket, a magyarok megvédik Eger várát. A magyarság történelmének legkegyetlenebb korszakát idézi fel ez a regény. Több mint hat évszázadon át állt sértetlenül az erős magyar állam. A tatárjárás véres másfél évét kivéve minden ellenséget rögtön kiűztek az országból. Mohács után kellett megtanulnunk, hogyan maradjunk életben egy leigázott, szétszakított, állandó háborúkkal pusztított hazában. Eger várának ostroma ezeknek a gyászos éveknek első diadala volt. A Gonoszt meg lehet állítani, le lehet győzni. Ennek örömét élhei át az olvasó is.', 2420.00, 18, 'https://s01.static.libri.hu/cover/1d/b/615308_4.jpg', NULL, 1),
(54, 'A Pál utcai fiúk', '9789635993079', 'Molnár Ferenc', 'Kolibri Kiadó', 2023, 230, 'Magyar', 'paperback', '\"A grund... A pesti gyereknek ez az alföldje, a rónája, a síksága. Ez jelenti számára a végtelenséget és a szabadságot. Egy darabka föld, melyet egyik oldalról düledező palánk határol, s melynek többi oldalain nagy házfalak merednek az ég felé. Most már a Pál utcai grundon is nagy, négyemeletes ház szomorkodik, tele lakóval, akik közül talán egy se tudja, hogy ez a darabka föld néhány szegény pesti kisdiáknak a fiatalságát jelentette.\"\n\nMolnár Ferenc örökérvényű értékeket felvonultató világhírű klasszikusának vadonatúj kiadásában a ma már ritkán vagy épp soha nem használt szavak megértését Pál utcai kislexikon segíti.', 1500.00, 30, 'https://s01.static.libri.hu/cover/ba/e/9339701_4.jpg', NULL, 1),
(55, 'Légy jó mindhalálig', '9789632277325', 'Móricz Zsigmond', 'Helikon Kiadó', 2016, 386, 'Magyar', 'hardcover', '-Nyilas!\nMisi felugrott, és halálsápadt lett.\n-Fordítsd le latinra ezt a mondatot: Az is... tolvaj... aki.. az emberke... bizalmát... meglopja... Na, hogy fordítod? Hamar, hamar - s ceruzájávak a taktust ütötte. - Hogy van az, hogy tolvaj?', 1050.00, 15, 'https://s01.static.libri.hu/cover/fc/5/3275206_4.jpg', NULL, 1),
(56, 'Abigél', '9789634158493', 'Szabó Magda', 'Móra Ferenc Ifjúsági Könyvkiadó Zrt', 2024, 349, 'Magyar', 'hardcover', 'Gina, a regény hősnője 1943-ban elbúcsúzik otthonától és azoktól, akiket szeret, mert apja beadja a híres árkodi intézetbe. A kis ötödikes gimnazistát a rideg világ, a szokatlan, kegyetlen törvények lázadásra késztetik. Ám megtud valamit, ami maradásra bírja, és önként vállalja a rabságot.\nHogyan igazodik el egy tizenöt éves kislány ebben a felnőtt-titkoktól terhes világban? Vajon hihet-e a naiv diáklegendában, amelyet a kertben álló korsós leányt formázó szobor alakja köré sző a lányok képzelete? Írjon talán ő is levelet Abigélnek, aki mindig segít a bajbajutottakon?\n\n\n\nAz Abigél Szabó Magda ifjúsági műveinek sorában viszonylag későn, 1970-ben keletkezett, ám talán a legsikeresebb. Ennek okát egyrészt a hitelességben kereshetjük, amelyet a nagyszerű történetmesélés, feszültségteremtés és jellemábrázolás mellett személyes önéletrajzi elemek (Debrecen, az intézet) erősítenek. A regényből 1978-ban több részes filmváltozat készült, amelynek forgatókönyvét ugyancsak Szabó Magda írta. A könyv és a film együttesen Szabó Magda egyik legnépszerűbb művévé tette az Abigélt.', 3710.00, 14, 'https://s01.static.libri.hu/cover/fb/7/3260410_4.jpg', NULL, 1),
(57, 'Az ajtó', '9786155609053', 'Szabó Magda', 'Jaffa Kiadó és Kereskedelmi Kft', 2016, 281, 'Magyar', 'hardcover', 'Álmában nem, de életében egyszer kinyílik az ajtó az írónő előtt. Szeredás Emerenc ajtaja, amely mások számára örökre zárva marad. A megingathatatlan jellemű, erkölcséhez és hiedelmeihez tántoríthatatlanul ragaszkodó asszony házvezetőnőnek áll az írónőhöz, ám első perctől nyilvánvaló, hogy ő diktál. Gazdája megmérettetik, és nem találtatván könnyűnek, Emerenc nem csupán otthona, hanem lelke ajtaját is megnyitja előtte, ha csak résnyire is. Így sejlik fel Magyarország huszadik századi történelmének kulisszái előtt egy magára maradt nő tragikus, fordulatos sorsa. Vajon mit őrizget az idős asszony a hét lakatra zárt ajtó mögött?\nAz ajtó a ki- és bezártság, a születés és a halál ősi jelképe. Állandó kettősség jellemzi a két főhős áhítatosan odaadó, máskor szinte gyűlölködő kapcsolatát is. A szeretet kapujában állnak. Sikerülhet-e végül beljebb vagy elengedni egymást?\nAz ajtó Szabó Magda talán legismertebb regénye: Szabó István forgatott belőle filmet, és 2015-ben felkerült a The New York Times sikerlistájára.', 5400.00, 13, 'https://s01.static.libri.hu/cover/de/5/3020352_4.jpg', NULL, 1),
(58, 'Az Éhezők Viadala', '9789635980840', 'Suzanne Collins', 'Agave Könyvek Kiadó Kft.', 2026, 303, 'Magyar', 'paperback', 'Életben tudsz maradni egy olyan vadonban, ahol mindenki az életedre tör? Észak-Amerika romjain ma Panem országa, a ragyogó Kapitólium és a tizenkét távoli körzet fekszik. A Kapitólium kegyetlenül bánik Panem lakóival: minden évben, minden körzetből kisorsolnak egy-egy tizenkét és tizennyolc év közötti fiút és lányt, akiknek részt kell venniük Az Éhezők Viadalán. Az életre-halálra zajló küzdelmet élőben közvetíti a tévé. A tizenhat éves Katniss Everdeen egyedül él a húgával és az anyjával a Tizenkettedik Körzetben. Amikor a húgát kisorsolják, Katniss önként jelentkezik helyette a Viadalra, ez pedig felér egy halálos ítélettel. De Katniss már nem először néz farkasszemet a halállal - számára a túlélés a mindennapok része. Ha győzni akar, olyan döntéseket kell hoznia, ahol az életösztön szembe kerül az emberséggel, az élet pedig a szerelemmel.\n\nSuzanne Collins trilógiája az utóbbi évek legnagyobb nemzetközi könyvsikere, amely hónapokon át vezette az eladási listákat a világ számos országában. 2012 márciusában pedig a mozikba kerül Az Éhezők Viadala filmváltozata, Jennifer Lawrence-szel a főszerepben.', 3600.00, 13, 'https://s01.static.libri.hu/cover/b1/d/835975_4.jpg', NULL, 1),
(59, 'Futótűz', '9786155049729', 'Suzanne Collins', 'Agave Könyvek Kiadó Kft.', 2026, 308, 'Magyar', 'paperback', 'Katniss és Peeta megnyerték az Éhezők Viadalát, így ők és a családjaik megmenekültek az éhezéstől, de a fiatalok nem ülhetnek nyugodtan a babérjaikon. Vár rájuk a hosszú Győzelmi Körút, ismét csak a tévénézők árgus szeme előtt. A kötelező udvariaskodás unalmát azonban döbbenet és félelem váltja fel, amikor hírét veszik, hogy lázadás készül a Kapitólium ellen. Snow elnök sosem habozott lesújtani az engedetlenekre, és most is ott csap le, ahol senki sem várja. Emberek halnak meg, családok lesznek földönfutók, Katniss és Peeta pedig újabb küzdelemre kényszerülnek, ahol a tétek még nagyobbak, mint korábban. Suzanne Collins Az éhezők viadala című trilógiája az utóbbi évek legnagyobb szenzációja az ifjúsági regények műfajában. Az immáron világszerte több mint tízmillió példányban értékesített sorozatról azt mondják, hogy méltó folytatása a Harry Potter- és Twilight-könyveknek, tovább népszerűsítve, illetve megszerettetve az olvasást a fiatalokkal. Az éhezők viadalának nemrég elkészült a filmváltozata, amit március 22-étől, a hivatalos nemzetközi premierrel egyidőben fognak vetíteni Magyarországon is. A szereposztás meglehetősen impozáns: a főszereplő Katnisst az a Jennifer Lawrence fogja alakítani, akit a Winter\'s Bone A hallgatás törvénye c. filmben nyújtott alakításáért Oscar-díjra és Golden Globe-díjra jelöltek, de játszott az X-Men: Az elsők című filmben is. Mellette a legnagyobb szerepekben Woody Harrelsont, a rocksztár Lenny Kravitzet, Stanley Tuccit, Elizabeth Bankset, Donald Sutherlandet és Toby Jonest láthatjuk majd.', 4900.00, 12, 'https://s01.static.libri.hu/cover/c0/e/835993_4.jpg', NULL, 1),
(60, 'A kiválasztott', '9789635980857', 'Suzanne Collins', 'Agave Könyvek Kiadó Kft.', 2025, 335, 'Magyar', 'paperback', 'Bár minden ellene szólt, Katniss Everdeennek kétszer is sikerült élve kikerülnie az Éhezők Viadalából. Túlélt minden megpróbáltatást, de még mindig nincs biztonságban. Mert a Kapitólium bűnbakot keres a lázadás miatt. Snow elnök pedig egyértelművé tette: Kapitólium haragja elől senki sem menekülhet. Sem Katniss családja, sem a barátai, sem pedig a 12. Körzet lakói. De közeledik a végső forradalom ideje. Amikor a nép végre szembeszáll a Kapitólium zsarnokságával. És ebben a forradalomban Katnissnak döntő szerepe lesz. Az ő bátorságától, kitartásától és eltökéltségétől függ Panem jövője. Mert ő a kiválasztott. De maradt-e elég ereje hozzá, hogy megvívja az utolsó, mindent eldöntő harcot? Suzanne Collins Az éhezők viadala című trilógiája az utóbbi évek legnagyobb szenzációja az ifjúsági regények műfajában. Az immáron világszerte több mint tízmillió példányban értékesített sorozatról azt mondják, hogy méltó folytatása a Harry Potter- és Twilight-könyveknek, tovább népszerűsítve, illetve megszerettetve az olvasást a fiatalokkal. Az éhezők viadalának nemrég elkészült a filmváltozata, amit március 22-étől, a hivatalos nemzetközi premierrel egyidőben fognak vetíteni Magyarországon is. A szereposztás meglehetősen impozáns: a főszereplő Katnisst az a Jennifer Lawrence fogja alakítani, akit a Winter\'s Bone A hallgatás törvénye c. filmben nyújtott alakításáért Oscar-díjra és Golden Globe-díjra jelöltek, de játszott az X-Men: Az elsők című filmben is. Mellette a legnagyobb szerepekben Woody Harrelsont, a rocksztár Lenny Kravitzet, Stanley Tuccit, Elizabeth Bankset, Donald Sutherlandet és Toby Jonest láthatjuk majd.', 4800.00, 7, 'https://s01.static.libri.hu/cover/83/5/835994_4.jpg', NULL, 1),
(61, 'Az Útvesztő', '2399974505870', 'James Dashner', 'Cartaphilus Kiadó', 2012, 362, 'Magyar', 'paperback', 'Thomas egy hideg, sötét liftben tér magához, s az egyetlen dolog, amire emlékszik, az a keresztneve. Minden más eltűnt az emlékezetéből. Amikor a lift ajtaja kinyílik, Thomas a Tisztáson találja magát egy csapat srác között. A Tisztáson élő fiúk mindennap Futárokat küldenek a lakóhelyüket körbeölelő Útvesztőbe, amelyet nehéz kiismerni, mivel a falai minden éjjel elmozdulnak. Thomas, az utolsóként érkező újonc számára egyre inkább nyilvánvalóvá válik. hogy az Útvesztő egy kód, ami megfejtésre vár. Úgy dönt tehát, hogy ő is Futár lesz. Annak viszont, hogy a megfejtés közelébe kerüljön, komoly ára van: például olyan lényekkel is találkoznia kell, akik elől mindenki más menekül. Egyszer csak minden megváltozik... ...megérkezik a Tisztásra az egyetlen lány, Teresa, aki nemcsak Thomasra lesz nagy hatással, hanem az egész csapat sorsára is. James Dashner trilógiájának első kötete egyszerre borzongató, izgalmas és elgondolkodtató. Az Útvesztőben megidézett világra akkor is kíváncsiak vagyunk, ha nem valljuk be. A tudatalatti és az emlékezet különböző szintjei mindannyiunk életét befolyásolják, és Dashner erre az ismerős érzésre építi Az Útvesztőt, és csalogat bennünket egy saját szabályai szerint működő másik világba, a Tisztásra, ahol a fantázia és a valóság egyszerre van jelen. \"Carta Young címmel új sorozatot indítunk az ifjú és örökifjú olvasók számára. A kötetekre könnyű lesz rátalálni, hiszen a borítón már messziről látni lehet a NYISD KI! jelzést, és aki megfogadja a tanácsot, s azonnal olvasni kezd, le sem tudja majd tenni a könyvet.\" (a Kiadó)', 11740.00, 15, 'https://s06.static.libri.hu/cover/sl/54/1/5416e61be618c8e5dacb46f988d2d336_big.jpg', NULL, 1),
(62, 'Tűzpróba', '2310006215048', 'James Dashner', 'Cartaphilus Kiadó', 2023, 413, 'Magyar', 'paperback', 'James Dashner, a világszerte óriási sikert aratott Útvesztő-sorozat szerzője az egyik legnépszerűbb amerikai ifjúsági író. A trilógiának szánt sorozat köteteinek száma utóbb négyre nőtt, ahogy a Sziklás-hegységben élő szerző gyermekeinek száma is. Az Útvesztő és folytatása, a Tűzpróba írója amúgy nem nagy barátja a számoknak, pedig eredetileg könyvelőként dolgozott. Most viszont rendkívül hálás azért, hogy történetek írásából élhet, és úgy tartja, nála nagyobb mázlista kevés van a világon. Thomas és társai azt gondolták, ha valaki élve kijutnak az Útvesztőből, akkor visszanyerik szabadságukat, folytathatják korábbi életüket. Ám a titokzatos VESZETT még nem végzett velük. Újabb próba, újabb rémálom vár rájuk. A Föld felperzselt vidék, melyen zombiszerű gyilkos lények kószálnak. A kormányok eltűntek, a világ anarchiába süllyedt. A remélt szabadság helyett a csapat még kegyetlenebb megpróbáltatásnak néz elébe: vár rájuk a Tűzpróba. Ebben a világban már nincsenek egyedül - és a többiek csak akkor maradhatnak életben, ha ővelük végeznek. Vérfagyasztó kalandokkal teli útjuk során nyoma vész a csapat egyetlen lány tagjának, Teresának, és a fiúk elhatározzák, hogy felkutatják, még ha ez az életükbe kerül is. Fogalmuk sincs róla, micsoda elképesztő veszélyek várnak rájuk. Nincsenek szabályok. Nincs segítség. A tét az életük. Thomasban pedig lassan felébred a gyanú: vajon nem az ő elméjében rejlik a szabadulásuk kulcsa?', 11000.00, 6, 'https://s06.static.libri.hu/cover/sl/02/c/02c83b2a2cee9c235e6acc7b2ad60d2a_big.jpg', NULL, 1),
(63, 'Halálkúra', '2310006254580', 'James Dashner', 'Cartaphilus Kiadó', 2015, 400, 'Magyar', 'paperback', 'KISZABADULTAK AZ ÚTVESZTŐBŐL. ÁTJUTOTTAK PERZSELTFÖLDÖN. KOCKÁRA TETTÉK EGYMÁSÉRT AZ ÉLETÜKET. ÁM A VÉGSŐ IGAZSÁGGAL SZEMBEN TEHETETLENEK. A Tűzpróba után úgy tűnik, az őrült hajszának vége. De Thomas biztos benne, hogy nem bízhat a VESZETT-ben. Hiába állítják, hogy nincs több megtévesztés, hogy a Próbák nyomán már minden szükséges információt megszereztek, és most Thomas és társai visszakaphatják az emlékeiket, hogy végrehajthassák az igazi küldetésüket. A csapat tagjaitól várják ugyanis, hogy létrehozzák az emberiséget fenyegető halálos vírus ellenszerét. Csakhogy Thomas sokkal több mindenre emlékszik, mint a VESZETT vezetői hinnék. Hazugságokkal többé nem mennek semmire. Ám a dermesztő igazság jóval veszélyesebb, mint azt Thomas valaha gondolta volna. A csapat újabb gyilkos kalandra vállalkozik, hogy kifürkéssze a VESZETT legnagyobb titkát. Menekülésük során tomboló Buggyantakkal és profi fejvadászokkal kell megküzdeniük, majd egy titkos szervezet csap le rájuk. Milyen árat kell fizetniük azért, mert a saját kezükbe vették a sorsukat? Túlélheti-e vajon bárki a Halálkúrát?', 10230.00, 19, 'https://s06.static.libri.hu/cover/sl/32/5/325fd939ef68a492047796dda3b244d5_big.jpg', NULL, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cartitems`
--

CREATE TABLE `cartitems` (
  `Id` int(11) NOT NULL,
  `CartId` int(11) NOT NULL,
  `BookId` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `AddedAt` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `carts`
--

CREATE TABLE `carts` (
  `Id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `UpdatedAt` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `carts`
--

INSERT INTO `carts` (`Id`, `UserId`, `CreatedAt`, `UpdatedAt`) VALUES
(2, 10, '2026-04-01 07:58:56.331006', '2026-04-01 07:59:05.053573'),
(3, 3, '2026-04-01 08:00:18.347611', '2026-04-01 08:00:21.924566'),
(4, 4, '2026-04-01 08:02:16.549086', '2026-04-01 08:02:16.578215'),
(5, 5, '2026-04-01 08:03:21.576384', '2026-04-01 08:03:25.487920'),
(6, 6, '2026-04-01 08:04:38.888377', '2026-04-01 08:04:43.810696'),
(7, 7, '2026-04-01 08:06:11.587817', '2026-04-01 08:06:11.611281'),
(8, 8, '2026-04-01 08:07:19.661695', '2026-04-01 08:07:22.743686'),
(9, 9, '2026-04-01 08:08:20.028283', '2026-04-01 08:08:20.572739');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `CategoryName` longtext NOT NULL,
  `ParentCategoryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `categories`
--

INSERT INTO `categories` (`Id`, `CategoryName`, `ParentCategoryId`) VALUES
(1, 'Fantasy', NULL),
(2, 'Klasszikus', NULL),
(3, 'Romantikus', NULL),
(4, 'Horror', NULL),
(5, 'Sci-fi', NULL),
(6, 'Magyar', NULL),
(7, 'Ifjúsági', NULL),
(8, 'Krimi', NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `discounts`
--

CREATE TABLE `discounts` (
  `Id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `DiscountType` longtext NOT NULL,
  `Value` decimal(10,2) NOT NULL,
  `StartDate` datetime(6) NOT NULL,
  `EndDate` datetime(6) NOT NULL,
  `IsActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orderitems`
--

CREATE TABLE `orderitems` (
  `Id` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `BookId` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `UnitPrice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `orderitems`
--

INSERT INTO `orderitems` (`Id`, `OrderId`, `BookId`, `Quantity`, `UnitPrice`) VALUES
(2, 2, 32, 1, 4000.00),
(3, 2, 31, 1, 3900.00),
(4, 3, 1, 1, 5200.00),
(5, 3, 2, 1, 5340.00),
(6, 3, 4, 1, 5670.00),
(7, 3, 5, 1, 6150.00),
(8, 3, 6, 1, 7200.00),
(9, 3, 7, 1, 6820.00),
(10, 3, 8, 1, 6620.00),
(11, 4, 52, 1, 5840.00),
(12, 5, 29, 1, 5800.00),
(13, 5, 54, 1, 1500.00),
(14, 6, 41, 1, 4900.00),
(15, 6, 30, 1, 3340.00),
(16, 6, 56, 1, 3710.00),
(17, 7, 35, 1, 3600.00),
(18, 8, 24, 1, 6800.00),
(19, 8, 23, 1, 5750.00),
(20, 8, 22, 1, 6800.00),
(21, 9, 40, 1, 5810.00),
(22, 9, 13, 1, 5100.00);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orders`
--

CREATE TABLE `orders` (
  `Id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `OrderDate` datetime(6) NOT NULL,
  `TotalAmount` decimal(10,2) NOT NULL,
  `Status` longtext NOT NULL,
  `PaymentMethod` longtext DEFAULT NULL,
  `ShippingMethod` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `orders`
--

INSERT INTO `orders` (`Id`, `UserId`, `OrderDate`, `TotalAmount`, `Status`, `PaymentMethod`, `ShippingMethod`) VALUES
(2, 10, '2026-04-01 07:59:38.238320', 7900.00, 'pending', 'Bankkártya', 'Csomagpont'),
(3, 3, '2026-04-01 08:00:57.815597', 43000.00, 'pending', 'Utánvét', 'Házhozszállítás'),
(4, 4, '2026-04-01 08:02:44.543996', 5840.00, 'pending', 'Banki átutalás', 'Személyes átvétel'),
(5, 5, '2026-04-01 08:03:52.728402', 7300.00, 'pending', 'Bankkártya', 'Házhozszállítás'),
(6, 6, '2026-04-01 08:05:34.114381', 11950.00, 'pending', 'Utánvét', 'Házhozszállítás'),
(7, 7, '2026-04-01 08:06:31.496331', 3600.00, 'pending', 'Banki átutalás', 'Csomagpont'),
(8, 8, '2026-04-01 08:07:44.769161', 19350.00, 'pending', 'Utánvét', 'Házhozszállítás'),
(9, 9, '2026-04-01 08:08:46.390025', 10910.00, 'pending', 'Bankkártya', 'Csomagpont');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orderstatushistories`
--

CREATE TABLE `orderstatushistories` (
  `Id` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `Status` longtext NOT NULL,
  `ChangedAt` datetime(6) NOT NULL,
  `ChangedBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `orderstatushistories`
--

INSERT INTO `orderstatushistories` (`Id`, `OrderId`, `Status`, `ChangedAt`, `ChangedBy`) VALUES
(2, 2, 'pending', '2026-04-01 07:59:38.278683', 10),
(3, 3, 'pending', '2026-04-01 08:00:57.831306', 3),
(4, 4, 'pending', '2026-04-01 08:02:44.555439', 4),
(5, 5, 'pending', '2026-04-01 08:03:52.740342', 5),
(6, 6, 'pending', '2026-04-01 08:05:34.133444', 6),
(7, 7, 'pending', '2026-04-01 08:06:31.509170', 7),
(8, 8, 'pending', '2026-04-01 08:07:44.780552', 8),
(9, 9, 'pending', '2026-04-01 08:08:46.400183', 9);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reviews`
--

CREATE TABLE `reviews` (
  `Id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `BookId` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `ReviewText` longtext DEFAULT NULL,
  `ReviewDate` datetime(6) NOT NULL,
  `IsModerated` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `reviews`
--

INSERT INTO `reviews` (`Id`, `UserId`, `BookId`, `Rating`, `ReviewText`, `ReviewDate`, `IsModerated`) VALUES
(1, 3, 43, 3, 'Elég nyomasztó, de közben nagyon erős és elgondolkodtató sztori.\nA világa brutálisan hatásos, viszont néhol kicsit lassú és nehéz volt haladni vele.\nNem lett kedvenc, de egyszer mindenképp érdemes elolvasni.', '2026-03-31 07:57:11.850541', 0),
(2, 3, 33, 4, 'Izgalmas, pörgős sztori, alig lehet letenni, végig fenntartja a feszültséget.\nViszont néha kicsit sablonosnak és túl hollywoodinak éreztem.\nSzórakoztatónak tökéletes, de nem egy mély olvasmány.', '2026-03-31 07:59:41.854647', 0),
(3, 3, 24, 2, 'Érdekes és mély folytatás, tele politikával és filozófiával.\nViszont sokszor nehéz követni, és kevésbé pörgős, mint az előző részek.\nNem könnyű olvasmány, de a Dűne-rajongóknak megéri.', '2026-03-31 08:00:17.867554', 0),
(4, 3, 23, 3, 'Rövidebb és sötétebb, mint az első rész, inkább a következményekre fókuszál.\nÉrdekes, de kevésbé izgalmas, néha kicsit száraznak éreztem.\nNem rossz, de nem is annyira magával ragadó, mint a Dűne.', '2026-03-31 08:00:58.543644', 0),
(5, 3, 9, 5, 'Könnyedebb, mesésebb kaland, nagyon hangulatos és szerethető.\nNéhol kicsit gyerekesnek hat, de pont ettől bájos.\nSzórakoztató olvasmány, főleg fantasy rajongóknak.', '2026-03-31 08:02:13.074226', 0),
(6, 3, 32, 5, 'Izgalmas és feszült lezárás, szépen összeérnek a szálak.\nNéhol kicsit túl részletes és hosszú, de végig fenntartja az érdeklődést.\nErős befejezés, a trilógia rajongóinak kötelező.', '2026-03-31 08:02:55.905956', 0),
(7, 3, 60, 3, 'Pörgős és érzelmes befejezés, sok feszültséggel.\nNéhol sötétebb és kevésbé látványos, mint az előző részek.\nJó lezárás, de nem mindenkinek fog ugyanúgy bejönni.', '2026-03-31 08:03:41.615237', 0),
(8, 3, 52, 5, 'Nagyon beszippant, végig feszült és ijesztő, alig lehet letenni.\nA nyomozás és a természetfeletti keverése különösen jól működik.\nAz egyik legjobb King-könyv, végig izgalmas és emlékezetes.', '2026-03-31 08:04:19.273879', 0),
(9, 3, 31, 1, 'Sokkal vontatottabb, mint az első rész, nehéz követni a bonyolult szálakat.\nA karakterek fejlődése helyenként erőltetettnek tűnik.\nÖsszességében csalódás, nem annyira élvezetes olvasmány.', '2026-03-31 08:05:03.120170', 0),
(10, 4, 29, 5, 'Fantasztikusan szórakoztató és izgalmas, tele humorral és logikával.\nNéha a részletes tudományos magyarázatok kicsit lassítják a tempót.\nMég így is egy igazán élvezetes és lebilincselő sci-fi olvasmány.', '2026-03-31 08:11:03.676928', 0),
(11, 4, 41, 4, 'Gyönyörűen megírt, szinte költői stílus, az 1920-as évek hangulata lebilincselő.\nA történet néha lassan halad, és a karakterek távolságtartóak.\nKortalan klasszikus, érdemes elolvasni.', '2026-03-31 08:11:50.679907', 0),
(12, 4, 54, 5, 'Szívbemarkoló és izgalmas történet a barátságról és a bátorságról.\nNéha kicsit régies a nyelvezet, ami lassíthatja az olvasást.\nMég így is örök klasszikus, amit mindenki érdemes elolvasni.', '2026-03-31 08:12:18.115278', 0),
(13, 4, 48, 3, 'Feszült és hátborzongató, King atmoszférateremtése zseniális.\nNéhol lassabban halad, de a pszichológiai rétegek nagyon erősek.\nKlasszikus horror, ami hosszú ideig a fejben marad.', '2026-03-31 08:13:26.496746', 0),
(14, 4, 30, 4, 'Izgalmas és feszült, tele titkokkal és csavarokkal.\nNéha túl sok a részlet, és a tempó ingadozik.\nA trilógia rajongóinak mindenképp érdemes, de nem hibátlan.', '2026-03-31 08:14:11.117591', 0),
(15, 4, 21, 3, 'Hangulatos és misztikus történet, szépen építi a világot és a karaktereket.\nA cselekmény néhol lassú, és helyenként nehéz követni a részleteket.\nFantasy rajongóknak élvezetes, de nem a legerősebb Sapkowski-mű.', '2026-03-31 08:14:46.803380', 0),
(16, 4, 56, 4, 'Szívmelengető és izgalmas, szerethető karakterekkel és jó hangulattal.\nNéha kicsit régies a nyelvezet, ami lassítja az olvasást.\nKortalan ifjúsági klasszikus, könnyen belopja magát az olvasó szívébe.', '2026-03-31 08:15:27.209407', 0),
(17, 5, 25, 3, 'Elképesztően ötletes univerzum és intelligens történetvezetés, Asimov zseni.\nViszont néha nagyon “száraz” a stílusa, a karakterek kevésbé elevenek.\nÖrök sci-fi klasszikus, aki szereti az agyas világépítést, imádni fogja.', '2026-03-31 08:18:34.975521', 0),
(18, 5, 26, 2, 'Izgalmas folytatás, a történet szálai szépen bonyolódnak.\nUgyanakkor kicsit monotonnak éreztem néhány részt, kevés a valódi dráma.\nSci-fi rajongóknak kötelező, de nem annyira magával ragadó, mint az első rész.', '2026-03-31 08:19:11.875173', 0),
(19, 5, 44, 3, 'Rövid, de ütős történet, a politikai szatíra zseniális.\nNéha túl direkt és sötét, ami elgondolkodtató, de lehangoló is.\nMég így is klasszikus, amit mindenképp érdemes olvasni.', '2026-03-31 08:19:52.744832', 0),
(20, 5, 49, 5, 'Hihetetlenül magával ragadó olvasmány, King zseniálisan építi fel a feszültséget és a horror hangulatát.\nA történet minden pillanata izgalmas, a karakterek pedig életszerűek és emlékezetesek.\nMinden horrorrajongónak kötelező olvasmány, hosszú ideig nem lehet elfelejteni.', '2026-03-31 08:21:58.825852', 0),
(21, 5, 34, 5, 'Pörgős és izgalmas történet, tele rejtélyekkel és csavarokkal, nehéz letenni.\nA tudományos és vallási utalások izgalmas háttért adnak a cselekménynek.\nSzórakoztató és lebilincselő olvasmány, igazi thriller élmény.', '2026-03-31 08:22:28.784256', 0),
(22, 5, 47, 5, 'Hihetetlenül félelmetes és feszült, King mesterien teremti meg a rettegés hangulatát.\nA karakterek és a történet minden részlete lebilincselő, alig lehet letenni a könyvet.\nEgy igazi horrorklasszikus, amit minden rajongónak kötelező elolvasni.', '2026-03-31 08:23:14.338782', 0),
(23, 5, 57, 1, 'Sokszor nehézkes és vontatott, a történet lassan halad, és helyenként elveszik a fonal.\nA karakterek néha nehezen megérthetők, ami megnehezíti az azonosulást.\nÖsszességében számomra nem volt élvezetes olvasmány.', '2026-03-31 08:23:51.183448', 0),
(24, 5, 58, 5, 'Izgalmas és pörgős, végig fenntartja a feszültséget, alig lehet letenni.\nA karakterek hitelesek, és könnyű velük azonosulni.\nKönnyen olvasható, igazi page-turner, ami beszippantja az olvasót.', '2026-03-31 08:24:17.829865', 0),
(25, 6, 61, 4, 'Feszült és izgalmas történet, tele rejtélyekkel és csavarokkal.\nA világépítés és a kalandok lekötik az olvasót, alig lehet letenni.\nEgy igazi fiataloknak szóló sci-fi/thriller, ami végig fenntartja az érdeklődést.', '2026-03-31 08:27:34.024577', 0),
(26, 6, 38, 2, 'Néha kicsit vontatott és lassú, a sok részletes társadalmi leírás megnehezíti az olvasást.\nA karakterek szerethetőek, de nem mindenkinek lesz könnyű velük azonosulni.\nÖsszességében klasszikus, de nem minden pillanata élvezetes.', '2026-03-31 08:28:20.482233', 0),
(27, 6, 51, 5, 'Hihetetlenül feszült és ijesztő, King zseniálisan építi fel a rettegést.\nCarrie karaktere nagyon életszerű és tragikus, végig együtt lehet érezni vele.\nEgy igazi horrorklasszikus, ami hosszú ideig a fejben marad.', '2026-03-31 08:28:57.012939', 0),
(28, 6, 22, 5, 'Lenyűgöző világépítés és mély politikai, vallási témák, ami teljesen magába szippant.\nA cselekmény néha lassú és bonyolult, de a részletek miatt megéri kitartani.\nEgy igazi sci-fi klasszikus, ami hosszú időre emlékezetes marad.', '2026-03-31 08:29:33.922231', 0),
(29, 6, 53, 3, 'Izgalmas és hősies történet, tele bátor karakterekkel és történelmi részletekkel.\nNéha hosszú leírásokkal lassítja a cselekményt, ami kicsit nehezíti az olvasást.\nÖsszességében klasszikus magyar regény, amit érdemes elolvasni.', '2026-03-31 08:30:11.232678', 0),
(30, 6, 46, 1, 'Sajnos számomra nagyon vontatott és nehezen követhető volt, a rövid történetek sokszor félbehagyottnak tűntek.\nA mondanivaló érdekes lehet, de a stílus és a tempó gyakran untatott.\nÖsszességében csalódás, nem tudott lekötni az olvasás során.', '2026-03-31 08:31:38.312534', 0),
(31, 7, 20, 3, 'A történet hangulatos és misztikus, Sapkowski stílusa élvezetesen sötét.\nUgyanakkor néha nehéz követni a cselekmény fonalát, és lassan halad.\nFantasy rajongóknak érdekes olvasmány, de nem a legerősebb műve.', '2026-03-31 08:35:17.102388', 0),
(32, 7, 59, 5, 'Pörgős és izgalmas, a cselekmény alig engedi letenni a könyvet.\nA karakterek hitelesek, a feszültség végig fenntartja az érdeklődést.\nTökéletes page-turner, aki szereti a fiatalos akciót, imádni fogja.', '2026-03-31 08:35:54.822623', 0),
(33, 7, 37, 1, 'Sokszor vontatott és unalmas, a szereplők laposak, és nehéz velük azonosulni.\nA nyomozás is lassan halad, a fordulatok pedig kevésbé meglepőek.\nÖsszességében csalódás, számomra nem működött a történet.', '2026-03-31 08:36:52.132189', 0),
(34, 7, 63, 1, 'Sokszor túl kaotikus és zavaros a cselekmény, nehéz követni a történéseket.\nA karakterek fejlődése erőltetettnek tűnik, és kevésbé hiteles.\nÖsszességében csalódás, a sorozat befejezése nem volt élvezetes.', '2026-03-31 08:37:55.418282', 0),
(35, 7, 1, 5, 'Varázslatos és lebilincselő történet, tele izgalmas kalandokkal és szerethető karakterekkel.\nA világépítés zseniális, könnyen el lehet veszni a Roxfort részleteiben.\nKezdő olvasóknak és fantasy rajongóknak egyaránt kihagyhatatlan élmény.', '2026-03-31 08:39:17.485177', 0),
(36, 7, 7, 4, 'Sötétebb és érzelmesebb rész, a történet mélyebb és komolyabb hangvételű.\nA karakterek fejlődése izgalmas, és végig fenntartja a feszültséget.\nNagyon magával ragadó, a rajongók számára kihagyhatatlan olvasmány.', '2026-03-31 08:41:21.098431', 0),
(37, 7, 6, 2, 'Sokszor vontatott és hosszú, a részletek néha lassítják a cselekményt.\nA konfliktusok és a karakterek fejlődése érdekes, de nem mindig izgalmas.\nÖsszességében a sorozat része, de számomra kicsit nehézkes olvasmány volt.', '2026-03-31 08:42:50.233518', 0),
(38, 7, 8, 4, 'Izgalmas és feszült befejezés, végre minden szál összeér, és a kalandok lekötik az olvasót.\nA karakterek fejlődése és a drámai pillanatok igazán érzelmesek.\nNagyszerű lezárás a sorozatnak, ami hosszú ideig emlékezetes marad.', '2026-03-31 08:43:44.098017', 0),
(39, 8, 2, 5, 'Szórakoztató és izgalmas kaland, tele rejtélyekkel és varázslattal.\nA karakterek fejlődése élvezetes, és a humor is jól működik.\nKönnyen olvasható, a sorozat egyik legjobb korai része.', '2026-03-31 08:48:06.525974', 0),
(40, 8, 5, 5, 'Izgalmas és feszült, tele veszéllyel és váratlan fordulatokkal.\nA karakterek fejlődése jól látható, és a történet egyre érettebbé válik.\nEgy erős, pörgős rész a sorozatban, ami leköti az olvasót.', '2026-03-31 08:48:33.413669', 0),
(41, 8, 4, 4, 'Egészen lebilincselő olvasmány, tele titkokkal és váratlan fordulatokkal, a hangulat sötétebb, mint az előző részekben.\nNéha kicsit lassú, de a karakterek árnyalása és a humor miatt mégis leköti az olvasót.\nÖsszességében izgalmas és tartalmas rész a sorozatban.', '2026-03-31 08:49:15.607378', 0),
(42, 8, 35, 1, 'A cselekmény néhol túlságosan túlmagyarázott és vontatott, nehéz volt fenntartani az érdeklődést.\nA karakterek motivációi néha erőltetettnek tűnnek, és nem mindig hihetőek.\nÖsszességében csalódás, a várakozásokhoz képest nem nyújtott igazán izgalmas olvasmányt.', '2026-03-31 08:50:15.039958', 0),
(43, 8, 39, 3, 'Lenyűgöző karakterek és érzelmi mélység, Brontë stílusa gyönyörű és magával ragadó.\nNéha kicsit lassú a cselekmény, és a régi nyelvezet nehezítheti a haladást.\nKortalan klasszikus, aki szereti a romantikát és a drámát, imádni fogja.', '2026-03-31 08:50:52.635655', 0),
(44, 8, 12, 4, 'zgalmas és epikus, tele váratlan fordulatokkal és komplex karakterekkel.\nA politikai intrikák és csaták részletesen kidolgozottak, ami nagyon magával ragadó.\nFantasy rajongóknak kihagyhatatlan, bár néha a sok részlet lassíthatja az olvasást.', '2026-03-31 08:51:48.546630', 0),
(45, 9, 11, 3, 'Sötét és izgalmas, a karakterek árnyaltak, és a történet tele van fordulatokkal.\nNéha túl hosszú és bonyolult a cselekmény, ami lassíthatja az olvasást.\nA sorozat egyik legerősebb része, aki szereti a politikai intrikát és a drámát, élvezni fogja.', '2026-03-31 08:56:32.655940', 0),
(46, 9, 50, 5, 'Feszült és nyomasztó hangulat, a rejtély végig fenntartja az érdeklődést.\nA történet jól felépített, a feszültség fokozatosan épül fel.\nIdeális krimi rajongóknak, aki szereti a sötét, északi hangulatot.', '2026-03-31 08:57:20.537868', 0),
(47, 9, 55, 2, 'A történet néha vontatott és lassan halad, a cselekmény kevésbé izgalmas.\nA karakterek fejlődése egyes részeknél erőltetettnek tűnik, nehéz velük azonosulni.\nÖsszességében számomra nem volt élvezetes olvasmány.', '2026-03-31 08:58:27.905280', 0),
(48, 9, 27, 3, 'Izgalmas folytatás, a történet szálai bonyolódnak, és az elméleti háttér érdekes.\nUgyanakkor néha nagyon száraz és intellektuális, a karakterek kevésbé elevenek.\nSci-fi rajongóknak érdekes, de nem mindenki számára könnyű olvasmány.', '2026-03-31 08:59:09.366881', 0),
(49, 9, 42, 4, 'Érzelmes és könnyen olvasható, a karakterek szerethetőek és hitelesek.\nA történet romantikus vonala jól működik, és végig leköti az olvasót.\nIdeális könnyed, mégis érzelmes olvasmány, aki szereti a drámát és a szerelmi történeteket.', '2026-03-31 08:59:51.219418', 0),
(50, 9, 28, 5, 'Hihetetlenül innovatív és futurisztikus, Gibson stílusa lebilincselő és inspiráló.\nA cyberpunk világ részletei zseniálisak, tele izgalmas technológiákkal és hangulattal.\nMinden sci-fi rajongónak kötelező olvasmány, aki szereti a komplex, sötét jövőképeket.', '2026-03-31 09:00:36.547156', 0),
(51, 9, 14, 1, 'Sokszor túl hosszú és vontatott, a rengeteg szereplő miatt nehéz követni a cselekményt.\nA politikai intrikák és részletek néha túlzásba vannak víve, ami lassítja az olvasást.\nÖsszességében csalódás, számomra nem volt élvezetes olvasmány.', '2026-03-31 09:01:00.763904', 0),
(52, 9, 45, 5, 'Lenyűgöző és gondolatébresztő, Huxley világa sötét és figyelemfelkeltő.\nA társadalmi kritikák élesek, a történet mélyen elgondolkodtat.\nKortalan klasszikus, aki szereti a disztópikus irodalmat, imádni fogja.', '2026-03-31 09:02:25.229820', 0),
(53, 9, 18, 5, 'Izgalmas és sötét, a karakterek árnyaltak, a világ pedig élő és részletes.\nA párbeszédek és intrikák jól működnek, folyamatosan fenntartják az érdeklődést.\nFantasy rajongóknak kötelező olvasmány, tele váratlan fordulatokkal és mélységgel.', '2026-03-31 09:03:50.115804', 0),
(54, 10, 16, 5, 'Nagyon hangulatos és magával ragadó kötet, tele izgalmas történetekkel és erkölcsi dilemmákkal. Geralt karaktere továbbra is összetett és szerethető, a világ pedig részletesen kidolgozott. Kifejezetten ajánlom a fantasy rajongóknak, nehéz letenni!\n', '2026-04-01 07:54:45.907551', 0),
(55, 10, 15, 5, 'Remek bevezetés a Vaják világába, tele izgalmas és fordulatos novellákkal. Geralt karaktere már itt is nagyon erős és érdekes, a történetek pedig sötét hangulatúak és elgondolkodtatóak. Könnyen beszippant, alig vártam a folytatást!', '2026-04-01 07:55:15.668861', 0),
(56, 10, 17, 4, 'Érdekes irányba viszi tovább a történetet, de a tempó néhol lassabb, mint az előző kötetekben. A karakterek fejlődése viszont kifejezetten erős, és a világépítés is egyre részletesebb. Nem a legerősebb rész, de a sorozat szempontjából fontos.', '2026-04-01 07:55:59.075781', 0),
(57, 10, 19, 3, 'Izgalmas és komor hangulatú kötet, amelyben Geralt útja tele van veszélyekkel és nehéz döntésekkel. Ugyanakkor a történet néhol kissé elnyújtottnak hat, és nem minden szál halad egyformán érdekesen. Ennek ellenére a karakterek és a hangulat miatt megéri elolvasni.\n', '2026-04-01 07:56:29.256930', 0),
(58, 10, 36, 5, 'Egyszerűen zseniális krimi, végig feszült és kiszámíthatatlan. Agatha Christie mesterien építi a feszültséget, a lezárás pedig teljesen meglepő és emlékezetes. Az egyik legjobb könyv, amit valaha olvastam!\n', '2026-04-01 07:56:57.442201', 0),
(59, 10, 10, 5, 'Rendkívül részletes és összetett fantasy világ, tele izgalmas fordulatokkal és emlékezetes karakterekkel. Néha kicsit nehéz követni a sok szereplőt és szálat, de pont ez adja a történet mélységét. Nagyon beszippant, igazi epikus élmény!\n', '2026-04-01 07:57:25.574955', 0),
(60, 10, 62, 1, 'Sajnos csalódás volt az első rész után, a történet sokszor zavaros és nehezen követhető. A karakterek döntései gyakran logikátlannak tűnnek, ami rontja az élményt. Bár vannak izgalmas részek, összességében gyengébb folytatás.\n', '2026-04-01 07:57:51.274294', 0),
(61, 10, 40, 5, 'Lenyűgöző és szenvedélyes történet, tele drámával és erős érzelmekkel. A karakterek komplexek és emlékezetesek, a romantikus és tragikus elemek pedig tökéletesen keverednek. Egy igazán klasszikus regény, amit érdemes újraolvasni.', '2026-04-01 07:58:19.104631', 0),
(62, 10, 13, 4, 'Izgalmas és sötét fordulatokkal teli kötet, amely tovább mélyíti Westeros politikai intrikáit. Néha túl sok a szereplő és a szál, ami lassítja a történetet, de a karakterek fejlődése és a feszültség miatt mégis leköti az olvasót. Egy igazi epikus folytatás a sorozatban.\n', '2026-04-01 07:58:42.777237', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `shippingaddresses`
--

CREATE TABLE `shippingaddresses` (
  `Id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `ZipCode` longtext DEFAULT NULL,
  `City` longtext DEFAULT NULL,
  `StreetAddress` longtext DEFAULT NULL,
  `Country` longtext DEFAULT NULL,
  `IsDefault` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `shippingaddresses`
--

INSERT INTO `shippingaddresses` (`Id`, `UserId`, `ZipCode`, `City`, `StreetAddress`, `Country`, `IsDefault`) VALUES
(2, 10, '8721', 'Taktaharkány', 'Faluvégi utca 13', 'Magyarország', 1),
(3, 3, '3478', 'Miskolc', 'Kengyel út 19', 'Magyarország', 1),
(4, 4, '8765', 'Kulcs', 'Szélmalom utca 12', 'Magyarország', 1),
(5, 5, '1010', 'Budapest', 'Pék utca 56', 'Magyarország', 1),
(6, 6, '9080', 'Dunaújváros', 'Vasmű út 20', 'Magyarország', 1),
(7, 7, '4030', 'Paks', 'Gagrin utca 3', 'Magyarország', 1),
(8, 8, '2020', 'Rácalmás', 'Lengyel utca 78', 'Magyarország', 1),
(9, 9, '7665', 'Debrecen', 'Palotás út 13', 'Magyarország', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PasswordHash` longtext NOT NULL,
  `FirstName` longtext NOT NULL,
  `LastName` longtext NOT NULL,
  `Phone` longtext DEFAULT NULL,
  `RegistrationDate` datetime(6) NOT NULL,
  `Role` longtext NOT NULL,
  `IsActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`Id`, `Email`, `PasswordHash`, `FirstName`, `LastName`, `Phone`, `RegistrationDate`, `Role`, `IsActive`) VALUES
(1, 'admin@konyvhuszarok.hu', '$2a$11$vA9oRayE7wsjPHhjilRaFeslPgrv5DFpuP9dkufEpkZhgg8sBVY72', 'Admin', 'Admin', '', '2026-03-18 09:21:13.956922', 'admin', 1),
(2, 'pelda@gmail.com', '$2a$11$jmWwt5vAPAHTexEK7TfH/.9kehs2PGqY1sCknnyk/oVpmDQNHOW0y', 'Bálint', 'Horváth', '+36 214 1654', '2026-03-18 11:07:18.755872', 'user', 1),
(3, 'kovacsigor@gmail.com', '$2a$11$g9QRxscFUKoJXkI0F8baFOWmJ3wCt34cDt0/oMAaCoxKSjErfqcaq', 'Igor', 'Kovács', '+36205679832', '2026-03-31 07:52:27.854788', 'user', 1),
(4, 'lengyelcsabi@gmail.com', '$2a$11$0wAXT/eZ1o1sQ6olFK2d9ecmmKsgShEibjWyWFWZ1gDQlXhKyR2mC', 'Csaba', 'Lengyel', '+36306784523', '2026-03-31 08:10:06.206107', 'user', 1),
(5, 'szabod@gmail.com', '$2a$11$opFd5j7chE521JgBwddg2ugbo0IyFzZy1cTMlpsV7MEv4MGpWcHQa', 'Dorina', 'Szabó', '+36708213945', '2026-03-31 08:17:29.189854', 'user', 1),
(6, 'szlaura@gmail.com', '$2a$11$hxaN/QK3fhbTqs1m5icuyuafwtlo4VJxogpNz6HwzWm5bHbqkve86', 'Laura', 'Szegedi', '+36204678321', '2026-03-31 08:26:28.380835', 'user', 1),
(7, 'cserpet@gmail.com', '$2a$11$5zEUmptBpazZdjmp7usQ/e9mzpX0emHzkCEoYN7qu248NDYzoazPe', 'Petra', 'Cserepes', '+36204569234', '2026-03-31 08:33:35.177993', 'user', 1),
(8, 'fesusliza@gmail.com', '$2a$11$aA85Q/jh7T2PDyqCaz0nn.5X..YwT4p5WM7WLX1OZ4iRofrjzegju', 'Liza', 'Fésűs', '+36303678294', '2026-03-31 08:47:19.330740', 'user', 1),
(9, 'hannakiss@gmail.com', '$2a$11$ESKcRjCHaLut3UBj5Xa/NupSG9IEY0frATH9WSlxm768jHgEEMrCS', 'Hanna', 'Kiss', '+36206723984', '2026-03-31 08:55:35.015080', 'user', 1),
(10, 'kernerluca@gmail.com', '$2a$11$BnBaiF8HmJV72jzT1ZBuaefaJBDZPNIAcbMEGDYSMUGe6bGxz.ja2', 'Luca', 'Kerner', '+36305982657', '2026-03-31 09:06:00.082588', 'user', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `wishlists`
--

CREATE TABLE `wishlists` (
  `Id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `BookId` int(11) NOT NULL,
  `AddedAt` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20260304093422_InitialCreate', '8.0.2'),
('20260326190102_RemoveUnusedTables', '8.0.2');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `bookcategories`
--
ALTER TABLE `bookcategories`
  ADD PRIMARY KEY (`BookId`,`CategoryId`),
  ADD KEY `IX_BookCategories_CategoryId` (`CategoryId`);

--
-- A tábla indexei `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `IX_Books_Isbn` (`Isbn`);

--
-- A tábla indexei `cartitems`
--
ALTER TABLE `cartitems`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_CartItems_BookId` (`BookId`),
  ADD KEY `IX_CartItems_CartId` (`CartId`);

--
-- A tábla indexei `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `IX_Carts_UserId` (`UserId`);

--
-- A tábla indexei `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Categories_ParentCategoryId` (`ParentCategoryId`);

--
-- A tábla indexei `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Discounts_BookId` (`BookId`),
  ADD KEY `IX_Discounts_CategoryId` (`CategoryId`);

--
-- A tábla indexei `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_OrderItems_BookId` (`BookId`),
  ADD KEY `IX_OrderItems_OrderId` (`OrderId`);

--
-- A tábla indexei `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Orders_UserId` (`UserId`);

--
-- A tábla indexei `orderstatushistories`
--
ALTER TABLE `orderstatushistories`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_OrderStatusHistories_OrderId` (`OrderId`);

--
-- A tábla indexei `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Reviews_BookId` (`BookId`),
  ADD KEY `IX_Reviews_UserId` (`UserId`);

--
-- A tábla indexei `shippingaddresses`
--
ALTER TABLE `shippingaddresses`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_ShippingAddresses_UserId` (`UserId`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `IX_Users_Email` (`Email`);

--
-- A tábla indexei `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Wishlists_BookId` (`BookId`),
  ADD KEY `IX_Wishlists_UserId` (`UserId`);

--
-- A tábla indexei `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `books`
--
ALTER TABLE `books`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT a táblához `cartitems`
--
ALTER TABLE `cartitems`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT a táblához `carts`
--
ALTER TABLE `carts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `discounts`
--
ALTER TABLE `discounts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT a táblához `orders`
--
ALTER TABLE `orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `orderstatushistories`
--
ALTER TABLE `orderstatushistories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `reviews`
--
ALTER TABLE `reviews`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT a táblához `shippingaddresses`
--
ALTER TABLE `shippingaddresses`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `bookcategories`
--
ALTER TABLE `bookcategories`
  ADD CONSTRAINT `FK_BookCategories_Books_BookId` FOREIGN KEY (`BookId`) REFERENCES `books` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BookCategories_Categories_CategoryId` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `cartitems`
--
ALTER TABLE `cartitems`
  ADD CONSTRAINT `FK_CartItems_Books_BookId` FOREIGN KEY (`BookId`) REFERENCES `books` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CartItems_Carts_CartId` FOREIGN KEY (`CartId`) REFERENCES `carts` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `FK_Carts_Users_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `FK_Categories_Categories_ParentCategoryId` FOREIGN KEY (`ParentCategoryId`) REFERENCES `categories` (`Id`);

--
-- Megkötések a táblához `discounts`
--
ALTER TABLE `discounts`
  ADD CONSTRAINT `FK_Discounts_Books_BookId` FOREIGN KEY (`BookId`) REFERENCES `books` (`Id`),
  ADD CONSTRAINT `FK_Discounts_Categories_CategoryId` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`);

--
-- Megkötések a táblához `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `FK_OrderItems_Books_BookId` FOREIGN KEY (`BookId`) REFERENCES `books` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_OrderItems_Orders_OrderId` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_Orders_Users_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `orderstatushistories`
--
ALTER TABLE `orderstatushistories`
  ADD CONSTRAINT `FK_OrderStatusHistories_Orders_OrderId` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `FK_Reviews_Books_BookId` FOREIGN KEY (`BookId`) REFERENCES `books` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Reviews_Users_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `shippingaddresses`
--
ALTER TABLE `shippingaddresses`
  ADD CONSTRAINT `FK_ShippingAddresses_Users_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `FK_Wishlists_Books_BookId` FOREIGN KEY (`BookId`) REFERENCES `books` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Wishlists_Users_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
