import 'package:final_weather/constants/constants.dart';

import 'package:final_weather/screens/city_page_screen.dart';
import 'package:final_weather/screens/home_page_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(color: kMainColor),
          scaffoldBackgroundColor: kMainColor),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/second': (context) => const CityPage(),
      },
    );
  }
}
