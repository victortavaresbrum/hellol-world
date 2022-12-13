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
//   Future<Widget> getData() => Future.delayed(const Duration(seconds: 5), () {
//         return Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text('Nome: Victor'),
//             const Text('Idade: 23'),
//             const Text('Genêro: Masculino'),
//             ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     isLoading = false;
//                   });
//                 },
//                 child: const Text('Voltar'))
//           ],
//         );
//       });

//   bool isLoading = false;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           body: Center(
//         child: isLoading
//             ? FutureBuilder<Widget>(
//                 future: getData(),
//                 builder: (context, snapshot) {
//                   if (snapshot.hasData) {
//                     return Center(child: snapshot.data);
//                   }
//                   return const CircularProgressIndicator();
//                 },
//               )
//             : ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     isLoading = true;
//                   });
//                 },
//                 child: const Text('Clique aqui')),
//       )),
//     );
//   }
// }