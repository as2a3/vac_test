import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vac_test/app/home/presentation/cubit/filter_list/filter_cubit.dart';
import 'package:vac_test/app/home/presentation/cubit/navigation/navigation_cubit.dart';
import 'package:vac_test/app/home/presentation/cubit/orders_list/home_cubit.dart';
import 'package:vac_test/app/home/presentation/pages/filter_page.dart';
import 'package:vac_test/app/home/presentation/pages/home_page.dart';
import 'package:vac_test/core/constants.dart';
import 'package:vac_test/injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => di.getIt<HomeCubit>()),
            BlocProvider(create: (_) => di.getIt<FilterCubit>()),
            BlocProvider(create: (_) => di.getIt<NavigationCubit>()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              useMaterial3: true,
              primarySwatch: primarySwatch,
              scaffoldBackgroundColor: scaffoldBackgroundColor,
              primaryColor: primaryColor,
              primaryColorDark: primaryColorBlack,
              hintColor: appHintColor,
              colorScheme: appColorScheme,
              fontFamily: 'BukraRegular',
              textTheme: appTextTheme,
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => const HomePage(),
              '/filter': (context) => const FilterPage(),
            },
          ),
        );
      },
    );
  }
}
