import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  int number=0;


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState

    switch (state) {
      case AppLifecycleState.inactive:
        number=99;
        break;
      case AppLifecycleState.paused:
        // ...
        break;
      case AppLifecycleState.detached:
        //...
        break;
      case AppLifecycleState.resumed:
        number=number*2;
        break;
      default:
      //...

    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter")),
      body: Center(
        child: Text(
          number.toString(),
          style: TextStyle(fontSize: 35),
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {
            setState(() {
              number++;
            });

          }, child: Icon(Icons.add)),
    );
  }
}
