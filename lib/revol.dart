import 'package:flutter/material.dart';
import "package:ukraine_music/homepage.dart";
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

String text_rev = "Як ми всі знаємо, у 2014 році відбувся Євромайдан.\nЯк ця подія вплинула на українську музику?\n"
    "Коли починався другий Майдан, здавалося, що, як і в перший раз, все пройде мирно, а ностальгічних пісень 2004-го для протестуючих буде цілком достатньо. Але 'не так сталося, як гадалося'. Всі карти сплутала пролита кров. Змінилися настрої, змінилися люди, змінилися пісні, змінився місто, змінилася країна. Єдине, чим ми могли відповісти пропаганді, яка обливала протестувальників брудом - це пісні. І знову артисти були з народом. Їх музика зігрівала в морозні ночі, об'єднувала і надихала людей, допомагала знайти сенс в тому, що відбувається.\n"
    "Головною піснею на Євромайдані звичайно ж став Державний Гімн України.";

String text_rev_two = "Ось ще деякі пісні, які вважають найпопулярнішими під час Революції Гідності: ";

class RevolutionOfDignity extends StatefulWidget {
  const RevolutionOfDignity({Key? key}) : super(key: key);

  @override
  State<RevolutionOfDignity> createState() => _RevolutionOfDignityState();
}

class _RevolutionOfDignityState extends State<RevolutionOfDignity> {

  final videoURL = "https://www.youtube.com/watch?v=Wx7vo__48oE";

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
        title: Text("Революція гідності"),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(text_rev),
                  ),
                  YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Text(text_rev_two),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const RevolutionOfDignityTwo(),
                                ),
                              );
                            },
                            child: Text("Дивитись"),


                      ),
                      ),],
                      ),
              ],);
          },
                separatorBuilder: (context, _) => const SizedBox(height: 10.0),
                itemCount: 1
      ),
      // body: Column(
      //   children: [
      //     Padding(
      //       padding: EdgeInsets.all(10),
      //       child: Text(text_rev),
      //     ),
      //     YoutubePlayer(
      //       controller: _controller,
      //       showVideoProgressIndicator: true,
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(10),
      //       child: Text(text_rev),
      //     ),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Padding(
      //             padding: EdgeInsets.fromLTRB(10, 2, 5, 5),
      //             child: TextButton(
      //               onPressed: () {
      //                 Navigator.of(context).push(
      //                   MaterialPageRoute(
      //                     builder: (context) => const RevolutionOfDignityTwo(),
      //                   ),
      //                 );
      //               },
      //               child: Text("Дивитись"),
      //             ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const Homepage(),
            ),
          );
        },
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.home),
      ),
    );
  }
}



class RevolutionOfDignityTwo extends StatefulWidget {
  const RevolutionOfDignityTwo({Key? key}) : super(key: key);

  @override
  State<RevolutionOfDignityTwo> createState() => _RevolutionOfDignityTwoState();
}

class _RevolutionOfDignityTwoState extends State<RevolutionOfDignityTwo> {
  final List<YoutubePlayerController> _controllers = [
    "8SqTaE4-5a4",
    "BQK2RDd7OVo",
    "D8HqRH5cHPo",
    "k5JA9167t8k",
    "C-V_MU2eMF4",
    "KD3V1Umo73k",
    "6TEA0zzIrCk",
    "cGwEBN1dGFQ",
  ].map<YoutubePlayerController>(
        (videoId) =>
        YoutubePlayerController(
          initialVideoId: videoId,
          flags: const YoutubePlayerFlags(
            autoPlay: false,
          ),
        ),
  )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Пісні'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Column(
              children: [
                YoutubePlayer(
                  key: ObjectKey(_controllers[index]),
                  controller: _controllers[index],
                  actionsPadding: const EdgeInsets.only(left: 16.0),
                  bottomActions: [
                    CurrentPosition(),
                    const SizedBox(width: 10.0),
                    ProgressBar(isExpanded: true),
                    const SizedBox(width: 10.0),
                    RemainingDuration(),
                    FullScreenButton(),
                  ],
                ),
              ],
            );
          },
          separatorBuilder: (context, _) => const SizedBox(height: 10.0),
          itemCount: _controllers.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const RevolutionOfDignity(),
            ),
          );
        },
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.arrow_circle_left),

      ),
    );
  }
}
