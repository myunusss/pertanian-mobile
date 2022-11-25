import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:pertanian/app/my_app.dart';
import 'package:pertanian/di/injection_container.dart';

import 'app/init_hive.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await initializeDateFormatting('id_ID');
  await initHive();
  configureDependencies();

  runApp(const MyApp());
}
