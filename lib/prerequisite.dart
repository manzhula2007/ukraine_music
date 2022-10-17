import 'package:flutter/material.dart';
import "package:ukraine_music/homepage.dart";
import "package:ukraine_music/prerequisite.dart";

class Prerequisite extends StatelessWidget {
  const Prerequisite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Передумова"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(top: 10,)),
          Text(""),
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

        child: Text("На д/с"),
      ),
    );
  }
}
