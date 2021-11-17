// import 'package:day66_flutterbloc/counter.dart';
import 'package:day66_flutterbloc/counterbloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(create: (_) => CounterblocBloc(), child: HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var bloc = BlocProvider.of<CounterBloc>(context); //of-nya nama class
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterblocBloc, CounterblocState>(
              builder: (context, state) {
                return Text(
                  "Angka Saat ini : ${state.counter}",
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      context.read<CounterblocBloc>().add(KurangEvent());

                      // bloc.add('minus');
                    },
                    icon: Icon(Icons.remove)),
                IconButton(
                    onPressed: () {
                      context.read<CounterblocBloc>().add(TambahEvent());
                      // bloc.add('add');
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
