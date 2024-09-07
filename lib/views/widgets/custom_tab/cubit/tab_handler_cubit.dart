import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'tab_handler_state.dart';

class TabHandlerCubit extends Cubit<TabHandlerState> {
  TabHandlerCubit() : super(const TabHandlerInitial());

  void setTab(int index) {
    emit(state.copyWith(selectedTab: index));
  }

  void resetTab() {
    emit(const TabHandlerInitial());
  }
}
