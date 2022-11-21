// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// void main() => runApp(Rainbow());

// class Rainbow extends StatelessWidget {
//   const Rainbow({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.pink,
//           title: const Center(
//             child: Text('VLAVAAV Horizontal'),
//           ),
//         ),
//         body:ListView(
//           scrollDirection: Axis.horizontal,
//           children: [
//             getRainbow(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Row getRainbow() {
//   return Row(
//     children: [
//       Container(
//         width: 65,
//         color: Colors.redAccent,
//         child: const Center(
//           child: RotatedBox(
//             quarterTurns: 3,
//             child: Text(
//               'Vermelho',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 32,
//                 letterSpacing: 5,
//               ),
//             ),
//           ),
//         ),
//       ),
//       Container(
//         width: 65,
//         color: Colors.orange,
//         child: const Center(
//           child: RotatedBox(
//             quarterTurns: 3,
//             child: Text(
//               'Laranja',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 32,
//                 letterSpacing: 5,
//               ),
//             ),
//           ),
//         ),
//       ),
//       Container(
//         width: 65,
//         color: Colors.yellow,
//         child: const Center(
//           child: RotatedBox(
//             quarterTurns: 3,
//             child: Text(
//               'Amarelo',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 32,
//                 letterSpacing: 5,
//               ),
//             ),
//           ),
//         ),
//       ),
//       Container(
//         width: 65,
//         color: Colors.green,
//         child: const Center(
//           child: RotatedBox(
//             quarterTurns: 3,
//             child: Text(
//               'Verde',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 32,
//                 letterSpacing: 5,
//               ),
//             ),
//           ),
//         ),
//       ),
//       Container(
//         width: 65,
//         color: Colors.blueAccent,
//         child: const Center(
//           child: RotatedBox(
//             quarterTurns: 3,
//             child: Text(
//               'Azul',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 32,
//                 letterSpacing: 5,
//               ),
//             ),
//           ),
//         ),
//       ),
//             Container(
//         width: 65,
//         color: Colors.blue,
//         child: const Center(
//           child: RotatedBox(
//             quarterTurns: 3,
//             child: Text(
//               'Vermelho',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 32,
//                 letterSpacing: 5,
//               ),
//             ),
//           ),
//         ),
//       ),
//       Container(
//         width: 65,
//         color: Colors.purpleAccent,
//         child: const Center(
//           child: RotatedBox(
//             quarterTurns: 3,
//             child: Text(
//               'Violeta',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 32,
//                 letterSpacing: 5,
//               ),
//             ),
//           ),
//         ),
//       ),

//     ],
//   );
// }
