import 'package:flutter/material.dart';
import 'package:ukraine_music/homepage.dart';

String text_war = "Від початку війни все більше українців відмовляються від російської мови, а також фільмів та музики.\n"
    "Раніше російськомовні пісні і композиції російських музикантів регулярно транслювалися на українських медійних платформах, однак після 24 лютого наш народ як 'відрізало' від російської творчості. В народі це називають 'музичною дерусифікацією'"
    "";

class WarOurTime extends StatelessWidget {
  const WarOurTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Війна 2022"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(""),
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
