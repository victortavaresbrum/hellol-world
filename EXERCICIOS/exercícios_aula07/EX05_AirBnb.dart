// import 'package:flutter/material.dart';

// void main() {
//   runApp(const Hostel());
// }

// class Hostel extends StatefulWidget {
//   const Hostel({super.key});

//   @override
//   State<Hostel> createState() => _HostelState();
// }

// class _HostelState extends State<Hostel> {
//   Color cor1 = Colors.red.shade300;
//   Color cor2 = Colors.white;
//   Color cor3 = Colors.red.shade500;

//   List selecionados = [];
//   List contem = [];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           leading: Image.network(
//             'https://cdn0.iconfinder.com/data/icons/picons-social/57/68-airbnb-512.png',
//             width: 30,
//             height: 10,
//             color: Colors.white,
//           ),
//           backgroundColor: Colors.red.shade400,
//           title: const Text('Airbnb'),
//           centerTitle: true,
//         ),
//         body: Container(
//           alignment: Alignment.center,
//           padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
//           child: Column(
//             children: [
//               const SizedBox(
//                 height: 25,
//               ),
//               const Text('Selecione as datas da sua reserva',
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
//               const SizedBox(
//                 height: 20,
//               ),
//               GridView.count(
//                 shrinkWrap: true,
//                 crossAxisCount: 7,
//                 mainAxisSpacing: 3,
//                 crossAxisSpacing: 3,
//                 childAspectRatio: 1.35,
//                 children: List.generate(30, (index) {
//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         index == setSelecionado(selecionados, index)
//                             ? selecionados.remove(index) // Remove a seleção
//                             : selecionados.add(index);

                          
//                       });
//                     },
//                     child: Container(
//                       alignment: Alignment.center,
//                       width: 20,
//                       height: 20,
//                       decoration: BoxDecoration(
//                           color: setSelecionado(selecionados, index) == index ? cor3 : cor1,
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black12.withOpacity(0.5),
//                               spreadRadius: 0.1,
//                               blurRadius: 5,
//                             )
//                           ]),
//                       child: Text('${index + 1}',
//                           style: const TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.w600)),
//                     ),
//                   );
//                 }),
//               ),
//               const SizedBox(height: 20,),
//               const Text('Abril 2022',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
//             ],
            
//           ),
//         ),
//       ),
//     );
//   }

//   int setSelecionado(List selecionados, int index){

//     //Se selecionado novamente o dia ele vai 'zerar' o index;
//     return  selecionados.contains(index) ? index : -1;
    
//   }
// }