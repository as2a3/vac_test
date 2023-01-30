import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vac_test/app/home/domain/entities/filter_entity.dart';

class FilterItemWidget extends StatelessWidget {
  const FilterItemWidget({super.key, required this.filterEntity,});
  final FilterEntity filterEntity;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, '/filter', arguments: filterEntity,),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.36,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.all(Radius.circular(10.h)),
        ),
        padding: EdgeInsets.all(12.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              filterEntity.name,
              maxLines: 1,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Theme.of(context).primaryColor,
              ),
            ),
            Center(
              child: AutoSizeText(
                filterEntity.total.toString(),
                maxLines: 1,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            AutoSizeText(
              '${filterEntity.itemsCount} Orders',
              maxLines: 1,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
