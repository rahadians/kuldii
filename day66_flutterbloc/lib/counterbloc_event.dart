part of 'counterbloc_bloc.dart';

@immutable
abstract class CounterblocEvent {
}

class TambahEvent extends CounterblocEvent{
  final int counter;

  TambahEvent({this.counter=1});
}

class KurangEvent extends CounterblocEvent{

}
