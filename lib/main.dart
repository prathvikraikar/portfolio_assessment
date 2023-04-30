import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.

          scaffoldBackgroundColor: Colors.black87),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var colors1 = [
    Color.fromARGB(255, 24, 22, 3),
    Color.fromARGB(255, 64, 163, 255),
    Color.fromARGB(255, 195, 122, 131),
    Colors.red,
    Colors.orange,
    Colors.teal
  ];
  @override
  Widget build(BuildContext context) {
    var Tile;
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Bim-Graph'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.vertical_split),
          )
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
            top: Radius.circular(20),
          ),
          // body: ,
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: colors1[0],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(
                      'Bringing Your Ideas to life Throgh UI Design',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.handshake_outlined),
                      label: Text('Hire-ME'))
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.black,
            ),
            child: Image.asset('assets/profile-pic.png'),
          ),
          Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Text(
                      'NAME',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Text(
                      'Prathvik-Raikar',
                      style: TextStyle(color: Colors.white),
                    ),
                    tileColor: Color.fromARGB(133, 18, 23, 20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Text(
                      'Based-In',
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    tileColor: Colors.black,
                    trailing: Text('Working',
                        style: TextStyle(fontSize: 13, color: Colors.white)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.rocket_rounded,
                        size: 20,
                        color: Colors.red,
                      ),
                    ),
                    Icon(
                      Icons.twelve_mp_rounded,
                      size: 20,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.deck_rounded,
                      size: 20,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.sync_outlined,
                      size: 20,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            )
          ]),
          Container(
            margin: EdgeInsets.only(left: 100),
            height: 100,
            decoration: BoxDecoration(
                color: colors1[3], borderRadius: BorderRadius.circular(19)),
            child: Center(
                child: Text(
              '5+ PROJECTS',
              style: TextStyle(fontSize: 50, color: Colors.white),
            )),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: colors1[4], borderRadius: BorderRadius.circular(19)),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                '1 Month Expirence',
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            )),
          ),
          Container(
            margin: EdgeInsets.only(
              right: 100,
            ),
            height: 100,
            decoration: BoxDecoration(
                color: colors1[5], borderRadius: BorderRadius.circular(19)),
            child: Center(
                child: Text(
              'Hard-Working',
              style: TextStyle(fontSize: 50, color: Colors.white),
            )),
          ),
          Container(
            margin: EdgeInsets.only(left: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(34),
              color: Color.fromARGB(255, 17, 10, 10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(
                    Icons.hail_rounded,
                    size: 78,
                    color: Colors.red[400],
                  ),
                  Image.asset(
                    'assets/download.jpg',
                  ),
                  Icon(
                    Icons.hail_rounded,
                    size: 60,
                    color: Colors.red[400],
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/tabs1.jpg',
                  ),
                  Icon(
                    Icons.hail_rounded,
                    size: 60,
                    color: Colors.red[400],
                  ),
                  Spacer(),
                  Image.asset('assets/all_icons.png'),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.black),
            child: Icon(
              Icons.restaurant_menu,
              size: 54,
              color: Colors.blue[300],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(255, 11, 7, 7)),
            child: ElevatedButton(
              style: ButtonStyle(),
              onPressed: () {},
              child: Text(
                'DOWNLOAD RESUME',
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
