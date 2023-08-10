part of 'navigator_bloc.dart';

@immutable
sealed class NavigatorMainState extends Equatable {
  const NavigatorMainState();
}

final class NavigatorHome extends NavigatorMainState {
  @override
  List<Object?> get props => [];
}

final class NavigatorProfile extends NavigatorMainState {
  @override
  List<Object?> get props => [];
}

final class NavigatorCart extends NavigatorMainState {
  @override
  List<Object?> get props => [];
}

final class NavigatorCatalog extends NavigatorMainState {
  @override
  List<Object?> get props => [];
}
