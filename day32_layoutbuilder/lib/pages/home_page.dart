
import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // mencari ukuran layar
    final widthMedia=MediaQuery.of(context).size.width;
    final heightMedia=MediaQuery.of(context).size.height;
    final myAppBar = AppBar(title: Text("Layout Builder"),);
    final paddingTop = MediaQuery.of(context).padding.top;
    final bodyheightMedia = heightMedia - myAppBar.preferredSize.height - paddingTop;
    
    return Scaffold(
appBar: myAppBar,
      body: Container(
        color: Colors.grey,
        width: widthMedia,
        height: bodyheightMedia*0.3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            myContainer(widthMedia,heightMedia),
            myContainer(widthMedia,heightMedia),
            myContainer(widthMedia,heightMedia),
          ],
        ),
      ),
    );
  }
}

class myContainer extends StatelessWidget {
  final double widthMedia;
  final double heightMedia;
  myContainer( this.widthMedia,this.heightMedia);


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
       return Container(
          width: constraints.maxHeight*0.25,
          height: constraints.maxHeight*0.4,
          color: Colors.amber,
        );
      },

    );
  }
}
