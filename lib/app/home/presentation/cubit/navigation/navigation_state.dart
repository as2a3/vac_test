part of 'navigation_cubit.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState.state(NavbarItem navbarItem, int index) = _State;
}
