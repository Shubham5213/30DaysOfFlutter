import 'package:first_app/pages/cart_page.dart';
import 'package:first_app/core/store.dart';
import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:first_app/widgets/themes.dart';
// import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore_for_file: prefer_const_constructors
void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: '/home',
      routes: {
        "/": (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        // '/detail': (context) => const HomeDetailPage(),
        '/cart': (context) => const CartPage(),
      },
    );
  }
}
