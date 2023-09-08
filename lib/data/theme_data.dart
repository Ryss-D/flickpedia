import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  primaryColor: Colors.blue[500], 
  scaffoldBackgroundColor: Colors.white, 
  textTheme: const TextTheme(
    titleMedium: TextStyle(color: Colors.black87), 
    bodyMedium: TextStyle(color: Colors.black), 
  ),
);

final ThemeData darkTheme = ThemeData(
  primaryColor: Colors.blue[700], 
  scaffoldBackgroundColor: Colors.black, 
  textTheme: const  TextTheme(
    titleMedium: TextStyle(color: Colors.white), 
    bodyMedium: TextStyle(color: Colors.white70), 
  ),
);
