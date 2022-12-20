import 'package:flutter/material.dart';
import 'package:ukraine_music/history_of_music/homepage_history.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// хіт-парад 'Територія А'
String text_indep = "Українська культура з незалежністю почала стрімко набирати нових обертів, всотуючи максимум віянь із раніше недоступного західного мейнстриму. Світові тренди 90-х стали нарешті відкритими для колишньої радянської республіки й швидко ширилися в українській моді та музиці.\n"
    "Шоу-бізу як такого в Україні 90-х не існувало. Окремі виконавці та музичні колективи творили в умовах 'якщо пощастить, то хтось це почує'. Поширювати музику за відсутності тематичних телепрограм, радіостанцій було надто складною й часто невдячною справою. Але в 1995 році такий спосіб зʼявився, коли журналіст і письменник Олександр Бригинець запустив на каналі ICTV програму-експеримент 'Територія А'.\n"
    "'Територія А' була створена як музичний хіт-парад для молодих виконавців. У рамках програми шукали цікавих артистів нової хвилі, знімали їм дешевенькі кліпи й одразу ставили в ефір. Формат швидко набув популярності та став обовʼязковим для перегляду в української молоді, яка прагнула пізнавати якомога більше нових музичних трендів. "
    "Тоді в Україні тільки-тільки почала поширюватись електронна танцювальна музика, тож велика частина пісень хіт-параду 'Території А' була українським баченням техно та євроденсу. Серед першопрохідців  жанру були 'Аква Віта', 'Фантом-2', 'Турбо-Техно-Саунд', 'Ван Гог' та Юрко Юрченко.\n";

// String text_indep_two = "Авжеж, не можна сказати, що артисти «Території А» працювали у схожих жанрах. Олександр Пономарьов вдавав із себе такого собі Стінга — інтелігентного й чутливого хлопчину, який, може, і не носить шкіряну куртку, але точно знає, що там у жінки на душі. \nГурт Скрябін взагалі створював свій мікрокосмос, поєднуючи любов до закордонних музичних трендів 80-х (синт-поп, постпанк, «нова хвиля») з глибокими, абстрактними й афористичними текстами.";


class Independence extends StatefulWidget {
  const Independence({Key? key}) : super(key: key);

  @override
  State<Independence> createState() => _IndependenceState();
}

class _IndependenceState extends State<Independence> {

  final videoURL = "https://www.youtube.com/watch?v=YMx8Bbev6T4";
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
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Homepage(),
              ),
            );
          },
          style: TextButton.styleFrom(
            side: BorderSide(width:1, color:Colors.black45),
            backgroundColor: Colors.yellow, // background (button) color
            foregroundColor: Colors.blue, // foreground (text) color
          ),
          child: Icon(Icons.home),
        ),
        title: Text("Незалежність"),
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.blue,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                    child: Text(text_indep, style: TextStyle(fontSize: 15),),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(2, 0, 2, 2),
                      child: YoutubePlayer(
                        controller: _controller,
                        showVideoProgressIndicator: true,
                      ),
                  ),
                  // Padding(
                  //     padding: EdgeInsets.fromLTRB(5, 5, 5, 60),
                  //   child: Text(text_indep_two),
                  // )
                ],
              );
          },
          separatorBuilder: (context, _) => const SizedBox(height: 10.0),
          itemCount: 1
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.of(context).push(
      //       MaterialPageRoute(
      //         builder: (context) => const Homepage(),
      //       ),
      //     );
      //   },
      //   backgroundColor: Colors.yellow,
      //   child: Icon(Icons.home),
      // ),
      // backgroundColor: Colors.grey,
    );
  }
}

// class Independence extends StatelessWidget {
//   const Independence({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Незалежність"),
//         backgroundColor: Colors.orangeAccent,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: EdgeInsets.fromLTRB(0,10,0,0),
//                 child: Text("Хіт-парад 'Теориторія А'"),
//               ),
//             ],
//           ),
//           Padding(
//             padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
//             child: Text(text_indep),
//           ),
//           TextButton(
//               onPressed: () {
//                 Navigator.of(context).push(
//                   // TurnPageRoute(
//                   //   builder: (context) => const FirstPage(),
//                   // ),
//                   MaterialPageRoute(
//                     builder: (context) => const IndependencePageTwo(),
//                   ),
//                 );
//               },
//               child: Text("Наступна сторінка")
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.of(context).push(
//             MaterialPageRoute(
//               builder: (context) => const Homepage(),
//             ),
//           );
//         },
//         backgroundColor: Colors.orangeAccent,
//         child: Icon(Icons.home),
//
//       ),
//     );
//   }
// }
//
//
// class IndependencePageTwo extends StatelessWidget {
//   const IndependencePageTwo({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("2 сторінка"),
//         backgroundColor: Colors.orangeAccent,
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(10),
//             // child: Text(text_indep_two),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               TextButton(
//                   onPressed: () {
//                     Navigator.of(context).push(
//                       // TurnPageRoute(
//                       //   builder: (context) => const FirstPage(),
//                       // ),
//                       MaterialPageRoute(
//                         builder: (context) => const Independence(),
//                       ),
//                     );
//                   },
//                   child: Text("Назад")
//               ),
//               TextButton(
//                   onPressed: () {
//                     Navigator.of(context).push(
//                       // TurnPageRoute(
//                       //   builder: (context) => const FirstPage(),
//                       // ),
//                       MaterialPageRoute(
//                         builder: (context) => const YoutubeIndep(),
//                       ),
//                     );
//                   },
//                   child: Text("Дивитись відео")
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
// class YoutubeIndep extends StatefulWidget {
//   const YoutubeIndep({Key? key}) : super(key: key);
//
//   @override
//   State<YoutubeIndep> createState() => _YoutubeIndepState();
// }
//
// class _YoutubeIndepState extends State<YoutubeIndep> {
//
//   final videoURL = "https://www.youtube.com/watch?v=MMqIzOiqo8U";
//   late YoutubePlayerController _controller;
//
//   @override
//   void initState() {
//     final videoID = YoutubePlayer.convertUrlToId(videoURL);
//     _controller = YoutubePlayerController(
//         initialVideoId: videoID!,
//         flags: const YoutubePlayerFlags(
//           autoPlay: false,
//         )
//     );
//
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Територія А"),),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           YoutubePlayer(
//             controller: _controller,
//             showVideoProgressIndicator: true,
//           ),
//
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.of(context).push(
//             MaterialPageRoute(
//               builder: (context) => const Homepage(),
//             ),
//           );
//         },
//         backgroundColor: Colors.orangeAccent,
//         child: Icon(Icons.home),
//       ),
//     );
//   }
// }



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