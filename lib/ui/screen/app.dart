import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Splash_Screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "start biniyog app",
      theme: ThemeData(
        primarySwatch: Colors.green,

inputDecorationTheme: const InputDecorationTheme(
  filled: true,
  fillColor: Colors.grey,
  contentPadding: EdgeInsets.symmetric(horizontal: 16),
  border: OutlineInputBorder(borderSide: BorderSide.none),
),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding:const EdgeInsets.symmetric(vertical: 12),
          )
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.w500
          )
        ),
        brightness: Brightness.light
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const Splash_Screen(),
    );
  }
}
