//import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Menu Drawer'),
//           backgroundColor: Colors.pinkAccent,
//         ),
//         body: Container(
//           color: Color.fromARGB(255, 255, 255, 255),
//         ),
//         endDrawer: const Drawer(
//           child: NavigationDrawer(),
//         ),
//       ),
//     );
//   }
// }

// class NavigationDrawer extends StatelessWidget {
//   const NavigationDrawer({super.key});

//   @override
//   Widget build(BuildContext context) => Drawer(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               buildHeader(context),
//               buildMenuItems(context),
//             ],
//           ),
//         ),
//       );

//   Widget buildHeader(BuildContext context) => Container( //Isso aqui é mega importante pra não sobrepor a tela do usuário
//     padding: EdgeInsets.only(
//       top:MediaQuery.of(context).padding.top,
//     ),
//   );
//   Widget buildMenuItems(BuildContext context) => Column(
//         children: [
//           ListTile(
//             leading: const Icon(Icons.flash_on, color: Colors.blue,size: 40,),
//             trailing: Icon(Icons.arrow_forward_ios,size: 15,),
//             title: const Text('Flutter'),
//             subtitle: Text('Tudo são Widgets'),
//             onTap: () {},
//           ),
//           const Divider(color: Colors.black54,thickness: 0.1,),
//            ListTile(
//             leading: const Icon(Icons.tag_faces_outlined,color: Colors.pink,size: 40,),
//             trailing: Icon(Icons.arrow_forward_ios,size: 15,),
//             title: const Text('Dart'),
//             subtitle: Text('É muito forte'),
//             onTap: () {},
//           ),
//           const Divider(color: Colors.black54,thickness: 0.1,),
//            ListTile(
//             leading: const Icon(Icons.coffee,color: Color.fromARGB(255, 49, 30, 12),size: 40,),
//             trailing: Icon(Icons.arrow_forward_ios,size: 15,),
//             title: const Text('Cafessineo'),
//             subtitle: Text('Quero Café'),
//             onTap: () {},
//           ),
//           const Divider(color: Colors.black54,thickness: 0.1,),
//         ],
//       );
// }
