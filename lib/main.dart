import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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

  final Color backgroundGray = const Color(0xFFFAFAFA);
  final Color oneNoteGreen = const Color(0xFF008055);
  final Color oneNoteRed = const Color(0xFFe61b1b);
  final Color oneNoteYellow = const Color(0xFFffaa00);
  final Color oneNoteBlue = const Color(0xff00aacc);
  final Color oneNotePurple = const Color(0xFF601b80);

  @override
  Widget build(BuildContext context) {
    var materialChild = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 5,
          color: oneNoteGreen,
        ),
        Text("Personal Information"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Company Name"),
            Container(
              color: oneNoteBlue,
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.lightbulb_outline,
                color: Colors.white,
                size: 20,
              ),
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
            color: oneNoteBlue,
            width: 2,
          )),
          padding: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              Text(
                "Latest company called was 'Contoso LLC' and we can auto fill it for you.",
                style: TextStyle(color: oneNoteBlue),
                textAlign: TextAlign.left,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: oneNoteBlue,
                ),
                padding: EdgeInsets.all(5),
                child: Text("Apply", style: TextStyle(color: Colors.white)),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  contentPadding: const EdgeInsets.all(5.0),
                ),
              ),
            ],
          ),
        ),
      ],
    );

    var rootWidget = Container(
      child: materialChild,
      decoration: BoxDecoration(
        border: Border.all(
          color: backgroundGray,
          width: 1,
        ),
      ),
      margin: new EdgeInsets.all(20.0),
    );

    return Material(
      color: Colors.white,
      child: rootWidget,
    );
  }
}
