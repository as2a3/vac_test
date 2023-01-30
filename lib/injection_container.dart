import 'package:get_it/get_it.dart';
import 'package:vac_test/app/home/data/data_sources/home_data_source.dart';
import 'package:vac_test/app/home/data/data_sources/home_rest_client.dart';
import 'package:vac_test/app/home/data/repositories/home_repository_impl.dart';
import 'package:vac_test/app/home/domain/repositories/home_repository.dart';
import 'package:vac_test/app/home/domain/use_cases/get_all_orders_use_case.dart';
import 'package:vac_test/app/home/domain/use_cases/get_filtered_orders_use_case.dart';
import 'package:vac_test/app/home/presentation/cubit/filter_list/filter_cubit.dart';
import 'package:vac_test/app/home/presentation/cubit/navigation/navigation_cubit.dart';
import 'package:vac_test/app/home/presentation/cubit/orders_list/home_cubit.dart';
import 'package:vac_test/core/constants.dart';
import 'package:vac_test/core/data/dio_client.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  //! Core
  getIt.registerSingleton<DioClient>(DioClient());
  getIt.registerSingleton<HomeRestClient>(
    HomeRestClient(
      getIt<DioClient>().getDio,
      baseUrl: baseUrl,
    ),
  );

  // DataSources
  getIt.registerLazySingleton<HomeDataSource>(
        () => HomeDataSourceImpl(client: getIt<HomeRestClient>(),),);

  // Repository
  getIt.registerLazySingleton<HomeRepository>(
        () => HomeRepositoryImpl(
      dataSource: getIt<HomeDataSource>(),
    ),
  );

  // UseCases
  getIt.registerLazySingleton(() => GetAllOrdersUseCase(getIt()));
  getIt.registerLazySingleton(() => GetFilteredOrdersUseCase(getIt()));

  // Bloc & Cubit
  getIt.registerFactory(() => HomeCubit(getIt()));
  getIt.registerFactory(() => FilterCubit(getIt()));
  getIt.registerFactory(() => NavigationCubit());
}
