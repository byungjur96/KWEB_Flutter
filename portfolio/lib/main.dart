import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Byungju Portfolio",
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
      home: MyHomePage(title: 'Byungju Chae Portfolio'),
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

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/wallpaper.jpeg"),
            fit: BoxFit.cover
            )
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 120,
                  backgroundImage: Image.asset(
                    'images/profile.png',
                    width: 400,
                    height: 400,
                    fit: BoxFit.cover,
                  ).image
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Byungju Chae',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white),
                    ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'images/github.png',
                        width: 30,
                        height: 30,
                        fit: BoxFit.cover
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'images/blog.png',
                        width: 30,
                        height: 30,
                        fit: BoxFit.cover
                      ),
                    ),
                    Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      'images/instagram.png',
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover
                    ),
                  )
                  ]
                )
              ]
            ),
            ),
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                      Column(
                        children: [
                          Text(
                            "I'm a senior students at Korea University.\n"
                            "My major is Computer Science & Engineering.",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 16,
                              color: Colors.white,
                              height: 1.5
                          ),
                          textAlign: TextAlign.center,
                        )
                        ]
                      )
                ],
              )
            )
          ],
        )
        
        ),
    );
  }
}
