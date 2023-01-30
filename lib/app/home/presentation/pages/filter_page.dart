import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vac_test/app/home/domain/entities/filter_entity.dart';
import 'package:vac_test/app/home/presentation/cubit/filter_list/filter_cubit.dart';
import 'package:vac_test/app/home/presentation/widgets/order_item_widget.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  Future<void> _loadFilteredOrders(BuildContext context, String id) async {
    await context.read<FilterCubit>().loadFilteredOrders(id);
  }

  @override
  Widget build(BuildContext context) {
    final filter = ModalRoute.of(context)!.settings.arguments as FilterEntity;
    _loadFilteredOrders(context, filter.id);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25.w,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 25.h,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark,
                  borderRadius: BorderRadius.all(Radius.circular(4.w)),
                ),
                child: Stack(
                  children: [
                    const SizedBox(
                      width: double.infinity,
                    ),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          filter.name,
                          style:
                          Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Theme.of(context).primaryColor,
                            fontFamily: 'ComicSansMSBold',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${filter.total} Tl',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontFamily: 'ComicSansMSBold',
                        fontStyle: FontStyle.italic,
                      ),
                ),
                Text(
                  '${filter.itemsCount} Orders',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontFamily: 'ComicSansMSBold',
                      ),
                ),
              ],
            ),
            Divider(
              height: 24.h,
              color: Theme.of(context).primaryColor.withOpacity(0.5),
            ),
            Expanded(
              child: BlocConsumer<FilterCubit, FilterState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return state.when(
                    initial: () => Container(),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (error) => Center(child: Text(error)),
                    success: (orders) {
                      return ListView.separated(
                        itemCount: orders.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
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
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
