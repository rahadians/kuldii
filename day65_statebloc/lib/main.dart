import '../blocs/counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CounterBloc bloc = CounterBloc();

  @override
  void dispose() {
    // TODO: implement dispose
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Bloc"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
              ///snapshot itu hasil dari stream (isi dari stream)
              stream: bloc.output,

              /// memberikan angka di awal
              initialData: bloc.counter,

              ///mesin dijalankan
              builder: (context, snapshot) => Text(
                "Angka Saat ini : ${snapshot.data}",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      bloc.sinkInput.add('minus');
                    },
                    icon: Icon(Icons.remove)),
                IconButton(
                    onPressed: () {
                      bloc.sinkInput.add('add');
                    },
                    icon: Icon(Icons.add)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
