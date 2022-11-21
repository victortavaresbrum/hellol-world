// import 'package:flutter/material.dart';

// void main() => runApp(GradesGrids());

// class GradesGrids extends StatelessWidget {
//   const GradesGrids({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.green,
//         ),
//         body: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                   child: Container(
//                     alignment: Alignment.center,
//                     height: 100,
//                     child: Icon(
//                       Icons.arrow_drop_up,
//                       size: 100,
//                       color: Color.fromARGB(255, 44, 92, 248),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     child: Icon(Icons.arrow_drop_up,
//                         size: 100, color: Color.fromARGB(255, 0, 60, 255)),
//                   ),
//                 )
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                   child: Container(
//                     alignment: Alignment.centerRight,
//                     height: 100,
//                     child: Icon(
//                       Icons.remove_red_eye_outlined,
//                       size: 50,
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     child: Icon(
//                       Icons.arrow_downward,
//                       size: 50,
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     alignment: Alignment.centerLeft,
//                     child: Icon(
//                       Icons.remove_red_eye_outlined,
//                       size: 50,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               color: Colors.red,
//               padding: const EdgeInsets.all(35),
//               margin: const EdgeInsets.all(15),
//               child: (GridView.count(
//                 childAspectRatio: 0.6,
//                 shrinkWrap: true,
//                 crossAxisCount: 6,
//                 mainAxisSpacing: 2,
//                 crossAxisSpacing: 2,
//                 children: List.generate(
//                   12,
//                   (index) {
//                     return Container(
//                         padding: const EdgeInsets.all(15),
//                         color: Colors.amber.shade100);
//                   },
//                 ),
//               )),
//             ),
//             const SizedBox(
//                     height: 50,
//                   ),
//                   Expanded(child: Container(color: Colors.deepPurple,height: 100,),)
                  
//           ],
//         ),
//       ),
//     );
//   }
// }
