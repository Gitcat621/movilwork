import 'package:flutter/material.dart';

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
      theme: ThemeData(
  
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 340,
          height: 210,
          padding: const  EdgeInsets.all(20.0), 
          decoration: BoxDecoration(
            color: const Color.fromRGBO(5, 68, 143, 1),
            borderRadius: BorderRadiusDirectional.circular(16.1),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("Visa classic credit", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 20.0)),
                ],
              ),
              Row(
                children: [
                   Image(
                    image: AssetImage("assets/images/chipi.png"),
                    width: 80.0,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(" 4000   1234  5678  9010 ", style: TextStyle(color: Color.fromARGB(208, 212, 212, 206), fontSize: 20, fontFamily: 'montseBold'))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Valido hasta 12/24", style: TextStyle(color: Color.fromARGB(225, 229, 233, 241), fontSize: 10.0, fontFamily: 'montse')),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("C. ARIAS", style: TextStyle(color: Color.fromARGB(225, 229, 233, 241), fontSize: 15.0, fontFamily: 'montse'),),
                  Image(
                    image: AssetImage("assets/images/visa.png"),
                    width: 70,
                  ),
                ],
              ),
              // Row(
              //   children: [
              //     Image(
              //       image: AssetImage("assets/images/VisaPng.png"),
              //       width: 10.0,
              //     )
              //   ],
              // )
            ],
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
