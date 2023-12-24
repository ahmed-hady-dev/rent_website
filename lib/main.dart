import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rent_website/view/auth/login/login_view.dart';
import 'package:sizer/sizer.dart';

import 'core/dioHelper/dio_helper.dart';
import 'core/hive_helper/hive_helper.dart';
import 'core/router/router.dart';
import 'core/theme/theme.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  DioHelper.init();
  await HiveHelper.init();
  runApp(EasyLocalization(
    path: 'assets/translation',
    startLocale: const Locale('ar', 'EG'),
    supportedLocales: const [Locale('en', 'US'), Locale('ar', 'EG')],
    fallbackLocale: const Locale('ar', 'EG'),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Rent website',
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        onGenerateRoute: onGenerateRoute,
        themeMode: ThemeMode.light,
        theme: lightTheme(context),
        // home: const HomeView(),
        home: const LoginView(),
        locale: context.locale,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
      );
    });
  }
}
