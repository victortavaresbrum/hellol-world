//import 'package:flutter/material.dart';
// import 'dart:math';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String textPercentage = 'Clique aqui para iniciar o download';
//   double valueLinearProgress = 0;
//   String labelButton = 'Upload';
//   Color colorButton = Colors.blue;
//   Icon iconUpload = Icon(Icons.upload);


//   void addValueToProgress(){
//       valueLinearProgress = valueLinearProgress + Random().nextInt(100);
//       textPercentage = '${valueLinearProgress.toStringAsFixed(2)}%';

//       if (valueLinearProgress >=100){
//         textPercentage = 'Download Completo';
//         labelButton = 'Concluído';
//         colorButton = Colors.green;
//         iconUpload = Icon(Icons.check);
//       }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Center(
//               child: ElevatedButton.icon(
//                 onPressed: () {
//                   setState(() {
//                     addValueToProgress();
//                     if(valueLinearProgress>=100){
//                     }
//                   });
                  
//                 },
//                 icon: iconUpload,
//                 label: Text(labelButton),
//                 style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.all((colorButton)),
//                   shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(32))),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Center(
//                 child: Text(textPercentage,
//                     style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 16))
//                     ),
//                     const SizedBox(
//               height: 20,
//             ),
//             LinearProgressIndicator(
//               value: valueLinearProgress*0.01,
//               color: colorButton,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
