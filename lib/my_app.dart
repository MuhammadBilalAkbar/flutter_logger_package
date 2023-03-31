import 'package:flutter/material.dart';

import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Logger Package Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            centerTitle: true,
          ),
          textTheme: TextTheme(
            bodyMedium: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              textStyle: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
        home: const HomePage(title: 'Logger Package Demo'),
      );
}
