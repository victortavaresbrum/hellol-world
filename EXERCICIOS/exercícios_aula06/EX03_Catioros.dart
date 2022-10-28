/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<Tab> listaCatioros = const [
    Tab(
      child: Text('Dachshund'),
    ),
    Tab(
      child: Text('Golden'),
    ),
    Tab(
      child: Text('Pug'),
    ),
    Tab(
      child: Text('Spaniel'),
    ),
    Tab(
      child: Text('Husky'),
    ),
    Tab(
      child: Text('Border Collie'),
    ),
    Tab(
      child: Text('Beagle'),
    ),
    Tab(
      child: Text('Weimaraner'),
    ),
    Tab(
      child: Text('Dalmata'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: listaCatioros.length,
      child: MaterialApp(
        home: Scaffold(drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(child: Center(child: Text('Catioros App',style: TextStyle(fontSize: 24),))),
              ListTile(onTap: (){},
                leading: Icon(Icons.donut_large),
                title: Text('Cachorrinhos'),
              ),
              ListTile(onTap: (){},
                leading: Icon(Icons.donut_large),
                title: Text('Cachorrinhos'),
              ),
              ListTile(onTap: (){},
                leading: Icon(Icons.donut_large),
                title: Text('Cachorrinhos'),
              ),
            ],
          )
        ),
          appBar: 
          AppBar(
            titleSpacing: 20,
            title: Text('Catioros',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w900)),
            centerTitle: true,
            backgroundColor: Colors.deepPurpleAccent,
            bottom: TabBar(isScrollable: true, tabs: listaCatioros),
          ),
          body: TabBarView(children: [
            Center(
              child: Image.network(
                  'https://t2.uc.ltmcdn.com/pt/posts/6/0/4/como_cuidar_de_um_dachshund_19406_orig.jpg'),
            ),
            Center(
              child: Image.network('https://img.olx.com.br/images/47/478223081382961.jpg'),
            ),
            Center(
              child: Image.network('https://i.pinimg.com/originals/5c/ca/10/5cca10cb7fb09ed869d9c33255ddd0ed.jpg'),
            ),
            Center(
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRngc78nxUGS1Z9iyNF3pL3CFZe6NcKjST0KA&usqp=CAU',fit: BoxFit.fill,height: 700,),
            ),
            Center(
              child: Image.network('https://i0.wp.com/www.portaldodog.com.br/cachorros/wp-content/uploads/2021/04/pexels-photo-3478875.jpeg?resize=1000%2C667&ssl=1'),),
            Center(
              child: Image.network('https://img.olx.com.br/images/84/849270939377408.jpg'),
            ),
            Center(
              child: Image.network('https://static1.patasdacasa.com.br/articles/1/52/51/@/21770-a-raca-beagle-e-animada-e-traz-diversao-articles_media_mobile-3.jpg'),
            ),
            Center(
              child: Image.network('https://http2.mlstatic.com/D_NQ_NP_607433-MLB51059048776_082022-W.jpg'),
            ),
            Center(
              child: Image.network('https://cdn.los-animales.org/fotos/3726832_1015352-lindos-filhotes-de-dalmata.jpg'),
            ),
          ]),
        ),
      ),
    );
  }
}
*/