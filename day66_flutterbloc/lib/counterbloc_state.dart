part of 'counterbloc_bloc.dart';

@immutable
abstract class CounterblocState {
  final int counter;
  const CounterblocState(this.counter);
}

class CounterblocInitial extends CounterblocState { //keadaan awal
  CounterblocInitial(): super(0);

}


class CounterLoaded extends CounterblocState{  //apa yang sedang dilakukan, menambah atau mengurangi
  CounterLoaded(int counter) : super(counter);

}