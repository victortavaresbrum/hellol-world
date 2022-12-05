// import 'dart:async';

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
//   static const countdownDuration = Duration(minutes: 25);
//   Duration duration = Duration();
//   Timer? timer;

//   bool isCountDown = true;

//   @override
//   void initState() {
//     super.initState();

//     // startTimer();
//     reset();
//   }

//   void reset() {
//     if (isCountDown) {
//       setState(() {
//         duration = countdownDuration;
//       });
//     } else {
//       duration = Duration();
//     }
//   }

//   void addTime() {
//     final addSeconds = 1;

//     setState(() {
//       final seconds = duration.inSeconds - addSeconds;

//       if (seconds < 0) {
//         timer?.cancel();
//       } else {
//         duration = Duration(seconds: seconds);
//       }
//     });
//   }

//   void startTimer() {
//     timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
//   }

//   void stopTimer({bool resets = true}) {
//     if (resets) {
//       reset();
//     }

//     setState(() {
//       timer?.cancel();
//     });
//   }

//   bool isRunning = true;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(),
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text('PomoCubos'),
//             backgroundColor: Colors.pink,
//             elevation: 0,
//             centerTitle: true,
//           ),
//           backgroundColor: Colors.pink,
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 isRunning
//                     ? const Text(
//                         'Inativo',
//                         style: TextStyle(color: Colors.white),
//                       )
//                     : const Text('Ativo',
//                         style: TextStyle(color: Colors.white)),
//                 const SizedBox(
//                   height: 24,
//                 ),
//                 buildTime(),
//                 const SizedBox(
//                   height: 24,
//                 ),
//                 ElevatedButton(
//                     style: ButtonStyle(
//                         backgroundColor:
//                             MaterialStateProperty.all(Colors.white),
//                         minimumSize:
//                             MaterialStateProperty.all(const Size(150, 40)),
//                         shape:
//                             MaterialStateProperty.all<RoundedRectangleBorder>(
//                                 RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(18.0),
//                         ))),
//                     onPressed: () {
//                       if (isRunning) {
//                         startTimer();
//                         isRunning = false;
//                       } else {
//                         stopTimer(resets: false);
//                         isRunning = true;
//                       }
//                     },
//                     child: isRunning
//                         ? const Text(
//                             'Ativar',
//                             style: TextStyle(color: Colors.pink),
//                           )
//                         : const Text('Desativar',
//                             style: TextStyle(color: Colors.pink)))
//               ],
//             ),
//           ),
//         ));
//   }

//   Widget buildTime() {
//     String twoDigits(int n) => n.toString().padLeft(2, '0');

//     final minutes = twoDigits(duration.inMinutes.remainder(60));
//     final seconds = twoDigits(duration.inSeconds.remainder(60));

//     return Text(
//       '$minutes:$seconds',
//       style: const TextStyle(
//           fontSize: 64, fontWeight: FontWeight.w500, color: Colors.white),
//     );
//   }
// }
