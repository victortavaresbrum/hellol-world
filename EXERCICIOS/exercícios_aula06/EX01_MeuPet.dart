// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       initialIndex: 0,
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.pink,
//             title: const Text('Meu Pet: A loja do seu pet'),
//             leading: Image.network('https://static.vecteezy.com/system/resources/previews/009/399/147/non_2x/cat-paw-clipart-design-illustration-free-png.png'),
//             bottom: TabBar(indicatorColor: Color.fromARGB(255, 0, 255, 64), tabs: <Widget>[
//               Tab(text: 'Catioros'.toUpperCase()),
//               Tab(text: 'Gatineos'.toUpperCase()),
//               Tab(text: 'Passarineos'.toUpperCase()),
              
//             ] )
//           ),
//           body: const TabBarView(
//             children: <Widget>[
//               Center(
//                 child: Text("Catioros"),
//               ),
//               Center(
//                 child: Text("Gatineos"),
//               ),
//               Center(
//                 child: Text("Passarineos"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
