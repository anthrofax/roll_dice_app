// 1.
// import 'package:flutter/material.dart';

// void main() {
//   runApp( MaterialApp(
//     home:  HalamanSatu(),
//   ));
// }

// class HalamanSatu extends StatelessWidget {
//   @override

//   Widget build (BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         leading: const Icon(Icons.home, color: Colors.white, size: 30.0,),
//         title: const Center(
//           child:  Text('Anthrofax', style: TextStyle(color: Colors.white))
//         ),
//         actions: const [
//            Icon(Icons.search, color: Colors.white, size: 30.0,)
//         ],
//       ),
//       body: Center(
//         child: Container(
//           color: Colors.black38,
//           width: 200.0,
//           height: 100.0,
//           child: Icon(Icons.android, color: Colors.yellow[50], size: 70.0,),
//         ),
//       ),
//     );
//   }
// }

// 2. Column & Row (Layout Setting)
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: HalamanSatu(),
//   ));
// }

// class HalamanSatu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           leading: const Icon(
//             Icons.home,
//             color: Colors.white,
//             size: 30.0,
//           ),
//           title: const Center(
//               child: Text('Anthrofax', style: TextStyle(color: Colors.white))),
//           actions: const [
//             Icon(
//               Icons.search,
//               color: Colors.white,
//               size: 30.0,
//             )
//           ],
//         ),
//         body: Column(
//           children: [
//             Icon(
//               Icons.donut_large,
//               color: Colors.red[200],
//               size: 70.0,
//             ),
//             Row(
//               children: [
//                 Icon(
//                   Icons.local_pizza,
//                   color: Colors.red[200],
//                   size: 70.0,
//                 ),
//                 const Icon(
//                    Icons.local_pizza,
//                   color: Colors.blue,
//                   size: 70.0,
//                 ),
//                 Icon(
//                   Icons.local_pizza,
//                   color: Colors.red[200],
//                   size: 70.0,
//                 ),
//               ],
//             ),
//             const Icon(
//               Icons.donut_large,
//               color: Colors.blue,
//               size: 70.0,
//             )
//           ],
//         ));
//   }
// }

// 3. Parsing Data
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.home,
          color: Colors.white,
          size: 30.0,
        ),
        title: const Center(
            child: Text('Anthrofax', style: TextStyle(color: Colors.white))),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30.0,
          )
        ],
      ),
      body: Center(
          child: Column(
        children: [
          Card(icon: Icons.home, text: "Home", color: Colors.grey),
          Card(icon: Icons.favorite, text: "Favorite", color: Colors.pink),
          Card(icon: Icons.place, text: "Place", color: Colors.blue),
          Card(icon: Icons.settings, text: "Settings", color: Colors.black),
        ],
      )),
    );
  }
}

class Card extends StatelessWidget {
  @override
  Card({required this.icon, required this.text, required this.color});

  final IconData icon;
  final String text;
  final Color color;

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Colors.grey[300],
      child: Column(
        children: [
          Icon(
            icon,
            color: color,
            size: 50.0,
          ),
          Text(text)
        ],
      ),
    );
  }
}
