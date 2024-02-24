import 'package:flutter/material.dart';
import 'package:bmi_calculate/pages/calculate_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ).copyWith(
          appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xff090e21),
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w500),
              foregroundColor: Colors.white)),
      home: const CalculatePage(),
    );
  }
}
