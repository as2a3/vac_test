import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vac_test/app/home/presentation/cubit/navigation/navigation_cubit.dart';
import 'package:vac_test/app/home/presentation/cubit/orders_list/home_cubit.dart';
import 'package:vac_test/app/home/presentation/widgets/filter_item_widget.dart';
import 'package:vac_test/app/home/presentation/widgets/order_item_widget.dart';
import 'package:vac_test/core/constants.dart';
import 'package:vac_test/core/enum/navigation_enum.dart';
import 'package:vac_test/gen/assets.gen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Future<void> _loadOrders(BuildContext context) async {
    await context.read<HomeCubit>().loadOrders();
  }

  @override
  Widget build(BuildContext context) {
    _loadOrders(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 25.h,
                bottom: 25.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 25.h,
                      left: 25.h,
                      right: 25.h,
                      bottom: 8.h,
                    ),
                    child: Text(
                      'Business Name',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.3,
                    child: ListView.builder(
                      scrollDirection:  Axis.horizontal,
                      itemCount: context.read<HomeCubit>().filterEntity.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: index == 0 ? 24.h : 0,
                            right: 24.0.h,
                          ),
                          child: FilterItemWidget(
                            filterEntity: context.read<HomeCubit>().filterEntity[index],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Theme.of(context).primaryColor,
                child: BlocConsumer<HomeCubit, HomeState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return state.when(
                      initial: () => Container(),
                      loading: () =>
                      const Center(child: CircularProgressIndicator()),
                      error: (error) => Center(child: Text(error)),
                      success: (orders) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                          ),
                          child: ListView.separated(
                            itemCount: orders.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  top: index == 0 ? 25.h : 0,
                                  bottom: index == orders.length - 1 ? 25.h : 0,
                                ),
                                child: OrderItemWidget(
                                  order: orders[index],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                height: 25,
                              );
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).primaryColor,
        child: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(bottomNavBarRounded),
                  topLeft: Radius.circular(bottomNavBarRounded),
                ),
                // shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).primaryColorDark,
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(bottomNavBarRounded),
                  topRight: Radius.circular(bottomNavBarRounded),
                ),
                child: BottomNavigationBar(
                  currentIndex: state.index,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  items: [
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: EdgeInsets.only(left: 12.0.w),
                        child: SvgPicture.asset(
                          Assets.svg.unSelectedUser,
                        ),
                      ),
                      activeIcon: Padding(
                        padding: EdgeInsets.only(left: 12.0.w),
                        child: SvgPicture.asset(
                          Assets.svg.user,
                        ),
                      ),
                      label: 'Profile',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(Assets.svg.unSelectedCar),
                      activeIcon: SvgPicture.asset(Assets.svg.car),
                      label: 'Car',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(Assets.svg.unSelectedStore),
                      activeIcon: SvgPicture.asset(Assets.svg.store),
                      label: 'Store',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(Assets.svg.unSelectedWallet),
                      activeIcon: SvgPicture.asset(Assets.svg.wallet),
                      label: 'Wallet',
                    ),
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: EdgeInsets.only(right: 12.0.w),
                        child: SvgPicture.asset(Assets.svg.unSelectedRestaurant),
                      ),
                      activeIcon: Padding(
                        padding: EdgeInsets.only(right: 12.0.w),
                        child: SvgPicture.asset(Assets.svg.restaurant),
                      ),
                      label: 'Restaurant',
                    ),
                  ],
                  onTap: (index) {
                    if (index == 0) {
                      context.read<NavigationCubit>().getNavBarItem(NavbarItem.profile);
                    } else if (index == 1) {
                      context.read<NavigationCubit>().getNavBarItem(NavbarItem.car);
                    } else if (index == 2) {
                      context.read<NavigationCubit>().getNavBarItem(NavbarItem.store);
                    } else if (index == 3) {
                      context.read<NavigationCubit>().getNavBarItem(NavbarItem.wallet);
                    } else if (index == 4) {
                      context.read<NavigationCubit>().getNavBarItem(NavbarItem.restaurants);
                    }
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
