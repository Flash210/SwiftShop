import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../features/views/home/home_screen.dart';

class AppRoute {
  // static const String SplashScreen = '/';
  static const String HomeScreen = '/home';

  // static const String LoginScreen = '/login';
  // static const String RegisterScreen = '/register';
  // static const String ProfileScreen = '/profile';

  static List<GetPage> pages = [
    GetPage(name: HomeScreen, page: () => HomePage()),

    // GetPage(name: SplashScreen, page: () => SplashScreen()),
    // GetPage(name: LoginScreen, page: () => LoginScreen()),
    // GetPage(name: RegisterScreen, page: () => RegisterScreen()),
    // GetPage(name: ProfileScreen, page: () => ProfileScreen()),
  ];
}
