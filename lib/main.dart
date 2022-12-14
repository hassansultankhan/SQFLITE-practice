import 'package:flutter/material.dart';
import 'homescreen.dart';

void main() {
  runApp( MaterialApp(
    title: "Sqflite practice",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        colorScheme: const ColorScheme(
          primary: Color.fromARGB(255, 246, 244, 229),
          secondary: Color.fromARGB(255, 112, 220, 100),
          surface: Colors.grey,
          background: Color.fromARGB(255, 201, 217, 142),
          error: Colors.grey,
          onPrimary: Colors.deepOrange,
          onSecondary: Color.fromARGB(255, 41, 11, 11),
          onSurface: Colors.grey,
          onBackground: Colors.grey,
          onError: Colors.grey,
          brightness: Brightness.light,
  ),
  ),
  home: homeScreen(),
  ),
  );
}

