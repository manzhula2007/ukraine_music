import 'package:flutter/material.dart';
import "package:ukraine_music/homepage.dart";

String text_ind = "Україна проголосила незалежність у 1991 році. Що в цей час відбувалося в музичному плані? З 1980-х існувала ідейна організація 'Рок-Артель', яка об’єднувала три основних гурти: ВВ (Воплі Відоплясова), Коллежский Асессор і Раббота Хо. Два останніх грали доволі авангардні композиції, які дуже умовно можна було віднести до 'рок-музики', і радше тяжіли до експериментальної хвилі зарубіжних 60-х. Аудиторія в них була не дуже великою і складалася переважно з поціновувачів. А от ВВ дуже швидко віднайшли власний етно-панковий стиль — і в 90-х вирушили з концертами до Європи, де й залишилися на кілька років.";


class IndepOrangeRev extends StatelessWidget {
  const IndepOrangeRev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1991-2014"),
        backgroundColor: Colors.orangeAccent,
      ),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(text_ind),
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
