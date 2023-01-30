import 'package:dartz/dartz.dart';
import 'package:vac_test/app/home/domain/entities/order_entity.dart';

abstract class HomeRepository {
  Future<Either<String, List<OrderEntity>>> getAllOrders();

  Future<Either<String, List<OrderEntity>>> getFilteredOrders(String id);
}
