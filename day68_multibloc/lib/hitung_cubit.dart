import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'hitung_state.dart';

class HitungCubit extends Cubit<int> {
  HitungCubit() : super(0);

  void increment()=>emit(state+1);
  void decrement()=>emit(state-1);

}
