import 'package:flutter/material.dart';
import "package:ukraine_music/homepage.dart";

String text_rev = "Як ми всі знаємо, у 2014 році відбувся Євромайдан. Як ця подія вплинула на українську музику?\n"
    "Коли починався другий Майдан, здавалося, що, як і в перший раз, все пройде мирно, а ностальгічних пісень 2004-го для протестуючих буде цілком достатньо. Але 'не так сталося, як гадалося'. Всі карти сплутала пролита кров. Змінилися настрої, змінилися люди, змінилися пісні, змінився місто, змінилася країна. Єдине, чим ми могли відповісти пропаганді, обливающей протестувальників брудом - це пісні. І знову артисти були з народом. Їх музика зігрівала в морозні ночі, об'єднувала і надихала людей, допомагала знайти сенс в тому, що відбувається.\n"
    "Головною піснею на Євромайдані звичайно ж став Державний Гімн України";

class RevolutionOfDignity extends StatelessWidget {
  const RevolutionOfDignity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Революція гідності"),
        backgroundColor: Colors.orangeAccent,
      ),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(text_rev),
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