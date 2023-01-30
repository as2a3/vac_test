import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vac_test/app/home/domain/entities/order_entity.dart';
import 'package:vac_test/app/home/domain/use_cases/get_filtered_orders_use_case.dart';

part 'filter_state.dart';
part 'filter_cubit.freezed.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit(this.getFilteredOrdersUseCase) : super(const FilterState.initial());
  final GetFilteredOrdersUseCase getFilteredOrdersUseCase;

  Future<void> loadFilteredOrders(String id) async {
    emit(const FilterState.loading());
    final response = await getFilteredOrdersUseCase(id);
    response.fold(
          (l) => emit(FilterState.error(l)),
          (r) => emit(FilterState.success(r)),
    );
  }
}
