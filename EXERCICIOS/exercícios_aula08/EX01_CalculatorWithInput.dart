// import 'package:flutter/material.dart';
// import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

// void main() {
//   runApp(CalculatorApp());
// }

// class CalculatorApp extends StatefulWidget {
//   const CalculatorApp({super.key});

//   @override
//   State<CalculatorApp> createState() => _CalculatorAppState();
// }

// class _CalculatorAppState extends State<CalculatorApp> {
//   double result = 0;

//   var firstValue =  TextEditingController();
//   var secondValue = TextEditingController();

//   var firstValueFocusNode = FocusNode();

//    final numberMask = MaskTextInputFormatter(
//     mask: '#########',
//     filter: {'#': RegExp(r'[0-9]')},
//   );

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.grey,
//           centerTitle: true,
//           title: const Text(
//             'Calculadora Simples',
//             style: TextStyle(fontSize: 16, color: Colors.white),
//           ),
//         ),
//         body: Container(
//           alignment: Alignment.center,
//           child: Form(
//             child: ListView(
//               children: [
//                 const SizedBox(
//                   height: 50,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text('Resultado: $result',
//                         style: TextStyle(
//                             fontSize: 24, fontWeight: FontWeight.w600)),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 50,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 50.0),
//                   child: TextFormField(
//                     inputFormatters: [numberMask],
//                     focusNode: firstValueFocusNode,
//                     controller: firstValue,
//                     decoration: InputDecoration(
//                       hintText: 'Informe o primeiro valor',
                      
//                     ),
                    
//                     keyboardType: TextInputType.number,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 50.0),
//                   child: TextFormField(
//                     controller: secondValue,
//                     inputFormatters: [numberMask],
//                     decoration: InputDecoration(
//                       hintText: 'Informe o segundo valor',
//                     ),
//                     keyboardType: TextInputType.number,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                         onPressed: () {
//                           setState(() {
//                             double firstValueN =  double.parse(firstValue.text);
//                             double secondValueN =  double.parse(secondValue.text);
//                             result = firstValueN + secondValueN;
//                           });
//                         }, child: const Text('Somar')),
//                     const SizedBox(
//                       width: 20,
//                     ),
//                     ElevatedButton(
//                         onPressed:  formFormater, child: const Text('Limpar'))
//                   ],
//                 )
//               ],

//             ),
//           ),
//         ),
        
//       ),
//     );
//   }
//     @override
//   void dispose() {
//     firstValue.dispose();
//     secondValue.dispose();
//     super.dispose();
//   }

//   void formFormater(){
//     Form.of(context)?.reset();
//     firstValue.clear();
//     secondValue.clear();
//     setState(() {
//       result = 0;
//     });
//     firstValueFocusNode.requestFocus();
//   }

// }






// import 'package:flutter/material.dart';

// void main() {
//   runApp(const AgeVerify());
// }

// class AgeVerify extends StatefulWidget {
//   const AgeVerify({super.key});

//   @override
//   State<AgeVerify> createState() => _AgeVerifyState();
// }

// var controller = TextEditingController();

// final light = ThemeData(
//   brightness: Brightness.light,
//   primarySwatch: Colors.cyan,
// );
// final dark = ThemeData(
//   brightness: Brightness.dark,
//   primarySwatch: Colors.cyan,
// );

// class _AgeVerifyState extends State<AgeVerify> {
//   ThemeMode currentThemeMode = ThemeMode.light;
//   int idade =0;
//   String? resposta = " ";

//   void toggleThemeMode() {
//     setState(() {
//       currentThemeMode = currentThemeMode == ThemeMode.light
//           ? ThemeMode.dark
//           : ThemeMode.light;
//     });
//   }

//   void verificaIdade() {
//     setState(() {
//       idade = int.parse(controller.text);

//       if(idade>=16 && idade<18 || idade>=65){
//         resposta = 'Voto Facultativo!';
//       }else if(idade>=18 && idade <60){
//         resposta = 'Voto Obrigatório!';
//       }else{
//         resposta = 'Não podes votar';
//       }
//     });
//   }

//   void showSignUpDialog(BuildContext context) {
//     showDialog<bool>(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: const Text('Resultado!'),
//             content: Text('$resposta'),
//             actions: [
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(false),
//                 child: const Text('Não'),
//               ),
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(true),
//                 child: const Text('Sim'),
//               )
//             ],
//           );
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return MaterialApp(
//         themeMode: currentThemeMode,
//         theme: light,
//         darkTheme: dark,
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           appBar: AppBar(
//             centerTitle: true,
//             title: const Text(
//               'Podes votar ?',
//               style: TextStyle(fontSize: 24, color: Colors.white),
//             ),
//             actions: [
//               IconButton(
//                 onPressed: () {
//                   toggleThemeMode();
//                 },
//                 icon: Icon(
//                   color: Colors.white,
//                   theme.brightness == Brightness.light
//                       ? Icons.dark_mode
//                       : Icons.light_mode,
//                 ),
//               ),
//             ],
//           ),
//           body: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               const SizedBox(
//                 height: 50,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 50.0),
//                 child: TextField(
//                   controller: controller,
//                   keyboardType: TextInputType.number,
//                   decoration:
//                       const InputDecoration(hintText: 'Informe sua idade'),
//                 ),
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   verificaIdade();
//                   showSignUpDialog(context);
//                 },
//                 child: const Text(
//                   'Verificar Idade',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//               Text('$resposta'),
//             ],
//           ),
//         ));
//   }
// }
