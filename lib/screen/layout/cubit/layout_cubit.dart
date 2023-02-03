import 'package:flutter_bloc/flutter_bloc.dart';

import 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  int index = 0;

  void changeIndex(int newIndex) {
    index = newIndex;
    emit(ChangeIndexState());
  }
}
