

// import 'package:flutter/material.dart';

import 'package:e_shop/API_E_SHOP/SCREEN_API/screen/home_page.dart';
import 'package:e_shop/Divice_Bottom_nav/Divices_Nav/divices_nav.dart';
import 'package:e_shop/Divice_Bottom_nav/fly_bottom_nav/fly_divice_nav.dart';
import 'package:e_shop/Presentation/screen/Splash_Screen_Page/slpash_screen.dart';
import 'package:e_shop/Presentation/screen/home_main_page/test_copilot.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),

      // main_page
      // home: SplashScreen(),
      // home: DivicesNav(),

      // home: FlyDiviceNav(),

      // api home page
      // home: HomePage(),

      home:LoginScreen(),
    );
  }
}
