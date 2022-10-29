import 'package:flutter/material.dart';
import 'package:ukraine_music/homepage.dart';

String info_text = "Цей додаток розповідає про українську музику з 90-х(початку незалежності). Розповідь поділена на 4 пункти."
    "Після кожного тексту ви можете продивитися відео.";

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Що робить цей додаток"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(info_text),
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
