// import 'package:flutter/material.dart';

// void main() {
//   runApp(const DarkMode());
// }

// class DarkMode extends StatefulWidget {
//   const DarkMode({Key? key}) : super(key: key);

//   @override
//   _DarkModeState createState() => _DarkModeState();
// }

// class _DarkModeState extends State<DarkMode> {
//   Color cor1 = const Color(0xFF232323);
//   Color cor2 = const Color(0xFF1B446B);
//   Color cor3 = const Color(0x55214B72);
//   Color cor4 = const Color(0x9935638F);
//   Color cor5 = const Color(0x99F9F9F9);
//   int selecionado = -1;
//   bool darkMode = true;
//   List icones = [
//     Icons.lightbulb_outline_rounded,
//     Icons.thermostat_rounded,
//     Icons.water,
//     Icons.security_rounded,
//     Icons.wifi_rounded,
//     Icons.tv_rounded,
//   ];
//   List funcoes = [
//     "Luzes",
//     "Temperatura",
//     "Lavadora",
//     "Segurança",
//     "Wifi",
//     "Televisor",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Container(
//           padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 begin: Alignment.bottomLeft,
//                 end: Alignment.topRight,
//                 colors: [cor1, cor2]),
//           ),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Icon(
//                     Icons.home_outlined,
//                     size: 64,
//                     color: cor5,
//                   ),
//                   Column(children: [
//                     Text(
//                       'SWEET HOME',
//                       style: TextStyle(
//                         fontSize: 32,
//                         fontWeight: FontWeight.w600,
//                         color: cor5,
//                       ),
//                     ),
//                     Text(
//                       'O que gostaria de monitorar ?',
//                       style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w500,
//                           color: cor5),
//                     ),
//                   ])
//                 ],
//               ),
//               GridView.count(
//                 shrinkWrap: true,
//                 crossAxisCount: 2,
//                 mainAxisSpacing: 8,
//                 crossAxisSpacing: 8,
//                 childAspectRatio: 1.35,
//                 children: List.generate(
//                   6,
//                   ((index) {
//                     return GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           selecionado = index;
//                         });
//                       },
//                       child: Container(
//                         width: 100,
//                         height: 100,
//                         decoration: BoxDecoration(
//                             color: index == selecionado ? cor4 : cor3,
//                             borderRadius:
//                                 const BorderRadius.all(Radius.circular(10))),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(
//                               icones[index],
//                               size: 36,
//                               color: cor5,
//                             ),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             Text(
//                               funcoes[index],
//                               style: TextStyle(
//                                   color: cor5,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   }),
//                 ),
//               ),
              
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Text(
//                     darkMode ? 'Light Mode' : 'Dark Mode',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: cor5,
//                     ),
//                   ),
//                   Switch(
//                     value: darkMode, 
//                     onChanged: (value){
//                     setState(() {
//                         if (darkMode) {
//                           cor5 = const Color(0xFF1B446B);
//                           cor4 = const Color(0x55F9F9F9);
//                           cor3 = const Color(0x55214B72);
//                           cor2 = const Color(0xFFc9c9c9);
//                           cor1 = const Color(0x5535638F);
//                           darkMode = false;
//                         } else {
//                           cor1 = const Color(0xFF232323);
//                           cor2 = const Color(0xFF1B446B);
//                           cor3 = const Color(0x55214B72);
//                           cor4 = const Color(0x9935638F);
//                           cor5 = const Color(0x99F9F9F9);
//                           darkMode = true;
//                         }
//                     });
//                   })

//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
