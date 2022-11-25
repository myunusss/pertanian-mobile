import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:pertanian/app/app_blocs.dart';
import 'package:pertanian/app/app_pages.dart';
import 'package:pertanian/core/const/strings.dart';
import 'package:pertanian/data/local/local_data_source.dart';
import 'package:pertanian/di/injection_container.dart';
import 'package:pertanian/presentation/home/home_page.dart';
import 'package:pertanian/presentation/login/login_page.dart';

import '../core/style/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();

    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    );

    final token = getIt.get<LocalDataSource>().getToken();
    final initialRoute = token == null || token == 'null' ? LoginPage.routeName : HomePage.routeName;

    return MultiBlocProvider(
      providers: AppBlocs.items,
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: Strings.appName,
            theme: AppTheme.lightTheme,
            initialRoute: initialRoute,
            getPages: AppPages.routes,
          );
        },
      ),
    );
  }
}
