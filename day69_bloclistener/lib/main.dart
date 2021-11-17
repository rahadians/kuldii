import 'package:day69_bloclistener/counter_bloc_cubit.dart';
import 'package:day69_bloclistener/theme_bloc_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// final  ThemeData dark=ThemeData.light();
// final  ThemeData light=ThemeData.light();
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ThemeBlocCubit()),
          BlocProvider(create: (context) => CounterBlocCubit()),
        ],
        child: BlocBuilder<ThemeBlocCubit, bool>(
          builder: (context, state) => MaterialApp(
            debugShowCheckedModeBanner: false,
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
      appBar: AppBar(
        title: Text("Bloc Listener"),
      ),
      body: Center(
        child: BlocListener<CounterBlocCubit, int>(
          listener: (context, state) {
            if (state > 7) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Anda Sudah klik 7 kali'),
                  duration: Duration(milliseconds: 200),
                ),
              );

            }
            if(state/2==0){
              context.read<CounterBlocCubit>().state;
            }
          },
          child: BlocBuilder<CounterBlocCubit, int>(
            builder: (BuildContext context, state) => Text(
              "${state}",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CounterBlocCubit>().increment(),
      ),
    );
  }
}
