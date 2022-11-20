import 'package:flutter/material.dart';
import 'package:ukraine_music/revol.dart';
import 'package:ukraine_music/independence.dart';
import 'package:ukraine_music/orange_rev.dart';
import 'package:ukraine_music/war.dart';
import 'package:ukraine_music/more_music.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Українська музика"),
        backgroundColor: Colors.blue,
      ),

      body: GridView.count(
        scrollDirection: Axis.vertical,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        crossAxisCount: 2,
        children: <Widget>[
        ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Independence(),
                  ),
                );
              },
            style: ElevatedButton.styleFrom(
              // side: BorderSide(width:3, color:Colors.brown),
              backgroundColor: Colors.blue, // background (button) color
              foregroundColor: Colors.black, // foreground (text) color
            ),
              child: Text("Незалежність")
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const OrangeRevolution(),
                ),
              );
            },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // background (button) color
                foregroundColor: Colors.black, // foreground (text) color
              ),
            child: Text("Помаранчева революція")
        ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RevolutionOfDignity(),
                  ),
                );
              },
              child: Text("Революція Гідності"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow, // background (button) color
                foregroundColor: Colors.black, // foreground (text) color
              ),
        ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const WarOurTime(),
                  ),
                );
              },
              child: Text("Війна 2022"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow, // background (button) color
                foregroundColor: Colors.black, // foreground (text) color
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const More(),
            ),
          );
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.arrow_circle_right),

      ),
    );
  }
}