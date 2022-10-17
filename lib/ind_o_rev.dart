import 'package:flutter/material.dart';
import "package:ukraine_music/homepage.dart";

class IndepOrangeRev extends StatelessWidget {
  const IndepOrangeRev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Українська музика з часів незалежності до помаранчевої революції"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(left: 100, top: 10,)),
          Text("Україна проголосила незалежність у 1991 році. Що в цей час відбувалося в музичному плані? З 1980-х існувала ідейна організація 'Рок-Артель', яка об’єднувала три основних гурти: ВВ (Воплі Відоплясова), Коллежский Асессор і Раббота Хо.Два останніх грали доволі авангардні композиції, які дуже умовно можна було віднести до 'рок-музики', і радше тяжіли до експериментальної хвилі зарубіжних 60-х. Аудиторія в них була не дуже великою і складалася переважно з поціновувачів. А от ВВ дуже швидко віднайшли власний етно-панковий стиль — і в 90-х вирушили з концертами до Європи, де й залишилися на кілька років."),
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

        child: Icon(Icons.home),
      ),
    );
  }
}
