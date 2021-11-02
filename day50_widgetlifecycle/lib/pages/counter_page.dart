import '../widgets/widget_counter.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  static const routeName = "/counter-=page";

  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  int numberState=0;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies


    numberState = ModalRoute.of(context)!.settings.arguments as int;
     if (numberState!=null){
      counter = numberState;
     }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Page"),
      ),
      body: WidgetCounter(counter: counter),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
