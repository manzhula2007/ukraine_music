import 'package:flutter/material.dart';
import 'package:ukraine_music/ind_o_rev.dart';
import 'package:ukraine_music/prerequisite.dart';
import 'package:ukraine_music/from_ind_to_ind.dart';
import 'package:ukraine_music/from_ind_to_our_time.dart';
import 'package:ukraine_music/information.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Українська музика з часів Незалежності"),
        backgroundColor: Colors.orangeAccent,
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
                    builder: (context) => const Prerequisite(),
                  ),
                );
              },
            style: ElevatedButton.styleFrom(
              // side: BorderSide(width:3, color:Colors.brown),
              backgroundColor: Colors.blue, // background (button) color
              foregroundColor: Colors.black, // foreground (text) color
            ),
              child: Text("Передумова")
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const IndepOrangeRev(),
                ),
              );
            },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // background (button) color
                foregroundColor: Colors.black, // foreground (text) color
              ),
            child: Text("Українська музика з початку незалежності(1991) - помаранчева революція(2004)")
        ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FromIndToInd(),
                  ),
                );
              },
              child: Text("2004 - 2014"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow, // background (button) color
                foregroundColor: Colors.black, // foreground (text) color
              ),
        ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FromIndToOurTime(),
                  ),
                );
              },
              child: Text("2014"),
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
              builder: (context) => const Information(),
            ),
          );
        },
        backgroundColor: Colors.orangeAccent,
        child: Icon(Icons.perm_device_information),

      ),
    );
  }
}