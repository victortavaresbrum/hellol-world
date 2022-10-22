import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 34, 34, 34),
          body: Center(
            child: NFTCard(),
          )),
    );
  }
}

class NFTCard extends StatelessWidget {
  const NFTCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 300,
          height: 500,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(255, 241, 241, 241)),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 10,
            color: Color.fromARGB(255, 1, 7, 66),
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: const Image(
                      image: NetworkImage(
                        'https://s2.glbimg.com/EPCclUpcD8MwJ3gqsD5Nw1FsOgw=/0x0:595x599/924x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_63b422c2caee4269b8b34177e8876b93/internal_photos/bs/2021/c/8/vwEnBlQTOR5JMPV1qigw/captura-de-tela-2021-12-14-114837.jpg',
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Equilibrium #3429',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:8,top:10),
                      child: Text(
                        'Nossa coleção Equilibrium promove calma e balanço',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        
                        const Text(
                        '0.041 ETH',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w700),
                      ),
                        Row(
                          
                          children: [
                            Icon(Icons.access_time_filled,color: Colors.white, size: 16),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: const Text(
                              'restam 3 dias',
                              style:
                                  const TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.w700),
                                                  ),
                            ),
                          ],
                        ),
                      ],
                    )
                    
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Divider(height: 2, color: Colors.white,),
                ),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(image: NetworkImage('https://media-exp1.licdn.com/dms/image/C4D03AQGoCgIHY7eshQ/profile-displayphoto-shrink_800_800/0/1658250127654?e=1671667200&v=beta&t=RC82SYlrhPQokfj7AXnnTm7bkZkkS8lVef0q-2Gty5Y',
                      ),width: 50,height: 50,),
                    ),
                  ),
                Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Criado por',
                        style:
                            const TextStyle(color: Color.fromARGB(255, 0, 119, 255), fontSize: 12,fontWeight: FontWeight.w700),
                      ),
                    ),
                    Text(
                        '  Victor Hugo Brum',
                        style:
                            const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 12,fontWeight: FontWeight.w700),
                      ),
                ],
                ),
              ],
            ),
          )),
    );
  }
}
