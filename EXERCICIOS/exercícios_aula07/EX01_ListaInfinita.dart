// import 'package:flutter/material.dart';

// void main() => runApp(ListaInfinita());

// class ListaInfinita extends StatelessWidget {
//   ListaInfinita({super.key, this.contador});

//   int? contador;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           shadowColor: Colors.black38,
//           title: const Center(
//               child: Text(
//             'Lista "Infinita"',
//           )),
//           backgroundColor: Color.fromARGB(255, 89, 245, 193),
//           foregroundColor: Colors.black54,
//         ),
//         body: ListView(
//           children: List.generate(100, (int index) {
//             int index1 = index+1;
//             return Card(
//               color: Color.fromARGB(255, 230, 230, 230),
//               child: ListTile(
//                 leading: Icon(Icons.star), iconColor: Colors.yellow,
//                 title: Center(
//                   child: Text(
//                     "Item nº: $index1",
//                     style: const TextStyle(
//                       color: Colors.green,
//                         fontWeight: FontWeight.w400, fontSize: 20.0),
//                   ),
//                 ),
//               ),
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }