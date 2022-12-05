// import 'dart:async';
// import 'dart:math';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   PageController _controller = PageController();

//   int pageIndex = 0;

//   PageController pageController = PageController(initialPage: 0);

//   Duration duration = Duration();

//   Timer? timer;

//   // Duration seconds = Duration(seconds: duration.inSeconds);

//   void pageBomb() {
//     setState(
//       () {
//         int initialTimeBomb = Random().nextInt(4) + 1;
//         const addSeconds = 1;
//         int seconds = initialTimeBomb - addSeconds;
//         if (seconds == 0) {
//           pageController.animateToPage(2,
//               duration: const Duration(milliseconds: 300), curve: Curves.ease);
//           timer?.cancel();
//         }
//         print(seconds);
//       },
//     );
//   }

//   void timerBomb() {
//     setState(() {
//       timer = Timer.periodic(Duration(seconds: 1), (_) => pageBomb());
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: PageView(
//             // physics: const NeverScrollableScrollPhysics(),
//             controller: pageController,
//             children: [
//               Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       'Corra da bomba',
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//                     ),
//                     const SizedBox(
//                       height: 24,
//                     ),
//                     ElevatedButton(
//                       style: ButtonStyle(
//                         backgroundColor: MaterialStateProperty.all(Colors.red),
//                         minimumSize:
//                             const MaterialStatePropertyAll(Size(150, 40)),
//                         shape: MaterialStatePropertyAll(
//                           RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                         ),
//                       ),
//                       onPressed: () {
//                         pageIndex++;
//                         setState(() {
//                           pageController.animateToPage(1,
//                               duration: const Duration(milliseconds: 300),
//                               curve: Curves.ease);
//                         });
//                         timerBomb();
//                       },
//                       child: const Text(
//                         'Iniciar',
//                         style: TextStyle(),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Center(
//                     child: Image.network(
//                         'https://i.pinimg.com/originals/97/00/ff/9700ff5255003108cbb1c7b49e666637.gif'),
//                   ),
//                   const SizedBox(
//                     height: 24,
//                   ),
//                   const Text(
//                     'Passe a bomba',
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//                   ),
//                 ],
//               ),
//               Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       'Você perdeu!!!',
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//                     ),
//                     const SizedBox(
//                       height: 24,
//                     ),
//                     Image.network(
//                         'https://media.tenor.com/igZCc-gVpjsAAAAj/%D0%B2%D0%B7%D1%80%D1%8B%D0%B2.gif'),
//                     const SizedBox(
//                       height: 24,
//                     ),
//                     ElevatedButton(
//                       child: const Text('Voltar'),
//                       onPressed: () {
//                         setState(() {
//                           pageController.animateToPage(0,
//                               duration: const Duration(milliseconds: 300),
//                               curve: Curves.ease);
//                         });
//                       },
//                       style: ButtonStyle(
//                         backgroundColor: MaterialStateProperty.all(Colors.red),
//                         minimumSize:
//                             const MaterialStatePropertyAll(Size(150, 40)),
//                         shape: MaterialStatePropertyAll(
//                           RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ]),
//       ),
//     );
//   }
// }
