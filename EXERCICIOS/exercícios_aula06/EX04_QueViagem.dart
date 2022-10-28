/*import 'package:flutter/material.dart';
import 'package:google_maps_routes/google_maps_routes.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final viewTabs = const [
    Tab(
      child: Text('Voos', style: TextStyle(color: Colors.blue)),
      icon: Icon(Icons.airplane_ticket, color: Colors.blue, size: 32),
    ),
    Tab(
      child: Text('Turismo', style: TextStyle(color: Colors.blue)),
      icon: Icon(Icons.shopping_bag, color: Colors.blue, size: 32),
    ),
    Tab(
      child: Text('Mapas', style: TextStyle(color: Colors.blue)),
      icon: Icon(
        Icons.map,
        color: Colors.blue,
        size: 32,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.yellow,
          ),
        ),
        darkTheme: ThemeData.dark(),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Que viagem!',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w700,
                  fontSize: 24),
            ),
            bottom: TabBar(tabs: viewTabs),
          ),
          body: TabBarView(
            children: [
              const Voos(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Pontos Turísticos do Porto',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TravelCard(
                            title: 'Ponte Dom Luís I',
                            text:
                                'A ponte Dom Luís I, é uma ponte em estrutura metálica com dois tabuleiros, construída entre os anos 1881 e 1886, ligando as cidades do Porto e Vila Nova de Gaia e separadas pelo rio Douro s I, é uma ponte em estrutura metálica com dois tabuleiros, construída entre os anos 1881 e 1886, ligando as cidades do Porto e Vila Nova de Gaia e separadas pelo rio Douro',
                            img:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRgQwJyW2cMyzeMymjkCgkw2s9jXqIT5mkM1MhU1uV6l328rN76y79byM3r2hXVJjIszY&usqp=CAU'),
                        TravelCard(
                            title: 'Torre dos Clérigos',
                            text:
                                'A Igreja e Torre dos Clérigos, construída entre 1732 e 1763, é um notável conjunto arquitetônico situado na cidade do Porto, sendo considerado um cartão-postal da cidade e intergra três elementos principais: a Igreja dos Clérigos, a Torre dos Clérigos e a Casa da Irmandade',
                            img:
                                'http://www.viajandoeviajando.com/wp-content/uploads/2020/04/TORRE-DOS-CLERIGOS-18-1024x768.jpg'),
                        TravelCard(
                            title: 'Biblioteca Lello',
                            text:
                                'A Igreja e Torre dos Clérigos, construída entre 1732 e 1763, é um notável conjunto arquitetônico situado na cidade do Porto, sendo considerado um cartão-postal da cidade e intergra três elementos principais: a Igreja dos Clérigos, a Torre dos Clérigos e a Casa da Irmandade',
                            img: 'https://i.pinimg.com/originals/b7/5c/32/b75c32280312f0ba85e136a88b282ab8.jpg'
                    ),
                    
                    
                    ],
                    ),
                  ),
                ),
              ),
              Image.network('https://outraspalavras.net/wp-content/uploads/2020/08/mapa1.png')
            ],
          ),
        ),
      ),
    );
  }
}

class TravelCard extends StatelessWidget {
  const TravelCard({
    super.key,
    required this.img,
    required this.title,
    required this.text,
  });

  final String img, title, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      child: Card(
        elevation: 4,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(img),
                SizedBox(height: 5),
                Center(
                  child: Text(title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                SizedBox(height: 10),
                Text(text),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Voos extends StatelessWidget {
  const Voos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 32.0, bottom: 16.0),
                  child: Text(
                    'Partida'.toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Text('Abril 26, 2022'),
            ],
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('GRU',
                      style:
                          TextStyle(fontSize: 44, fontWeight: FontWeight.w500)),
                  SizedBox(height: 16),
                  Text('Guarulhos, Brazil'),
                ],
              ),
              Icon(
                Icons.airplane_ticket_sharp,
                size: 52,
                color: Colors.blue,
              ),
              Column(
                children: [
                  Text('OPO',
                      style:
                          TextStyle(fontSize: 44, fontWeight: FontWeight.w500)),
                  SizedBox(height: 16),
                  Text('Porto, Portugal'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
*/