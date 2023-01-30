import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vac_test/app/home/domain/entities/order_entity.dart';

class OrderItemWidget extends StatelessWidget {
  const OrderItemWidget({
    Key? key,
    required this.order,
  }) : super(key: key);
  final OrderEntity order;

  @override
  Widget build(BuildContext context) {
    const horizontalPadding = EdgeInsets.only(
      left: 16,
      right: 12.5,
    );
    final valueStyle = Theme.of(context).textTheme.headlineSmall!.copyWith(
      fontSize: 14.sp,
    );
    return Container(
      padding: const EdgeInsets.only(
        top: 13,
        bottom: 21,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: const Color(0xFF1F6E1A),
          ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Padding(
            padding: horizontalPadding,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    order.id,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Text(
                  '${order.itemsCount} items',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
          const SizedBox(height: 14,),
          Padding(
            padding: horizontalPadding,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    order.dateTime,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Sold',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(width: 8,),
                    Text(
                      '${order.sold}',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 32,
            color: Theme.of(context).hintColor,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DataItem(
                  flex: 1,
                  title: 'Driver',
                  value: order.driver,
                  isFirst: true,
                  valueStyle: valueStyle.copyWith(
                    color: const Color(0xFF303030),
                  ),
                ),
                SizedBox(width: 8.w,),
                DataItem(
                  flex: 1,
                  title: 'Food',
                  value: order.food,
                  valueStyle: valueStyle.copyWith(
                    color: const Color(0xFFE90000),
                  ),
                ),
                SizedBox(width: 8.w,),
                DataItem(
                  flex: 2,
                  title: 'Commission',
                  value: order.commission,
                  valueStyle: valueStyle.copyWith(
                    color: const Color(0xFFFFBE19),
                  ),
                ),
                SizedBox(width: 8.w,),
                DataItem(
                  flex: 2,
                  title: 'Net Profit',
                  value: order.netProfit,
                  valueStyle: valueStyle.copyWith(
                    color: const Color(0xFF1F6E1A),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DataItem extends StatelessWidget {
  const DataItem({
    Key? key,
    required this.title,
    required this.value,
    this.flex = 1,
    this.isFirst = false,
    this.valueStyle,
  }) : super(key: key);
  final String title;
  final int value;
  final int flex;
  final bool isFirst;
  final TextStyle? valueStyle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Column(
        children: [
          AutoSizeText(
            title,
            maxLines: 1,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          SizedBox(height: 8.w,),
          Row(
            children: [
              if (!isFirst)
                Container(
                  height: 19.h,
                  width: 1.w,
                  color: Theme.of(context).hintColor,
                ),
              Expanded(
                child: Center(
                  child: AutoSizeText(
                    value.toString(),
                    maxLines: 1,
                    style: valueStyle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

