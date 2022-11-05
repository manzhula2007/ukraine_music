import 'package:flutter/material.dart';
import 'package:ukraine_music/homepage.dart';
String oragre_rev_text = "У 2004 році відбулась Помаранчева революція. Тоді Українське видавництво «Атлантик» спільно з Громадською організацією «Наша Україна» напередодні Католицького Різдва 2004 року видало збірку 'Пісні помаранчевого майдану'";


class OrangeRevolution extends StatefulWidget {
  const OrangeRevolution({Key? key}) : super(key: key);

  @override
  State<OrangeRevolution> createState() => _OrangeRevolutionState();
}

class _OrangeRevolutionState extends State<OrangeRevolution> {



  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text("Помаранчева революція"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(oragre_rev_text),
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




// class OrangeRevolution extends StatelessWidget {
//   const OrangeRevolution({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Помаранчева революція"),
//         backgroundColor: Colors.orangeAccent,
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: Text(oragre_rev_text),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.of(context).push(
//             MaterialPageRoute(
//               builder: (context) => const Homepage(),
//             ),
//           );
//         },
//         backgroundColor: Colors.orangeAccent,
//         child: Icon(Icons.home),
//       ),
//     );
//   }
// }
