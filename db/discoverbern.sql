-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 19. Apr 2018 um 16:02
-- Server-Version: 10.1.31-MariaDB
-- PHP-Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `discoverbern`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `category`
--

CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `category_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `category`
--

INSERT INTO `category` (`cid`, `category_name`) VALUES
(1, 'restaurants'),
(2, 'bars'),
(3, 'wandern'),
(4, 'tourism');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ort`
--

CREATE TABLE `ort` (
  `ort` varchar(50) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `plz` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ort`
--

INSERT INTO `ort` (`ort`, `plz`) VALUES
('Biel/Bienne', 2500),
('Biel/Bienne', 2502),
('Biel/Bienne', 2503),
('Biel/Bienne', 2504),
('Biel/Bienne', 2505),
('T?scherz-Alferm?e\r', 2512),
('Twann', 2513),
('Ligerz', 2514),
('Pr?les', 2515),
('Lamboing', 2516),
('Diesse', 2517),
('Nods', 2518),
('La Neuveville', 2520),
('Ligni?res', 2523),
('Le Landeron', 2525),
('Magglingen/Macolin', 2532),
('Evilard', 2533),
('Les Pr?s-d\'Orvin', 2534),
('Frinvillier', 2535),
('Plagne', 2536),
('Vauffelin', 2537),
('Romont BE', 2538),
('Grenchen', 2540),
('Pieterlen', 2542),
('Lengnau BE', 2543),
('Bettlach', 2544),
('Selzach', 2545),
('Orpund', 2552),
('Safnern', 2553),
('Meinisberg', 2554),
('Br?gg BE', 2555),
('Scheuren', 2556),
('Studen BE', 2557),
('Aegerten', 2558),
('Nidau', 2560),
('Port', 2562),
('Ipsach', 2563),
('Bellmund', 2564),
('Jens', 2565),
('M?rigen', 2572),
('Hagneck', 2575),
('L?scherz', 2576),
('Finsterhennen', 2577),
('P?ry', 2603),
('La Heutte', 2604),
('Sonceboz-Sombeval', 2605),
('Corg?mont', 2606),
('Cort?bert', 2607),
('Montagne-de-Courtelary', 2608),
('Mont-Soleil', 2610),
('Cormoret', 2612),
('Villeret', 2613),
('Montagne-de-Sonvilier', 2615),
('La Cibourg', 2616),
('Tavannes', 2710),
('Le Fuet', 2712),
('Bellelay', 2713),
('Le Pr?dame', 2714),
('Monible', 2715),
('Sornetan', 2716),
('Fornet-Dessous', 2717),
('Fornet-Dessus', 2718),
('La Tanne', 2720),
('Les Reussilles', 2722),
('Mont-Tramelan', 2723),
('Saicourt', 2732),
('Pontenet', 2733),
('B?vilard', 2735),
('Sorvilier', 2736),
('Court', 2738),
('Moutier', 2740),
('Perrefitte', 2742),
('Eschert', 2743),
('Belprahon', 2744),
('Grandval', 2745),
('Cr?mines', 2746),
('Seehof', 2747),
('Souboz', 2748),
('Roches BE', 2762),
('Del?mont', 2800),
('Develier', 2802),
('Bourrignon', 2803),
('Soyhi?res', 2805),
('Mettembert', 2806),
('Lucelle', 2807),
('Movelier', 2812),
('Ederswiler', 2813),
('Roggenburg', 2814),
('Courroux', 2822),
('Courcelon', 2823),
('Vicques', 2824),
('Courchapoix', 2825),
('Corban', 2826),
('Schelten', 2827),
('Montsevelier', 2828),
('Vermes', 2829),
('Vellerat', 2830),
('Rebeuvelier', 2832),
('Rossemaison', 2842),
('Ch?tillon JU', 2843),
('Court?telle', 2852),
('Courfaivre', 2853),
('Bassecourt', 2854),
('Glovelier', 2855),
('Bo?court', 2856),
('Montavon', 2857),
('Undervelier', 2863),
('Soulce', 2864),
('Saulcy', 2873),
('Montfavergier', 2874),
('Les Enfers', 2875),
('Le B?mont JU', 2877),
('St-Ursanne', 2882),
('Montmelon', 2883),
('Montenol', 2884),
('Epauvillers', 2885),
('Epiquerez', 2886),
('Soubey', 2887),
('Seleute', 2888),
('Ocourt', 2889),
('Porrentruy', 2900),
('Fontenais', 2902),
('Villars-sur Fontenais', 2903),
('Bressaucourt', 2904),
('Courtedoux', 2905),
('Chevenez', 2906),
('Rocourt', 2907),
('Grandfontaine', 2908),
('Roche-d\'Or', 2912),
('Damvant', 2914),
('Bure', 2915),
('Fahy', 2916),
('Courchavon', 2922),
('Courtema?che', 2923),
('Montignez', 2924),
('Buix', 2925),
('Boncourt', 2926),
('Coeuve', 2932),
('Damphreux', 2933),
('Beurnev?sin', 2935),
('Alle', 2942),
('Vendlincourt', 2943),
('Bonfol', 2944),
('Mi?court', 2946),
('Charmoille', 2947),
('Courtemautruy', 2950),
('Cornol', 2952),
('Fregi?court', 2953),
('Asuel', 2954),
('Bern', 3000),
('Bern', 3004),
('Bern', 3005),
('Bern', 3006),
('Bern', 3007),
('Bern', 3008),
('Bern', 3010),
('Bern', 3011),
('Bern', 3012),
('Bern', 3013),
('Bern', 3014),
('Bern', 3015),
('Bern', 3018),
('Bern', 3019),
('Bern', 3020),
('Bern', 3027),
('Hinterkappelen', 3032),
('Wohlen b. Bern', 3033),
('Murzelen', 3034),
('Frieswil', 3035),
('Detligen', 3036),
('Herrenschwanden', 3037),
('Kirchlindach', 3038),
('Ortschwaben', 3042),
('Uettligen', 3043),
('Innerberg', 3044),
('Meikirch', 3045),
('Wahlendorf', 3046),
('Bremgarten b. Bern', 3047),
('Worblaufen', 3048),
('S?riswil', 3049),
('Zollikofen', 3052),
('Deisswil b. M?nchenbuchsee', 3053),
('Sch?pfen', 3054),
('Ittigen', 3063),
('Bolligen', 3065),
('Stettlen', 3066),
('Boll', 3067),
('Utzigen', 3068),
('Ostermundigen', 3072),
('G?mligen', 3073),
('Muri b. Bern', 3074),
('R?fenacht BE', 3075),
('Worb', 3076),
('Enggistein', 3077),
('Richigen', 3078),
('Schlosswil', 3082),
('Trimstein', 3083),
('Wabern', 3084),
('Englisberg', 3086),
('Niedermuhlern', 3087),
('Oberb?tschel', 3088),
('Hinterfultigen', 3089),
('Spiegel b. Bern', 3095),
('Oberbalm', 3096),
('Liebefeld', 3097),
('K?niz', 3098),
('R?ti b. Riggisberg', 3099),
('M?nsingen', 3110),
('T?gertschi', 3111),
('Allmendingen b. Bern', 3112),
('Rubigen', 3113),
('Wichtrach', 3114),
('Gerzensee', 3115),
('M?hledorf BE', 3116),
('Kehrsatz', 3122),
('Belp', 3123),
('Belpberg', 3124),
('Toffen', 3125),
('Gelterfingen', 3126),
('Lohnstorf', 3127),
('Kirchenthurnen', 3128),
('Riggisberg', 3132),
('Gasel', 3144),
('Niederscherli', 3145),
('Mittelh?usern', 3147),
('Lanzenh?usern', 3148),
('Schwarzenburg', 3150),
('Mamishaus', 3152),
('R?schegg Gambach', 3153),
('R?schegg Heubach', 3154),
('Helgisried-Rohrbach', 3155),
('Riffenmatt', 3156),
('Milken', 3157),
('Guggisberg', 3158),
('Riedst?tt', 3159),
('Niederwangen b. Bern', 3172),
('Oberwangen b. Bern', 3173),
('Th?rishaus', 3174),
('Flamatt', 3175),
('Neuenegg', 3176),
('Laupen BE', 3177),
('B?singen', 3178),
('Kriechenwil', 3179),
('Ueberstorf', 3182),
('Albligen', 3183),
('W?nnewil', 3184),
('Schmitten FR', 3185),
('D?dingen', 3186),
('Frauenkappelen', 3202),
('M?hleberg', 3203),
('Rossh?usern', 3204),
('G?mmenen', 3205),
('Rizenbach', 3206),
('Wileroltigen', 3207),
('Gurbr?', 3208),
('Kerzers', 3210),
('Kleingurmels', 3212),
('Liebistorf', 3213),
('Ulmiz', 3214),
('Gempenach', 3215),
('Agriswil', 3216),
('M?ntschemier', 3225),
('Treiten', 3226),
('Ins', 3232),
('Tschugg', 3233),
('Vinelz', 3234),
('Erlach', 3235),
('Gampelen', 3236),
('Br?ttelen', 3237),
('Gals', 3238),
('Lyss', 3250),
('Ruppoldsried', 3251),
('Worben', 3252),
('Schnottwil', 3253),
('Balm b. Messen', 3254),
('Rapperswil BE', 3255),
('Dieterswil', 3256),
('Ammerzwil BE', 3257),
('Suberg', 3262),
('B?etigen', 3263),
('Diessbach b. B?ren', 3264),
('Wiler b. Seedorf', 3266),
('Seedorf BE', 3267),
('Lobsigen', 3268),
('Aarberg', 3270),
('Radelfingen b. Aarberg', 3271),
('Epsach', 3272),
('Kappelen', 3273),
('Hermrigen', 3274),
('Meyriez', 3280),
('Bargen BE', 3282),
('Niederried b. Kallnach', 3283),
('Fr?schels', 3284),
('Galmiz', 3285),
('Muntelier', 3286),
('Busswil b. B?ren', 3292),
('Dotzigen', 3293),
('Meienried', 3294),
('R?ti b. B?ren', 3295),
('Arch', 3296),
('Leuzigen', 3297),
('Oberwil b. B?ren', 3298),
('Moosseedorf', 3302),
('Zuzwil BE', 3303),
('Iffwil', 3305),
('Etzelkofen', 3306),
('Brunnenthal', 3307),
('Grafenried', 3308),
('Kernenried', 3309),
('Fraubrunnen', 3312),
('B?ren zum Hof', 3313),
('Schalunen', 3314),
('Kr?iligen', 3315),
('Limpach', 3317),
('Mattstetten', 3322),
('B?riswil BE', 3323),
('M?tschwil', 3324),
('Hettiswil b. Hindelbank', 3325),
('Krauchthal', 3326),
('Herzogenbuchsee', 3360),
('Nieder?nz', 3362),
('Ober?nz', 3363),
('Seeberg', 3365),
('Bettenhausen', 3366),
('Ochlenberg', 3367),
('Bleienbach', 3368),
('Wanzwil', 3372),
('Heimenhausen', 3373),
('Wangenried', 3374),
('Inkwil', 3375),
('Graben', 3376),
('Walliswil b. Wangen', 3377),
('Walliswil b. Niederbipp', 3380),
('Burgdorf', 3400),
('Heimiswil', 3412),
('Kaltacker', 3413),
('Oberburg', 3414),
('Schafhausen im Emmental', 3415),
('Affoltern im Emmental', 3416),
('R?egsau', 3417),
('R?egsbach', 3418),
('Biembach im Emmental', 3419),
('R?ti b. Lyssach', 3421),
('R?dtligen', 3422),
('Ersigen', 3423),
('Nieder?sch', 3424),
('Willadingen', 3425),
('Aefligen', 3426),
('Utzenstorf', 3427),
('Wiler b. Utzenstorf', 3428),
('Hellsau', 3429),
('L?tzelfl?h-Goldbach', 3432),
('Schwanden im Emmental', 3433),
('Obergoldbach', 3434),
('Ramsei', 3435),
('Zollbr?ck', 3436),
('R?derswil', 3437),
('Lauperswil', 3438),
('Ranfl?h', 3439),
('Gr?nenmatt', 3452),
('Heimisbach', 3453),
('Sumiswald', 3454),
('Gr?nen', 3455),
('Trachselwald', 3456),
('Wasen im Emmental', 3457),
('Weier im Emmental', 3462),
('H?usernmoos im Emmental', 3463),
('Schmidigen-M?hleweg', 3464),
('D?rrenroth', 3465),
('Rumendingen', 3472),
('Alchenstorf', 3473),
('R?edisbach', 3474),
('Riedtwil', 3475),
('Oschwand', 3476),
('Gysenstein', 3503),
('Niederh?nigen', 3504),
('Grossh?chstetten', 3506),
('Biglen', 3507),
('Arni BE', 3508),
('Freimettigen', 3510),
('Walkringen', 3512),
('Bigenthal', 3513),
('Oberthal', 3531),
('Mirchel', 3532),
('Bowil', 3533),
('Signau', 3534),
('Sch?pbach', 3535),
('Aeschau', 3536),
('Eggiwil', 3537),
('R?thenbach im Emmental', 3538),
('Emmenmatt', 3543),
('Langnau im Emmental', 3550),
('Oberfrittenbach', 3551),
('B?rau', 3552),
('Gohl', 3553),
('Trubschachen', 3555),
('Trub', 3556),
('Fankhaus (Trub)', 3557),
('Thun', 3600),
('Thun', 3603),
('Thun', 3604),
('Thun', 3608),
('Steffisburg', 3612),
('Steffisburg', 3613),
('Unterlangenegg', 3614),
('Heimenschwand', 3615),
('Schwarzenegg', 3616),
('Fahrni b. Thun', 3617),
('S?deren', 3618),
('Eriz', 3619),
('Homberg b. Thun', 3622),
('Teuffenthal b. Thun', 3623),
('Schwendibach', 3624),
('Heiligenschwendi', 3625),
('H?nibach', 3626),
('Heimberg', 3627),
('Kienersr?ti', 3628),
('Oppligen', 3629),
('H?fen b. Thun', 3631),
('Niederstocken', 3632),
('Amsoldingen', 3633),
('Thierachern', 3634),
('Uebeschi', 3635),
('L?ngenb?hl', 3636),
('Pohlern', 3638),
('Gwatt (Thun)', 3645),
('Einigen', 3646),
('Reutigen', 3647),
('Hilterfingen', 3652),
('Oberhofen am Thunersee', 3653),
('Gunten', 3654),
('Sigriswil', 3655),
('Tschingel ob Gunten', 3656),
('Schwanden (Sigriswil)', 3657),
('Merligen', 3658),
('Uetendorf', 3661),
('Seftigen', 3662),
('Gurzelen', 3663),
('Burgistein', 3664),
('Wattenwil', 3665),
('Herbligen', 3671),
('Aeschlen b. Oberdiessbach', 3672),
('Linden', 3673),
('Bleiken b. Oberdiessbach', 3674),
('Spiez', 3700),
('Hondrich', 3702),
('Aeschiried', 3703),
('Krattigen', 3704),
('Faulensee', 3705),
('Leissigen', 3706),
('D?rligen', 3707),
('Emdthal', 3711),
('Reichenbach im Kandertal', 3713),
('Wengi b. Frutigen', 3714),
('Adelboden', 3715),
('Kandergrund', 3716),
('Blausee-Mitholz', 3717),
('Kandersteg', 3718),
('Scharnachtal', 3722),
('Kiental', 3723),
('Ried (Frutigen)', 3724),
('Achseten', 3725),
('Wimmis', 3752),
('Oey', 3753),
('Diemtigen', 3754),
('Horboden', 3755),
('Zwischenfl?h', 3756),
('Schwenden im Diemtigtal', 3757),
('Latterbach', 3758),
('Erlenbach im Simmental', 3762),
('D?rstetten', 3763),
('Weissenburg', 3764),
('Oberwil im Simmental', 3765),
('Boltigen', 3766),
('Zweisimmen', 3770),
('Blankenburg', 3771),
('St. Stephan', 3772),
('Matten (St. Stephan)', 3773),
('Lenk im Simmental', 3775),
('Oeschseite', 3776),
('Saanenm?ser', 3777),
('Sch?nried', 3778),
('Gstaad', 3780),
('Turbach', 3781),
('Lauenen b. Gstaad', 3782),
('Grund b. Gstaad', 3783),
('Feutersoey', 3784),
('Gsteig b. Gstaad', 3785),
('Saanen', 3792),
('Sundlauenen', 3800),
('Jungfraujoch', 3801),
('Beatenberg', 3803),
('Habkern', 3804),
('Goldswil b. Interlaken', 3805),
('B?nigen b. Interlaken', 3806),
('Iseltwald', 3807),
('Wilderswil', 3812),
('Saxeten', 3813),
('Gsteigwiler', 3814),
('Zweil?tschinen', 3815),
('L?tschental', 3816),
('Grindelwald', 3818),
('Isenfluh', 3822),
('Kleine Scheidegg', 3823),
('Stechelberg', 3824),
('M?rren', 3825),
('Gimmelwald', 3826),
('Ringgenberg BE', 3852),
('Niederried b. Interlaken', 3853),
('Oberried am Brienzersee', 3854),
('Schwanden b. Brienz', 3855),
('Brienzwiler', 3856),
('Unterbach BE', 3857),
('Hofstetten b. Brienz', 3858),
('Rosenlaui', 3860),
('Innertkirchen', 3862),
('Gadmen', 3863),
('Guttannen', 3864);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `post`
--

CREATE TABLE `post` (
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `imgurl` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ort_id` int(11) NOT NULL,
  `rateadd` int(11) DEFAULT NULL,
  `ratermv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `post`
--

INSERT INTO `post` (`pid`, `title`, `category_id`, `imgurl`, `user_id`, `ort_id`, `rateadd`, `ratermv`) VALUES
(1, 'FANCY1', 1, '/images/restaurants/2.png', 2, 2535, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `post_tags`
--

CREATE TABLE `post_tags` (
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tags`
--

CREATE TABLE `tags` (
  `tid` int(11) NOT NULL,
  `tag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`uid`, `uname`, `email`, `password`, `admin`) VALUES
(2, 'SVRNM', 'keerthan_1@hotmail.com', '63f8a1093530c4ba4749e8a957c9a9f318c86bdc', 0),
(3, 'MischuNR', 'email@email.com', '63f8a1093530c4ba4749e8a957c9a9f318c86bdc', 0);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indizes für die Tabelle `ort`
--
ALTER TABLE `ort`
  ADD PRIMARY KEY (`plz`),
  ADD UNIQUE KEY `plz` (`plz`);

--
-- Indizes für die Tabelle `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `FK_post_user` (`user_id`),
  ADD KEY `FK_post_ort` (`ort_id`),
  ADD KEY `FK_post_category` (`category_id`);

--
-- Indizes für die Tabelle `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`tid`,`pid`),
  ADD KEY `FK_post_tags_post` (`pid`);

--
-- Indizes für die Tabelle `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tid`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `post`
--
ALTER TABLE `post`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT für Tabelle `tags`
--
ALTER TABLE `tags`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_post_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`cid`),
  ADD CONSTRAINT `FK_post_ort` FOREIGN KEY (`ort_id`) REFERENCES `ort` (`plz`),
  ADD CONSTRAINT `FK_post_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`uid`);

--
-- Constraints der Tabelle `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `FK_post_tags_post` FOREIGN KEY (`pid`) REFERENCES `post` (`pid`),
  ADD CONSTRAINT `FK_post_tags_tags` FOREIGN KEY (`tid`) REFERENCES `tags` (`tid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
