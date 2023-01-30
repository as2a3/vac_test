import 'package:dartz/dartz.dart';
import 'package:vac_test/app/home/domain/entities/order_entity.dart';
import 'package:vac_test/app/home/domain/repositories/home_repository.dart';
import 'package:vac_test/core/use_cases/use_case.dart';

class GetAllOrdersUseCase implements UseCase<Either<String, List<OrderEntity>>, Unit> {
  final HomeRepository repository;

  GetAllOrdersUseCase(this.repository);

  @override
  Future<Either<String, List<OrderEntity>>> call(Unit? unit) async {
    return await repository.getAllOrders();
  }
}
