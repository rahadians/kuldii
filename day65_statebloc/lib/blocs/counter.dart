import 'dart:async';

import 'package:flutter/cupertino.dart';

class CounterBloc{
  int _counter=0;

  //get counter agar bisa terbaca di ImageInfo

  int get counter=>_counter;

///Definisi sink dan controller input

  // definisi controller input
final StreamController _inputController = StreamController(); //control input

  //definisi sink input
StreamSink get sinkInput => _inputController; //sink input

  ///Definisi sink dan controller output

  // definisi controller output
  final StreamController _outputController = StreamController(); //control output
  //definisi sink output
  StreamSink get _sinkOutput => _outputController; //sink output


///definisi output sink output
  Stream get output => _outputController.stream;

  /// definisi dan membuat mesinnya
//mesinnya
CounterBloc(){
  _inputController.stream.listen((event) {
    if(event=='add'){
      _counter ++;
    }else{
      _counter --;
    }

    _sinkOutput.add(_counter);
  }); //event ini adalah data dari sink input
}






void dispose(){
  _inputController.close();
  _outputController.close();
}

}