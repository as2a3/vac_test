import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'home_rest_client.g.dart';

@RestApi(baseUrl: 'https://test.com/')
abstract class HomeRestClient {
  factory HomeRestClient(Dio dio, {String baseUrl,}) = _HomeRestClient;

  @GET('GetAllOrders')
  Future<dynamic> getAllOrders();
}