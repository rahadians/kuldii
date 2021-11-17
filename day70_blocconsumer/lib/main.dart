import 'package:day70_blocconsumer/counter_bloc_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<CounterBlocCubit>(
          create: (
            BuildContext context,
          ) =>
              CounterBlocCubit(), //mengcreate kelas countercubit
          child: HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

@override
Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(),
    body: Center(
      child: BlocConsumer(

        buildWhen: (previous, current) {
          print(current);
          // if(current! > 10 ) {
          //   return true;
          // } else {
          //   return false;
          // }
        },
        listenWhen: (previous, current) {
          // if (current > 10) {
          //   return true;
          // } else {
          //   return false;
          // }
        },
        listener: (context, state) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Sudah di atas 10"),
            duration: Duration(milliseconds: 200),
          ));
        },
        builder: (BuildContext context, state) {
          Text(
            "angka $state",
            style: TextStyle(fontSize: 35),
          );
        },
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () =>
          context.read<CounterBlocCubit>().hitungTambah(), //read dari kelasnya
      child: Icon(Icons.add),
    ),
  );
}
