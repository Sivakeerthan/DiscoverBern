-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 19. Apr 2018 um 08:49
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

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ort`
--

CREATE TABLE `ort` (
  `oid` int(11) NOT NULL,
  `ort` varchar(50) NOT NULL,
  `plz` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ort`
--

INSERT INTO `ort` (`oid`, `ort`, `plz`) VALUES
(2535, 'Biel/Bienne\r', 2500),
(2536, 'Biel/Bienne\r', 2502),
(2537, 'Biel/Bienne\r', 2503),
(2538, 'Biel/Bienne\r', 2504),
(2539, 'Biel/Bienne\r', 2505),
(2540, 'T?scherz-Alferm?e\r', 2512),
(2541, 'Twann\r', 2513),
(2542, 'Ligerz\r', 2514),
(2543, 'Pr?les\r', 2515),
(2544, 'Lamboing\r', 2516),
(2545, 'Diesse\r', 2517),
(2546, 'Nods\r', 2518),
(2547, 'La Neuveville\r', 2520),
(2548, 'Ligni?res\r', 2523),
(2549, 'Le Landeron\r', 2525),
(2550, 'Magglingen/Macolin\r', 2532),
(2551, 'Evilard\r', 2533),
(2552, 'Les Pr?s-d\'Orvin\r', 2534),
(2553, 'Orvin\r', 2534),
(2554, 'Frinvillier\r', 2535),
(2555, 'Plagne\r', 2536),
(2556, 'Vauffelin\r', 2537),
(2557, 'Romont BE\r', 2538),
(2558, 'Grenchen\r', 2540),
(2559, 'Pieterlen\r', 2542),
(2560, 'Lengnau BE\r', 2543),
(2561, 'Bettlach\r', 2544),
(2562, 'Selzach\r', 2545),
(2563, 'Orpund\r', 2552),
(2564, 'Safnern\r', 2553),
(2565, 'Meinisberg\r', 2554),
(2566, 'Br?gg BE\r', 2555),
(2567, 'Scheuren\r', 2556),
(2568, 'Schwadernau\r', 2556),
(2569, 'Studen BE\r', 2557),
(2570, 'Aegerten\r', 2558),
(2571, 'Nidau\r', 2560),
(2572, 'Port\r', 2562),
(2573, 'Ipsach\r', 2563),
(2574, 'Bellmund\r', 2564),
(2575, 'Jens\r', 2565),
(2576, 'M?rigen\r', 2572),
(2577, 'Sutz\r', 2572),
(2578, 'Hagneck\r', 2575),
(2579, 'Gerolfingen\r', 2575),
(2580, 'T?uffelen\r', 2575),
(2581, 'L?scherz\r', 2576),
(2582, 'Finsterhennen\r', 2577),
(2583, 'Siselen BE\r', 2577),
(2584, 'P?ry\r', 2603),
(2585, 'La Heutte\r', 2604),
(2586, 'Sonceboz-Sombeval\r', 2605),
(2587, 'Corg?mont\r', 2606),
(2588, 'Cort?bert\r', 2607),
(2589, 'Montagne-de-Courtelary\r', 2608),
(2590, 'Courtelary\r', 2608),
(2591, 'Mont-Soleil\r', 2610),
(2592, 'Mont-Crosin\r', 2610),
(2593, 'Les Pontins\r', 2610),
(2594, 'St-Imier\r', 2610),
(2595, 'Cormoret\r', 2612),
(2596, 'Villeret\r', 2613),
(2597, 'Montagne-de-Sonvilier\r', 2615),
(2598, 'Sonvilier\r', 2615),
(2599, 'La Cibourg\r', 2616),
(2600, 'Renan BE\r', 2616),
(2601, 'Tavannes\r', 2710),
(2602, 'Le Fuet\r', 2712),
(2603, 'Bellelay\r', 2713),
(2604, 'Le Pr?dame\r', 2714),
(2605, 'Les Genevez JU\r', 2714),
(2606, 'Monible\r', 2715),
(2607, 'Ch?telat\r', 2715),
(2608, 'Sornetan\r', 2716),
(2609, 'Fornet-Dessous\r', 2717),
(2610, 'Reb?velier\r', 2717),
(2611, 'Fornet-Dessus\r', 2718),
(2612, 'Lajoux JU\r', 2718),
(2613, 'La Tanne\r', 2720),
(2614, 'Tramelan\r', 2720),
(2615, 'Les Reussilles\r', 2722),
(2616, 'Mont-Tramelan\r', 2723),
(2617, 'Saicourt\r', 2732),
(2618, 'Saules BE\r', 2732),
(2619, 'Loveresse\r', 2732),
(2620, 'Reconvilier\r', 2732),
(2621, 'Pontenet\r', 2733),
(2622, 'B?vilard\r', 2735),
(2623, 'Champoz\r', 2735),
(2624, 'Malleray\r', 2735),
(2625, 'Sorvilier\r', 2736),
(2626, 'Court\r', 2738),
(2627, 'Moutier\r', 2740),
(2628, 'Perrefitte\r', 2742),
(2629, 'Eschert\r', 2743),
(2630, 'Belprahon\r', 2744),
(2631, 'Grandval\r', 2745),
(2632, 'Cr?mines\r', 2746),
(2633, 'Seehof\r', 2747),
(2634, 'Corcelles BE\r', 2747),
(2635, 'Souboz\r', 2748),
(2636, 'Les Ecorcheresses\r', 2748),
(2637, 'Roches BE\r', 2762),
(2638, 'Del?mont\r', 2800),
(2639, 'Develier\r', 2802),
(2640, 'Bourrignon\r', 2803),
(2641, 'Soyhi?res\r', 2805),
(2642, 'Mettembert\r', 2806),
(2643, 'Lucelle\r', 2807),
(2644, 'Pleigne\r', 2807),
(2645, 'Movelier\r', 2812),
(2646, 'Ederswiler\r', 2813),
(2647, 'Roggenburg\r', 2814),
(2648, 'Courroux\r', 2822),
(2649, 'Courcelon\r', 2823),
(2650, 'Vicques\r', 2824),
(2651, 'Courchapoix\r', 2825),
(2652, 'Corban\r', 2826),
(2653, 'Schelten\r', 2827),
(2654, 'Mervelier\r', 2827),
(2655, 'Montsevelier\r', 2828),
(2656, 'Vermes\r', 2829),
(2657, 'Vellerat\r', 2830),
(2658, 'Courrendlin\r', 2830),
(2659, 'Rebeuvelier\r', 2832),
(2660, 'Rossemaison\r', 2842),
(2661, 'Ch?tillon JU\r', 2843),
(2662, 'Court?telle\r', 2852),
(2663, 'Courfaivre\r', 2853),
(2664, 'Bassecourt\r', 2854),
(2665, 'Glovelier\r', 2855),
(2666, 'Bo?court\r', 2856),
(2667, 'Montavon\r', 2857),
(2668, 'Undervelier\r', 2863),
(2669, 'Soulce\r', 2864),
(2670, 'Saulcy\r', 2873),
(2671, 'Montfavergier\r', 2874),
(2672, 'St-Brais\r', 2874),
(2673, 'Les Enfers\r', 2875),
(2674, 'Montfaucon\r', 2875),
(2675, 'Le B?mont JU\r', 2877),
(2676, 'St-Ursanne\r', 2882),
(2677, 'Montmelon\r', 2883),
(2678, 'Montenol\r', 2884),
(2679, 'Epauvillers\r', 2885),
(2680, 'Epiquerez\r', 2886),
(2681, 'Soubey\r', 2887),
(2682, 'Seleute\r', 2888),
(2683, 'Ocourt\r', 2889),
(2684, 'Porrentruy\r', 2900),
(2685, 'Fontenais\r', 2902),
(2686, 'Villars-sur Fontenais\r', 2903),
(2687, 'Bressaucourt\r', 2904),
(2688, 'Courtedoux\r', 2905),
(2689, 'Chevenez\r', 2906),
(2690, 'Rocourt\r', 2907),
(2691, 'Grandfontaine\r', 2908),
(2692, 'Roche-d\'Or\r', 2912),
(2693, 'R?cl?re\r', 2912),
(2694, 'Damvant\r', 2914),
(2695, 'Bure\r', 2915),
(2696, 'Fahy\r', 2916),
(2697, 'Courchavon\r', 2922),
(2698, 'Courtema?che\r', 2923),
(2699, 'Montignez\r', 2924),
(2700, 'Buix\r', 2925),
(2701, 'Boncourt\r', 2926),
(2702, 'Coeuve\r', 2932),
(2703, 'Damphreux\r', 2933),
(2704, 'Lugnez\r', 2933),
(2705, 'Beurnev?sin\r', 2935),
(2706, 'Alle\r', 2942),
(2707, 'Vendlincourt\r', 2943),
(2708, 'Bonfol\r', 2944),
(2709, 'Mi?court\r', 2946),
(2710, 'Charmoille\r', 2947),
(2711, 'Courtemautruy\r', 2950),
(2712, 'Courgenay\r', 2950),
(2713, 'Cornol\r', 2952),
(2714, 'Fregi?court\r', 2953),
(2715, 'Pleujouse\r', 2953),
(2716, 'Asuel\r', 2954),
(2717, 'Bern\r', 3000),
(2718, 'Bern\r', 3004),
(2719, 'Bern\r', 3005),
(2720, 'Bern\r', 3006),
(2721, 'Bern\r', 3007),
(2722, 'Bern\r', 3008),
(2723, 'Bern\r', 3010),
(2724, 'Bern\r', 3011),
(2725, 'Bern\r', 3012),
(2726, 'Bern\r', 3013),
(2727, 'Bern\r', 3014),
(2728, 'Bern\r', 3015),
(2729, 'Bern\r', 3018),
(2730, 'Bern\r', 3019),
(2731, 'Bern\r', 3020),
(2732, 'Bern\r', 3027),
(2733, 'Hinterkappelen\r', 3032),
(2734, 'Wohlen b. Bern\r', 3033),
(2735, 'Murzelen\r', 3034),
(2736, 'Frieswil\r', 3035),
(2737, 'Detligen\r', 3036),
(2738, 'Herrenschwanden\r', 3037),
(2739, 'Kirchlindach\r', 3038),
(2740, 'Ortschwaben\r', 3042),
(2741, 'Uettligen\r', 3043),
(2742, 'Innerberg\r', 3044),
(2743, 'Meikirch\r', 3045),
(2744, 'Wahlendorf\r', 3046),
(2745, 'Bremgarten b. Bern\r', 3047),
(2746, 'Worblaufen\r', 3048),
(2747, 'S?riswil\r', 3049),
(2748, 'Zollikofen\r', 3052),
(2749, 'Deisswil b. M?nchenbuchsee\r', 3053),
(2750, 'Diemerswil\r', 3053),
(2751, 'Wiggiswil\r', 3053),
(2752, 'L?tti\r', 3053),
(2753, 'M?nchenbuchsee\r', 3053),
(2754, 'Sch?pfen\r', 3054),
(2755, 'Ittigen\r', 3063),
(2756, 'Bolligen\r', 3065),
(2757, 'Stettlen\r', 3066),
(2758, 'Boll\r', 3067),
(2759, 'Utzigen\r', 3068),
(2760, 'Ostermundigen\r', 3072),
(2761, 'G?mligen\r', 3073),
(2762, 'Muri b. Bern\r', 3074),
(2763, 'R?fenacht BE\r', 3075),
(2764, 'Worb\r', 3076),
(2765, 'Enggistein\r', 3077),
(2766, 'Richigen\r', 3078),
(2767, 'Schlosswil\r', 3082),
(2768, 'Trimstein\r', 3083),
(2769, 'Wabern\r', 3084),
(2770, 'Englisberg\r', 3086),
(2771, 'Zimmerwald\r', 3086),
(2772, 'Niedermuhlern\r', 3087),
(2773, 'Oberb?tschel\r', 3088),
(2774, 'R?eggisberg\r', 3088),
(2775, 'Hinterfultigen\r', 3089),
(2776, 'Spiegel b. Bern\r', 3095),
(2777, 'Oberbalm\r', 3096),
(2778, 'Liebefeld\r', 3097),
(2779, 'K?niz\r', 3098),
(2780, 'Schliern b. K?niz\r', 3098),
(2781, 'R?ti b. Riggisberg\r', 3099),
(2782, 'M?nsingen\r', 3110),
(2783, 'T?gertschi\r', 3111),
(2784, 'Allmendingen b. Bern\r', 3112),
(2785, 'Rubigen\r', 3113),
(2786, 'Wichtrach\r', 3114),
(2787, 'Gerzensee\r', 3115),
(2788, 'M?hledorf BE\r', 3116),
(2789, 'Noflen BE\r', 3116),
(2790, 'Kirchdorf BE\r', 3116),
(2791, 'Kehrsatz\r', 3122),
(2792, 'Belp\r', 3123),
(2793, 'Belpberg\r', 3124),
(2794, 'Toffen\r', 3125),
(2795, 'Gelterfingen\r', 3126),
(2796, 'Kaufdorf\r', 3126),
(2797, 'Lohnstorf\r', 3127),
(2798, 'M?hlethurnen\r', 3127),
(2799, 'Kirchenthurnen\r', 3128),
(2800, 'R?mligen\r', 3128),
(2801, 'Riggisberg\r', 3132),
(2802, 'Gasel\r', 3144),
(2803, 'Niederscherli\r', 3145),
(2804, 'Mittelh?usern\r', 3147),
(2805, 'Lanzenh?usern\r', 3148),
(2806, 'Schwarzenburg\r', 3150),
(2807, 'Mamishaus\r', 3152),
(2808, 'R?schegg Gambach\r', 3153),
(2809, 'R?schegg Heubach\r', 3154),
(2810, 'Helgisried-Rohrbach\r', 3155),
(2811, 'Riffenmatt\r', 3156),
(2812, 'Milken\r', 3157),
(2813, 'Guggisberg\r', 3158),
(2814, 'Riedst?tt\r', 3159),
(2815, 'Niederwangen b. Bern\r', 3172),
(2816, 'Oberwangen b. Bern\r', 3173),
(2817, 'Th?rishaus\r', 3174),
(2818, 'Flamatt\r', 3175),
(2819, 'Neuenegg\r', 3176),
(2820, 'Laupen BE\r', 3177),
(2821, 'B?singen\r', 3178),
(2822, 'Kriechenwil\r', 3179),
(2823, 'Ueberstorf\r', 3182),
(2824, 'Albligen\r', 3183),
(2825, 'W?nnewil\r', 3184),
(2826, 'Schmitten FR\r', 3185),
(2827, 'D?dingen\r', 3186),
(2828, 'Frauenkappelen\r', 3202),
(2829, 'M?hleberg\r', 3203),
(2830, 'Rossh?usern\r', 3204),
(2831, 'G?mmenen\r', 3205),
(2832, 'Rizenbach\r', 3206),
(2833, 'Ferenbalm\r', 3206),
(2834, 'Biberen\r', 3206),
(2835, 'Gammen\r', 3206),
(2836, 'Wallenbuch\r', 3206),
(2837, 'Wileroltigen\r', 3207),
(2838, 'Golaten\r', 3207),
(2839, 'Gurbr?\r', 3208),
(2840, 'Kerzers\r', 3210),
(2841, 'Kleingurmels\r', 3212),
(2842, 'Gurmels\r', 3212),
(2843, 'Liebistorf\r', 3213),
(2844, 'Kleinb?singen\r', 3213),
(2845, 'Ulmiz\r', 3214),
(2846, 'Gempenach\r', 3215),
(2847, 'B?chslen\r', 3215),
(2848, 'Lurtigen\r', 3215),
(2849, 'Agriswil\r', 3216),
(2850, 'Ried b. Kerzers\r', 3216),
(2851, 'M?ntschemier\r', 3225),
(2852, 'Treiten\r', 3226),
(2853, 'Ins\r', 3232),
(2854, 'Tschugg\r', 3233),
(2855, 'Vinelz\r', 3234),
(2856, 'Erlach\r', 3235),
(2857, 'Gampelen\r', 3236),
(2858, 'Br?ttelen\r', 3237),
(2859, 'Gals\r', 3238),
(2860, 'Lyss\r', 3250),
(2861, 'Ruppoldsried\r', 3251),
(2862, 'Wengi b. B?ren\r', 3251),
(2863, 'Worben\r', 3252),
(2864, 'Schnottwil\r', 3253),
(2865, 'Balm b. Messen\r', 3254),
(2866, 'Messen\r', 3254),
(2867, 'Rapperswil BE\r', 3255),
(2868, 'Dieterswil\r', 3256),
(2869, 'Bangerten b. Dieterswil\r', 3256),
(2870, 'Seewil\r', 3256),
(2871, 'Ammerzwil BE\r', 3257),
(2872, 'Grossaffoltern\r', 3257),
(2873, 'Suberg\r', 3262),
(2874, 'B?etigen\r', 3263),
(2875, 'Diessbach b. B?ren\r', 3264),
(2876, 'Wiler b. Seedorf\r', 3266),
(2877, 'Seedorf BE\r', 3267),
(2878, 'Lobsigen\r', 3268),
(2879, 'Aarberg\r', 3270),
(2880, 'Radelfingen b. Aarberg\r', 3271),
(2881, 'Epsach\r', 3272),
(2882, 'Walperswil\r', 3272),
(2883, 'Kappelen\r', 3273),
(2884, 'Hermrigen\r', 3274),
(2885, 'B?hl b. Aarberg\r', 3274),
(2886, 'Merzligen\r', 3274),
(2887, 'Meyriez\r', 3280),
(2888, 'Greng\r', 3280),
(2889, 'Murten\r', 3280),
(2890, 'Bargen BE\r', 3282),
(2891, 'Niederried b. Kallnach\r', 3283),
(2892, 'Kallnach\r', 3283),
(2893, 'Fr?schels\r', 3284),
(2894, 'Galmiz\r', 3285),
(2895, 'Muntelier\r', 3286),
(2896, 'Busswil b. B?ren\r', 3292),
(2897, 'Dotzigen\r', 3293),
(2898, 'Meienried\r', 3294),
(2899, 'B?ren an der Aare\r', 3294),
(2900, 'R?ti b. B?ren\r', 3295),
(2901, 'Arch\r', 3296),
(2902, 'Leuzigen\r', 3297),
(2903, 'Oberwil b. B?ren\r', 3298),
(2904, 'Moosseedorf\r', 3302),
(2905, 'Zuzwil BE\r', 3303),
(2906, 'Ballmoos\r', 3303),
(2907, 'M?nchringen\r', 3303),
(2908, 'Jegenstorf\r', 3303),
(2909, 'Iffwil\r', 3305),
(2910, 'Scheunen\r', 3305),
(2911, 'Etzelkofen\r', 3306),
(2912, 'Brunnenthal\r', 3307),
(2913, 'Grafenried\r', 3308),
(2914, 'Kernenried\r', 3309),
(2915, 'Zauggenried\r', 3309),
(2916, 'Fraubrunnen\r', 3312),
(2917, 'B?ren zum Hof\r', 3313),
(2918, 'Schalunen\r', 3314),
(2919, 'Kr?iligen\r', 3315),
(2920, 'B?tterkinden\r', 3315),
(2921, 'Limpach\r', 3317),
(2922, 'M?lchi\r', 3317),
(2923, 'Mattstetten\r', 3322),
(2924, 'Urtenen-Sch?nb?hl\r', 3322),
(2925, 'B?riswil BE\r', 3323),
(2926, 'M?tschwil\r', 3324),
(2927, 'Hindelbank\r', 3324),
(2928, 'Hettiswil b. Hindelbank\r', 3325),
(2929, 'Krauchthal\r', 3326),
(2930, 'Herzogenbuchsee\r', 3360),
(2931, 'Nieder?nz\r', 3362),
(2932, 'Ober?nz\r', 3363),
(2933, 'Seeberg\r', 3365),
(2934, 'Grasswil\r', 3365),
(2935, 'Bettenhausen\r', 3366),
(2936, 'Bollodingen\r', 3366),
(2937, 'Ochlenberg\r', 3367),
(2938, 'Th?rigen\r', 3367),
(2939, 'Bleienbach\r', 3368),
(2940, 'Wanzwil\r', 3372),
(2941, 'Heimenhausen\r', 3373),
(2942, 'R?thenbach Herzogenbuchsee\r', 3373),
(2943, 'Wangenried\r', 3374),
(2944, 'Inkwil\r', 3375),
(2945, 'Graben\r', 3376),
(2946, 'Berken\r', 3376),
(2947, 'Walliswil b. Wangen\r', 3377),
(2948, 'Walliswil b. Niederbipp\r', 3380),
(2949, 'Wangen an der Aare\r', 3380),
(2950, 'Burgdorf\r', 3400),
(2951, 'Heimiswil\r', 3412),
(2952, 'Kaltacker\r', 3413),
(2953, 'Oberburg\r', 3414),
(2954, 'Schafhausen im Emmental\r', 3415),
(2955, 'R?egsauschachen\r', 3415),
(2956, 'Hasle b. Burgdorf\r', 3415),
(2957, 'Affoltern im Emmental\r', 3416),
(2958, 'R?egsau\r', 3417),
(2959, 'R?egsbach\r', 3418),
(2960, 'Biembach im Emmental\r', 3419),
(2961, 'R?ti b. Lyssach\r', 3421),
(2962, 'Lyssach\r', 3421),
(2963, 'R?dtligen\r', 3422),
(2964, 'Alchenfl?h\r', 3422),
(2965, 'Kirchberg BE\r', 3422),
(2966, 'Ersigen\r', 3423),
(2967, 'Nieder?sch\r', 3424),
(2968, 'Ober?sch\r', 3424),
(2969, 'Willadingen\r', 3425),
(2970, 'Koppigen\r', 3425),
(2971, 'Aefligen\r', 3426),
(2972, 'Utzenstorf\r', 3427),
(2973, 'Wiler b. Utzenstorf\r', 3428),
(2974, 'Hellsau\r', 3429),
(2975, 'H?chstetten\r', 3429),
(2976, 'L?tzelfl?h-Goldbach\r', 3432),
(2977, 'Schwanden im Emmental\r', 3433),
(2978, 'Obergoldbach\r', 3434),
(2979, 'Ramsei\r', 3435),
(2980, 'Zollbr?ck\r', 3436),
(2981, 'R?derswil\r', 3437),
(2982, 'Lauperswil\r', 3438),
(2983, 'Ranfl?h\r', 3439),
(2984, 'Gr?nenmatt\r', 3452),
(2985, 'Heimisbach\r', 3453),
(2986, 'Sumiswald\r', 3454),
(2987, 'Gr?nen\r', 3455),
(2988, 'Trachselwald\r', 3456),
(2989, 'Wasen im Emmental\r', 3457),
(2990, 'Weier im Emmental\r', 3462),
(2991, 'H?usernmoos im Emmental\r', 3463),
(2992, 'Schmidigen-M?hleweg\r', 3464),
(2993, 'D?rrenroth\r', 3465),
(2994, 'Rumendingen\r', 3472),
(2995, 'Wynigen\r', 3472),
(2996, 'Alchenstorf\r', 3473),
(2997, 'R?edisbach\r', 3474),
(2998, 'Riedtwil\r', 3475),
(2999, 'Hermiswil\r', 3475),
(3000, 'Oschwand\r', 3476),
(3001, 'Gysenstein\r', 3503),
(3002, 'Niederh?nigen\r', 3504),
(3003, 'Oberh?nigen\r', 3504),
(3004, 'Grossh?chstetten\r', 3506),
(3005, 'Biglen\r', 3507),
(3006, 'Arni BE\r', 3508),
(3007, 'Freimettigen\r', 3510),
(3008, 'H?utligen\r', 3510),
(3009, 'Konolfingen\r', 3510),
(3010, 'Walkringen\r', 3512),
(3011, 'Bigenthal\r', 3513),
(3012, 'Oberthal\r', 3531),
(3013, 'Mirchel\r', 3532),
(3014, 'Z?ziwil\r', 3532),
(3015, 'Bowil\r', 3533),
(3016, 'Signau\r', 3534),
(3017, 'Sch?pbach\r', 3535),
(3018, 'Aeschau\r', 3536),
(3019, 'Eggiwil\r', 3537),
(3020, 'R?thenbach im Emmental\r', 3538),
(3021, 'Emmenmatt\r', 3543),
(3022, 'Langnau im Emmental\r', 3550),
(3023, 'Oberfrittenbach\r', 3551),
(3024, 'B?rau\r', 3552),
(3025, 'Gohl\r', 3553),
(3026, 'Trubschachen\r', 3555),
(3027, 'Trub\r', 3556),
(3028, 'Fankhaus (Trub)\r', 3557),
(3029, 'Thun\r', 3600),
(3030, 'Thun\r', 3603),
(3031, 'Thun\r', 3604),
(3032, 'Thun\r', 3608),
(3033, 'Steffisburg\r', 3612),
(3034, 'Steffisburg\r', 3613),
(3035, 'Unterlangenegg\r', 3614),
(3036, 'Heimenschwand\r', 3615),
(3037, 'Schwarzenegg\r', 3616),
(3038, 'Fahrni b. Thun\r', 3617),
(3039, 'S?deren\r', 3618),
(3040, 'Eriz\r', 3619),
(3041, 'Innereriz\r', 3619),
(3042, 'Homberg b. Thun\r', 3622),
(3043, 'Teuffenthal b. Thun\r', 3623),
(3044, 'Horrenbach\r', 3623),
(3045, 'Buchen BE\r', 3623),
(3046, 'Schwendibach\r', 3624),
(3047, 'Goldiwil (Thun)\r', 3624),
(3048, 'Heiligenschwendi\r', 3625),
(3049, 'H?nibach\r', 3626),
(3050, 'Heimberg\r', 3627),
(3051, 'Kienersr?ti\r', 3628),
(3052, 'Uttigen\r', 3628),
(3053, 'Oppligen\r', 3629),
(3054, 'Jaberg\r', 3629),
(3055, 'Kiesen\r', 3629),
(3056, 'H?fen b. Thun\r', 3631),
(3057, 'Niederstocken\r', 3632),
(3058, 'Oberstocken\r', 3632),
(3059, 'Amsoldingen\r', 3633),
(3060, 'Thierachern\r', 3634),
(3061, 'Uebeschi\r', 3635),
(3062, 'L?ngenb?hl\r', 3636),
(3063, 'Forst b. L?ngenb?hl\r', 3636),
(3064, 'Pohlern\r', 3638),
(3065, 'Blumenstein\r', 3638),
(3066, 'Gwatt (Thun)\r', 3645),
(3067, 'Zwieselberg\r', 3645),
(3068, 'Einigen\r', 3646),
(3069, 'Reutigen\r', 3647),
(3070, 'Hilterfingen\r', 3652),
(3071, 'Oberhofen am Thunersee\r', 3653),
(3072, 'Gunten\r', 3654),
(3073, 'Sigriswil\r', 3655),
(3074, 'Tschingel ob Gunten\r', 3656),
(3075, 'Aeschlen ob Gunten\r', 3656),
(3076, 'Ringoldswil\r', 3656),
(3077, 'Schwanden (Sigriswil)\r', 3657),
(3078, 'Merligen\r', 3658),
(3079, 'Uetendorf\r', 3661),
(3080, 'Seftigen\r', 3662),
(3081, 'Gurzelen\r', 3663),
(3082, 'Burgistein\r', 3664),
(3083, 'Wattenwil\r', 3665),
(3084, 'Herbligen\r', 3671),
(3085, 'Brenzikofen\r', 3671),
(3086, 'Aeschlen b. Oberdiessbach\r', 3672),
(3087, 'Oberdiessbach\r', 3672),
(3088, 'Linden\r', 3673),
(3089, 'Bleiken b. Oberdiessbach\r', 3674),
(3090, 'Spiez\r', 3700),
(3091, 'Hondrich\r', 3702),
(3092, 'Aeschiried\r', 3703),
(3093, 'Aeschi b. Spiez\r', 3703),
(3094, 'Krattigen\r', 3704),
(3095, 'Faulensee\r', 3705),
(3096, 'Leissigen\r', 3706),
(3097, 'D?rligen\r', 3707),
(3098, 'Emdthal\r', 3711),
(3099, 'M?lenen\r', 3711),
(3100, 'Reichenbach im Kandertal\r', 3713),
(3101, 'Wengi b. Frutigen\r', 3714),
(3102, 'Frutigen\r', 3714),
(3103, 'Adelboden\r', 3715),
(3104, 'Kandergrund\r', 3716),
(3105, 'Blausee-Mitholz\r', 3717),
(3106, 'Kandersteg\r', 3718),
(3107, 'Scharnachtal\r', 3722),
(3108, 'Kiental\r', 3723),
(3109, 'Ried (Frutigen)\r', 3724),
(3110, 'Achseten\r', 3725),
(3111, 'Wimmis\r', 3752),
(3112, 'Oey\r', 3753),
(3113, 'Diemtigen\r', 3754),
(3114, 'Horboden\r', 3755),
(3115, 'Zwischenfl?h\r', 3756),
(3116, 'Schwenden im Diemtigtal\r', 3757),
(3117, 'Latterbach\r', 3758),
(3118, 'Erlenbach im Simmental\r', 3762),
(3119, 'D?rstetten\r', 3763),
(3120, 'Weissenburg\r', 3764),
(3121, 'Oberwil im Simmental\r', 3765),
(3122, 'Boltigen\r', 3766),
(3123, 'Zweisimmen\r', 3770),
(3124, 'Blankenburg\r', 3771),
(3125, 'St. Stephan\r', 3772),
(3126, 'Matten (St. Stephan)\r', 3773),
(3127, 'Lenk im Simmental\r', 3775),
(3128, 'Oeschseite\r', 3776),
(3129, 'Saanenm?ser\r', 3777),
(3130, 'Sch?nried\r', 3778),
(3131, 'Gstaad\r', 3780),
(3132, 'Turbach\r', 3781),
(3133, 'Lauenen b. Gstaad\r', 3782),
(3134, 'Grund b. Gstaad\r', 3783),
(3135, 'Feutersoey\r', 3784),
(3136, 'Gsteig b. Gstaad\r', 3785),
(3137, 'Saanen\r', 3792),
(3138, 'Sundlauenen\r', 3800),
(3139, 'Interlaken\r', 3800),
(3140, 'Unterseen\r', 3800),
(3141, 'Matten b. Interlaken\r', 3800),
(3142, 'Jungfraujoch\r', 3801),
(3143, 'Beatenberg\r', 3803),
(3144, 'Habkern\r', 3804),
(3145, 'Goldswil b. Interlaken\r', 3805),
(3146, 'B?nigen b. Interlaken\r', 3806),
(3147, 'Iseltwald\r', 3807),
(3148, 'Wilderswil\r', 3812),
(3149, 'Saxeten\r', 3813),
(3150, 'Gsteigwiler\r', 3814),
(3151, 'Zweil?tschinen\r', 3815),
(3152, 'G?ndlischwand\r', 3815),
(3153, 'L?tschental\r', 3816),
(3154, 'Burglauenen\r', 3816),
(3155, 'Grindelwald\r', 3818),
(3156, 'Isenfluh\r', 3822),
(3157, 'Lauterbrunnen\r', 3822),
(3158, 'Kleine Scheidegg\r', 3823),
(3159, 'Eigergletscher\r', 3823),
(3160, 'Wengen\r', 3823),
(3161, 'Stechelberg\r', 3824),
(3162, 'M?rren\r', 3825),
(3163, 'Gimmelwald\r', 3826),
(3164, 'Ringgenberg BE\r', 3852),
(3165, 'Niederried b. Interlaken\r', 3853),
(3166, 'Oberried am Brienzersee\r', 3854),
(3167, 'Schwanden b. Brienz\r', 3855),
(3168, 'Brienz BE\r', 3855),
(3169, 'Axalp\r', 3855),
(3170, 'Brienzwiler\r', 3856),
(3171, 'Unterbach BE\r', 3857),
(3172, 'Hofstetten b. Brienz\r', 3858),
(3173, 'Rosenlaui\r', 3860),
(3174, 'Schattenhalb\r', 3860),
(3175, 'Meiringen\r', 3860),
(3176, 'Br?nig\r', 3860),
(3177, 'Innertkirchen\r', 3862),
(3178, 'Gadmen\r', 3863),
(3179, 'Guttannen\r', 3864);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `post`
--

CREATE TABLE `post` (
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `imgurl` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ort_id` int(11) NOT NULL,
  `rateadd` int(11) NOT NULL,
  `ratermv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(3, 'MischuNR', 'email@email.com', '63f8a1093530c4ba4749e8a957c9a9f318c86bdc', 0),
(4, 'MischuNR1', 'meh@meh.ch', '8cb2237d0679ca88db6464eac60da96345513964', 0);

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
  ADD PRIMARY KEY (`oid`);

--
-- Indizes für die Tabelle `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `FK_post_user` (`user_id`),
  ADD KEY `FK_post_ort` (`ort_id`);

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
-- AUTO_INCREMENT für Tabelle `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `ort`
--
ALTER TABLE `ort`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3180;

--
-- AUTO_INCREMENT für Tabelle `post`
--
ALTER TABLE `post`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `tags`
--
ALTER TABLE `tags`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_post_ort` FOREIGN KEY (`ort_id`) REFERENCES `ort` (`oid`),
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
