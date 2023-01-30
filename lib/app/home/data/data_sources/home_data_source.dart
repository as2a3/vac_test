import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' as dio;
import 'package:vac_test/app/home/data/data_sources/home_rest_client.dart';
import 'package:vac_test/app/home/data/models/order_model.dart';
import 'package:vac_test/core/data/dio_exception.dart';

abstract class HomeDataSource {
  Future<Either<String, List<OrderModel>>> getAllOrders();

  Future<Either<String, List<OrderModel>>> getFilteredOrders(String id);
}

class HomeDataSourceImpl implements HomeDataSource {
  final HomeRestClient client;

  HomeDataSourceImpl({
    required this.client,
  });

  @override
  Future<Either<String, List<OrderModel>>> getAllOrders() async {
    try {
      final response = jsonDecode(await client.getAllOrders()) as List<dynamic>;
      return Right(response.map((e) => OrderModel.fromJson(e)).toList());
    } on dio.DioError catch (e) {
      return Left(DioExceptions.fromDioError(e).message);
    } catch (error) {
      return Left(error.toString());
    }
  }

  @override
  Future<Either<String, List<OrderModel>>> getFilteredOrders(String id) async {
    /// Next filtration api || same getAllOrders api with headers
    try {
      final response = jsonDecode(await client.getAllOrders()) as List<dynamic>;
      return Right(response.map((e) => OrderModel.fromJson(e)).toList());
    } on dio.DioError catch (e) {
      return Left(DioExceptions.fromDioError(e).message);
    } catch (error) {
      return Left(error.toString());
    }
  }
}
