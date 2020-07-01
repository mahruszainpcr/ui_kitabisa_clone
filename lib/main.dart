import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'http://firebase-kanvas.imgix.net/web_homebanner/homebanner/june/W40626_Banner%20PWA.jpg',
  'http://firebase-kanvas.imgix.net/web_homebanner/homebanner/june/W50630_Push%20notif%20Kisah%20Sukses%20Nenek%20Uti.jpg',
  'http://firebase-kanvas.imgix.net/web_homebanner/homebanner/june/Banner_0630_Experiment_Acquisition.png',
  'http://firebase-kanvas.imgix.net/web_homebanner/homebanner/june/W50630_BANNERZAKAT.jpg',
  'http://firebase-kanvas.imgix.net/plus/Banner%202.png',
  'http://firebase-kanvas.imgix.net/web_homebanner/homebanner/june/bisasembuhdekilham.jpg'
];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      item,
                      fit: BoxFit.contain,
                      width: 1200.0,
                    ),
                  ],
                )),
          ),
        ))
    .toList();
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'siMONIK',
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
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _current = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Container(),
                      ),
                      Expanded(
                          flex: 5,
                          child: Container(
                              decoration: BoxDecoration(color: Colors.white),
                              child: Column(
                                children: <Widget>[
                                  Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(16),
                                        child: Column(
                                          children: <Widget>[
                                            SizedBox(
                                              height: 16,
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                child: Text(
                                                  "Ingin Menggalang Dana?",
                                                  style: TextStyle(
                                                      letterSpacing: 0.5,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black54),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(
                                                  color: Colors.lightBlue,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20))),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Center(
                                                  child: Text(
                                                    "Galang Dana Sekarang",
                                                    style: TextStyle(
                                                        letterSpacing: 1,
                                                        fontSize: 18,
                                                        color: Colors.white),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20)),
                                                  border: Border.all(
                                                      width: 1,
                                                      color: Colors.lightBlue)),
                                              child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Icon(
                                                        Icons
                                                            .chat_bubble_outline,
                                                        color: Colors.lightBlue,
                                                      ),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                      Center(
                                                        child: Text(
                                                          "Tanya Tentang Galang Dana",
                                                          style: TextStyle(
                                                              letterSpacing: 1,
                                                              fontSize: 18,
                                                              color: Colors
                                                                  .lightBlue),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ),
                                                    ],
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: 4,
                                      child: Container(color: Colors.black12)),
                                  Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        child: Column(
                                          children: <Widget>[
                                            SizedBox(
                                              height: 16,
                                            ),
                                            CarouselSlider(
                                              items: imageSliders,
                                              options: CarouselOptions(
                                                  autoPlay: true,
                                                  enlargeCenterPage: true,
                                                  onPageChanged:
                                                      (index, reason) {
                                                    setState(() {
                                                      _current = index;
                                                    });
                                                  }),
                                            ),
                                            // Row(
                                            //   mainAxisAlignment:
                                            //       MainAxisAlignment.center,
                                            //   children: imgList.map((url) {
                                            //     int index = imgList.indexOf(url);
                                            //     return Container(
                                            //       width: 8.0,
                                            //       height: 8.0,
                                            //       margin: EdgeInsets.symmetric(
                                            //           vertical: 10.0,
                                            //           horizontal: 2.0),
                                            //       decoration: BoxDecoration(
                                            //         shape: BoxShape.circle,
                                            //         color: _current == index
                                            //             ? Colors.lightBlue
                                            //             : Colors.black26,
                                            //       ),
                                            //     );
                                            //   }).toList(),
                                            // ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: Column(
                                            children: [
                                              Image.network(
                                                "https://assets.kitabisa.cc/images/products/icon-donasi.png",
                                                width: 80,
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "Donasi",
                                                style: TextStyle(
                                                    color: Colors.black38),
                                              )
                                            ],
                                          )),
                                          Expanded(
                                              child: Column(
                                            children: [
                                              Image.network(
                                                "https://assets.kitabisa.cc/images/products/icon-zakat.png",
                                                width: 80,
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "Zakat",
                                                style: TextStyle(
                                                    color: Colors.black38),
                                              )
                                            ],
                                          )),
                                          Expanded(
                                              child: Column(
                                            children: [
                                              Image.network(
                                                "https://assets.kitabisa.cc/images/products/icon-kbplus.png",
                                                width: 80,
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "Kita Bisa Plus",
                                                style: TextStyle(
                                                    color: Colors.black38),
                                              )
                                            ],
                                          )),
                                          Expanded(
                                              child: Column(
                                            children: [
                                              Image.network(
                                                "https://assets.kitabisa.cc/images/products/icon-donasi-rutin.png",
                                                width: 80,
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "Donasi Rutin",
                                                style: TextStyle(
                                                    color: Colors.black38),
                                              )
                                            ],
                                          ))
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ))),
                      Expanded(
                        flex: 4,
                        child: Container(),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
