part of 'tab_handler_cubit.dart';

@immutable
abstract class TabHandlerState extends Equatable {
  final int selectedTab;

  const TabHandlerState({required this.selectedTab});

  TabHandlerState copyWith({int? selectedTab});
}

class TabHandlerInitial extends TabHandlerState {
  const TabHandlerInitial({super.selectedTab = 0});

  @override
  List<Object> get props => [selectedTab];

  @override
  TabHandlerInitial copyWith({int? selectedTab}) {
    return TabHandlerInitial(
      selectedTab: selectedTab ?? this.selectedTab,
    );
  }
}
