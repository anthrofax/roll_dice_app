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
        body: Column(
          children: [
            Icon(
              Icons.donut_large,
              color: Colors.red[200],
              size: 70.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.local_pizza,
                  color: Colors.red[200],
                  size: 70.0,
                ),
                const Icon(
                   Icons.local_pizza,
                  color: Colors.blue,
                  size: 70.0,
                ),
                Icon(
                  Icons.local_pizza,
                  color: Colors.red[200],
                  size: 70.0,
                ),
              ],
            ),
            const Icon(
              Icons.donut_large,
              color: Colors.blue,
              size: 70.0,
            )
          ],
        ));
  }
}
