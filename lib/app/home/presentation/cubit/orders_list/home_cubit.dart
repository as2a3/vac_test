import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vac_test/app/home/domain/entities/filter_entity.dart';
import 'package:vac_test/app/home/domain/entities/order_entity.dart';
import 'package:vac_test/app/home/domain/use_cases/get_all_orders_use_case.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.getOrdersUseCase) : super(const HomeState.initial()) {
    _generateFilterList();
  }
  final GetAllOrdersUseCase getOrdersUseCase;
  late final List<FilterEntity> filterEntity;

  void _generateFilterList() {
    filterEntity = [
      const FilterEntity(id: '1', name: 'Today Revenue', itemsCount: 5, total: 732.0,),
      const FilterEntity(id: '2', name: 'Week so far', itemsCount: 10, total: 1531,),
      const FilterEntity(id: '3', name: 'Monthly Revenue', itemsCount: 18, total: 3200,),
    ];
  }

  Future<void> loadOrders() async {
    emit(const HomeState.loading());
    final response = await getOrdersUseCase(null);
    response.fold(
          (l) => emit(HomeState.error(l)),
          (r) => emit(HomeState.success(r)),
    );
  }
}
