import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counterbloc_event.dart';
part 'counterbloc_state.dart';

class CounterblocBloc extends Bloc<CounterblocEvent, CounterblocState> {
  CounterblocBloc() : super(CounterblocInitial()) {

    on<TambahEvent>((event, emit) {
      //artinya jika tambahevent benar
      print(state.counter);

      emit(state is CounterLoaded
          ? CounterLoaded(state.counter + event.counter)
          : CounterLoaded(event.counter));
    });

    on<KurangEvent>((event, emit) {
      //artinya jika tambahevent benar
      // print(emit);
      emit(state is CounterLoaded
          ? CounterLoaded(state.counter - 1)
          : CounterLoaded(-1));


    });

  }
}
