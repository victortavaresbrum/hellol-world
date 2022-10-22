/*import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Menu Drawer'),
          backgroundColor: Color.fromARGB(255, 46, 36, 1),
          leading: Builder(
            builder: (context) {
              return InkWell(child: Icon(Icons.menu,size: 40,),
              onTap: (){Scaffold.of(context).openDrawer();},);
            }
          ),
        ),
        
        drawer: const SizedBox(
          child:  NavigationDrawer()),
        body: Container(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container( //Isso aqui é mega importante pra não sobrepor a tela do usuário
    padding: EdgeInsets.only(
      top:MediaQuery.of(context).padding.top,
    ),
  );
  Widget buildMenuItems(BuildContext context) => Column(
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {},
          ),
          const Divider(color: Colors.black54,thickness: 0.1,),
           ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {},
          ),
          const Divider(color: Colors.black54,thickness: 0.1,),
           ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {},
          ),
          const Divider(color: Colors.black54,thickness: 0.1,),
           ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {},
          ),
          const Divider(color: Colors.black54,thickness: 0.1,),
        ],
      );
}
*/