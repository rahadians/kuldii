import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  // const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightmedia = MediaQuery.of(context).size.height;
    final widthmedia = MediaQuery.of(context).size.width;

    final myAppbar = AppBar(
      title: Text('Belajar Media Query'),
    );

    final heightMyAppBar = myAppbar.preferredSize.height;

    final paddingTop = MediaQuery.of(context).padding.top;

    final bodyheight = heightmedia - heightMyAppBar - paddingTop;

    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: myAppbar,
      body: Center(
        child: (isLandscape)
            ? Column(
                children: [
                  Container(
                    height: bodyheight * 0.5,
                    width: widthmedia,
                    color: Colors.amber,
                  ),
                  Container(
                    height: bodyheight * 0.5,
                    child: GridView.builder(
                        itemCount: 100,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(),
                            title: Text('Hello Semua..'),
                          );
                        }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.5,
                      ),),
                  )
                ],
              )
            : Column(
                children: [
                  Container(
                    height: bodyheight * 0.7,
                    width: widthmedia,
                    color: Colors.amber,
                  ),
                  Container(
                    height: bodyheight * 0.3,
                    child: ListView.builder(
                        itemCount: 100,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(),
                            title: Text('Hello Semua..'),
                          );
                        }),
                  )
                ],
              ),
      ),
    );
  }
}
