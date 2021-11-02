import '../pages/other_page.dart';
import 'package:flutter/material.dart';
import '../pages/other_page.dart';

class WidgetCounter extends StatefulWidget {
  const WidgetCounter({
    Key? key,
    required this.counter,
  }) : super(key: key);

  final int counter;

  @override
  State<WidgetCounter> createState() => _WidgetCounterState();
}

class _WidgetCounterState extends State<WidgetCounter> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Print initstate()");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print("Print didchangedepencies()");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant WidgetCounter oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("Print didupdatewidget()");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("Print deactive()");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print("Print dispose()");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${widget.counter}",
              style: TextStyle(
                fontSize: 35,
              )),
          SizedBox(
            height: 50,
          ),
          OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, OtherPage.routeName,arguments: widget.counter);
              },
              child: Text("Go To Other Page")),
        ],
      ),
    );
  }
}
