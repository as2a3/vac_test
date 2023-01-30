import 'package:dartz/dartz.dart';
import 'package:vac_test/app/home/data/data_sources/home_data_source.dart';
import 'package:vac_test/app/home/domain/entities/order_entity.dart';
import 'package:vac_test/app/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeDataSource dataSource;

  HomeRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<Either<String, List<OrderEntity>>> getAllOrders() async {
    return await dataSource.getAllOrders();
  }

  @override
  Future<Either<String, List<OrderEntity>>> getFilteredOrders(String id) async {
    return await dataSource.getFilteredOrders(id);
  }
}