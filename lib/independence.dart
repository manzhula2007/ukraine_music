import 'package:flutter/material.dart';
import "package:ukraine_music/homepage.dart";
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// String text_indep = "Україна проголосила незалежність у 1991 році. Що в цей час відбувалося в музичному плані? З 1980-х існувала ідейна організація 'Рок-Артель', яка об’єднувала три основних гурти: ВВ (Воплі Відоплясова), Коллежский Асессор і Раббота Хо."
//         "Два останніх грали доволі авангардні композиції, які дуже умовно можна було віднести до 'рок-музики', і радше тяжіли до експериментальної хвилі зарубіжних 60-х. Аудиторія в них була не дуже великою і складалася переважно з поціновувачів. А от ВВ дуже швидко віднайшли власний етно-панковий стиль — і в 90-х вирушили з концертами до Європи, де й залишилися на кілька років."
//         "Мабуть, першою поп-зіркою незалежної України можна вважати співачку Русю (Ірину Осауленко). Цікаво, що музична кар’єра Ірини почалась наприкінці 80-х — майже одночасно з кар’єрою її молодшої сестри Наташі, яку широкий загал знає як Наташу Корольову. Виконавиця від самого початку обрала 'російський шлях', хоч і народилась у Києві."
//         "А от Ірина познайомилася з талановитим продюсером Костянтином Осауленко, який згодом став її чоловіком. Він і придумав проєкт Руся: така собі українська Мадонна, дівчина у світлому одязі з солодким голосом, яка співає чистою українською мовою під бадьорі синтезаторні ритми. Розрахунки Костянтина виявились вірними — і Руся стала головною музичною сенсацією 1990 року. А в наступному році вже збирала стадіони й великі зали у столиці та під час туру Західною Україною. Руся одержала титул головної співачки року за версією Національного хіт-параду."
//         "Далі починається історія кохання та співпраці співачки Ірини Білик і продюсера Юрія Нікітіна. Білик наприкінці 80-х виступає на 'Червоній руті' із гуртом 'Цей дощ надовго'.";

// хіт-парад 'Територія А'
String text_indep = "Українська культура з незалежністю почала стрімко набирати нових обертів, всотуючи максимум віянь із раніше недоступного західного мейнстриму. Світові тренди 90-х стали нарешті відкритими для колишньої радянської республіки й швидко ширилися в українській моді та музиці.\n"
    "Шоу-бізу як такого в Україні 90-х не існувало. Окремі виконавці та музичні колективи творили в умовах 'якщо пощастить, то хтось це почує'. Поширювати музику за відсутності тематичних телепрограм, радіостанцій було надто складною й часто невдячною справою. Але в 1995 році такий спосіб зʼявився, коли журналіст і письменник Олександр Бригинець запустив на каналі ICTV програму-експеримент 'Територія А'.\n"
    "'Територія А' була створена як музичний хіт-парад для молодих виконавців. У рамках програми шукали цікавих артистів нової хвилі, знімали їм дешевенькі кліпи й одразу ставили в ефір. Формат швидко набув популярності та став обовʼязковим для перегляду в української молоді, яка прагнула пізнавати якомога більше нових музичних трендів. "
    "Тоді в Україні тільки-тільки почала поширюватись електронна танцювальна музика, тож велика частина пісень хіт-параду 'Території А' була українським баченням техно та євроденсу. Серед першопрохідців  жанру були'«Аква Віта', 'Фантом-2', «'урбо-Техно-Саунд','Ван Гог' та Юрко Юрченко.\n";



String text_indep_two = "Авжеж, не можна сказати, що артисти «Території А» працювали у схожих жанрах. Олександр Пономарьов вдавав із себе такого собі Стінга — інтелігентного й чутливого хлопчину, який, може, і не носить шкіряну куртку, але точно знає, що там у жінки на душі. Гурт Скрябін взагалі створював свій мікрокосмос, поєднуючи любов до закордонних музичних трендів 80-х (синт-поп, постпанк, «нова хвиля») з глибокими, абстрактними й афористичними текстами.";

class Independence extends StatelessWidget {
  const Independence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Незалежність"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0,10,0,0),
                child: Text("Хіт-парад 'Теориторія А'"),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
            child: Text(text_indep),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  // TurnPageRoute(
                  //   builder: (context) => const FirstPage(),
                  // ),
                  MaterialPageRoute(
                    builder: (context) => const IndependencePageTwo(),
                  ),
                );
              },
              child: Text("Наступна сторінка")
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const Homepage(),
            ),
          );
        },
        backgroundColor: Colors.orangeAccent,
        child: Icon(Icons.home),

      ),
    );
  }
}


class IndependencePageTwo extends StatelessWidget {
  const IndependencePageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2 сторінка"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(text_indep_two),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      // TurnPageRoute(
                      //   builder: (context) => const FirstPage(),
                      // ),
                      MaterialPageRoute(
                        builder: (context) => const Independence(),
                      ),
                    );
                  },
                  child: Text("Назад")
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      // TurnPageRoute(
                      //   builder: (context) => const FirstPage(),
                      // ),
                      MaterialPageRoute(
                        builder: (context) => const YoutubeIndep(),
                      ),
                    );
                  },
                  child: Text("Дивитись відео")
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class YoutubeIndep extends StatefulWidget {
  const YoutubeIndep({Key? key}) : super(key: key);

  @override
  State<YoutubeIndep> createState() => _YoutubeIndepState();
}

class _YoutubeIndepState extends State<YoutubeIndep> {

  final videoURL = "https://www.youtube.com/watch?v=MMqIzOiqo8U";
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        )
    );

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Територія А"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const Homepage(),
            ),
          );
        },
        backgroundColor: Colors.orangeAccent,
        child: Icon(Icons.home),
      ),
    );
  }
}



// class YoutubePlayerExample extends StatefulWidget {
//   const YoutubePlayerExample({Key? key}) : super(key: key);
//
//   @override
//   State<YoutubePlayerExample> createState() => _YoutubePlayerExampleState();
// }
//
// class _YoutubePlayerExampleState extends State<YoutubePlayerExample> {
//
//   final videoURL = "https://www.youtube.com/watch?v=YMx8Bbev6T4";
//
//   late YoutubePlayerController _controller;
//
//   @override
//   void initState() {
//     final videoID = YoutubePlayer.convertUrlToId(videoURL);
//
//     _controller = YoutubePlayerController(
//       initialVideoId: videoID!,
//       flags: const YoutubePlayerFlags(
//         autoPlay: false,
//       )
//     );
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Youtube Player"),),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           YoutubePlayer(
//             controller: _controller,
//             showVideoProgressIndicator: true,
//           ),
//         ],
//       ),
//     );
//   }
// }