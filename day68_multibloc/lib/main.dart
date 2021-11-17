import 'package:day68_multibloc/hitung_cubit.dart';
import 'package:day68_multibloc/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeData dark = ThemeData.dark();
  final ThemeData light = ThemeData.light();

  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ThemeCubit()),
          BlocProvider(create: (context) => HitungCubit()),
        ],

        child: BlocBuilder<ThemeCubit, bool>(
          builder: (context, state) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: state ? dark : light,
            home: HomePage(),
          ),
        ));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<ThemeCubit>().changeTheme(),
        child: Icon(Icons.color_lens),
      ),
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<HitungCubit, int>(
              builder: (context, state) => Text(
                "Angka Saat ini : $state",
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
                      context.read<HitungCubit>().decrement();
                    },
                    icon: Icon(Icons.remove)),
                IconButton(
                    onPressed: () {
                      context.read<HitungCubit>().increment();
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
