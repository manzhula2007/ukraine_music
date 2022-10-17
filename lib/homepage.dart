import 'package:flutter/material.dart';
import 'package:ukraine_music/ind_o_rev.dart';
import 'package:ukraine_music/prerequisite.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Українська музика з Незалежності"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Prerequisite(),
                  ),
                );
              },
              child: Text("Що було до незалежності")
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const IndepOrangeRev(),
                  ),
                );
          },
              child: Text("Українська музика з початку незалежності(1991) - помаранчева революція(2004)")
          ),
        ],
      ),
    );
  }
}
