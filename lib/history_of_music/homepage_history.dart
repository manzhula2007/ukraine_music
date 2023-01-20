import 'package:flutter/material.dart';
import 'package:ukraine_music/history_of_music/revol.dart';
import 'package:ukraine_music/history_of_music/independence.dart';
import 'package:ukraine_music/history_of_music/orange_rev.dart';
import 'package:ukraine_music/history_of_music/war.dart';
import 'package:ukraine_music/history_of_music/more_music.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: EdgeInsets.fromLTRB(40, 0, 0, 0)),Text("Українська музика")]),
        backgroundColor: Colors.blue,
        leading: Text(""),
      ),
      body: GridView.count(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(20),
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        crossAxisCount: 2,
        children: [
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
          ),
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
        // backgroundColor: Colors.blueAccent,
        // child: Icon(Icons.supervised_user_circle),
        backgroundColor: Colors.green,
        child: Icon(Icons.arrow_circle_right),
      ),
      // backgroundColor: Colors.,
    );
  }
}



































// drawer: Drawer(
//   child: ListView(
//     children: [
//       SizedBox(
//         height: 63.55,
//         child: DrawerHeader(
//           decoration: BoxDecoration(
//             color: Colors.blue,
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Меню",
//                 style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ],
//   ),
// ),