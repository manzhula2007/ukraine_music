import 'package:flutter/material.dart';
import 'package:ukraine_music/history_of_music/homepage_history.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

String text_war = "Від початку війни все більше українців відмовляються від російської мови, а також фільмів та музики.\n"
    "Раніше російськомовні пісні і композиції російських музикантів регулярно транслювалися на українських медійних платформах, однак після 24 лютого наш народ як 'відрізало' від російської творчості.\n"
    "Народ частіше став слухати рідну музику, розмовляти рідною мовою.\n"
    "Ось пісні, які 'вистрельнули' в українському суспільстві: \n"
    "\n"
    "Співак 'Бумбокс' Андрій Хливнюк зняв відео, як він в військовій формі співає 'Ой у лузі червона калина':";

List list_war = [
  text_war,
  "Потім на цю пісню випустили ремікс, там де всі українські співаки разом з ним співають цю пісню:",
  "Потім знаменита група 'Pink Floyd' випустила пісню 'Hey Hey Rise Up', де замість вокаліста пісдтавили Хливнюка:",
  "У 2022 році відбувся музичний конкурс Євробачення, в якому гурт 'Kalush Orchestra' зайняв перше місце з піснею 'Stefania':",
  "Український хіп-хоп гурт 'Chico & Qatoshi' випустив пісню 'Допоможе ЗСУ':",
  "Маша кондратенко - Ванька Встанька:",
  "Макс Барських - Буде весна:",
  "Гурт 'Океан Ельзи' присвятив пісню 'Місто Марії' захисникам Маріуполя:",
  "PROBASS ∆ HARDI - Доброго Вечора"
];

class WarOurTime extends StatefulWidget {
  const WarOurTime({Key? key}) : super(key: key);

  @override
  State<WarOurTime> createState() => _WarOurTimeState();
}

class _WarOurTimeState extends State<WarOurTime> {

  final List<YoutubePlayerController> _controllers = [
    "SCGhRdgtidM",
    "EV_vT0Vud5Q",
    "saEpkcVi1d4",
    "Z8Z51no1TD0",
    "B7BkkiytsKY",
    "lV9q901vS6o",
    "RMO0xQdnfBI",
    "_XgWdxyBmB4",
    "BvgNgTPTkSo"
  ].map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    ),
  ).toList();

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
            backgroundColor: Colors.red, // background (button) color
            foregroundColor: Colors.white, // foreground (text) color
          ),
          child: Icon(Icons.home),
        ),
        title: Text("Війна 2022"),
        backgroundColor: Colors.red,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 8, 10, 10),
                child: Text(list_war[index]),
              ),
              YoutubePlayer(
                controller: _controllers[index],
                showVideoProgressIndicator: true,
              )
            ],
          );
        },
        separatorBuilder: (context, _) => const SizedBox(height: 5.0),
        itemCount: list_war.length,
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.of(context).push(
      //       MaterialPageRoute(
      //         builder: (context) => const Homepage(),
      //       ),
      //     );
      //   },
      //   backgroundColor: Colors.red,
      //   child: Icon(Icons.home),
      // ),
    );
  }
}