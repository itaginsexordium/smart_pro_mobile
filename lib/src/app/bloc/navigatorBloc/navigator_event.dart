part of 'navigator_bloc.dart';

@immutable
sealed class NavigatorEvent extends Equatable {
  const NavigatorEvent();
}

final class AppStarted extends NavigatorEvent {
  @override
  List<Object?> get props => [];
}

final class ChangePage extends NavigatorEvent {
  const ChangePage(this.index);

  final int index;
  @override
  List<Object?> get props => [index];
}
