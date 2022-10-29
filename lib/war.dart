import 'package:flutter/material.dart';
import 'package:ukraine_music/homepage.dart';

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
