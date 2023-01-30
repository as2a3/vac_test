import 'package:dartz/dartz.dart';
import 'package:vac_test/app/home/domain/entities/order_entity.dart';
import 'package:vac_test/app/home/domain/repositories/home_repository.dart';
import 'package:vac_test/core/use_cases/use_case.dart';

class GetFilteredOrdersUseCase implements UseCase<Either<String, List<OrderEntity>>, String> {
  final HomeRepository repository;

  GetFilteredOrdersUseCase(this.repository);

  @override
  Future<Either<String, List<OrderEntity>>> call(String id) async {
    return await repository.getFilteredOrders(id);
  }
}
