import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vac_test/core/enum/navigation_enum.dart';

part 'navigation_state.dart';
part 'navigation_cubit.freezed.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState.state(NavbarItem.wallet, 3));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.profile:
        emit(const NavigationState.state(NavbarItem.profile, 0));
        break;
      case NavbarItem.car:
        emit(const NavigationState.state(NavbarItem.car, 1));
        break;
      case NavbarItem.store:
        emit(const NavigationState.state(NavbarItem.store, 2));
        break;
      case NavbarItem.wallet:
        emit(const NavigationState.state(NavbarItem.wallet, 3));
        break;
      case NavbarItem.restaurants:
        emit(const NavigationState.state(NavbarItem.restaurants, 4));
        break;
    }
  }
}
