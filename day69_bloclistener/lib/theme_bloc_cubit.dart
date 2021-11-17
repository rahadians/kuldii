import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_bloc_state.dart';

class ThemeBlocCubit extends Cubit<bool> {
  ThemeBlocCubit() : super(false);

  void changeTheme()=>emit(!state);

}
