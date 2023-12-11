import 'package:flutter/material.dart';

ThemeData myLightTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.blueAccent,
      toolbarHeight: 100,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    switchTheme: const SwitchThemeData(
      thumbColor: MaterialStatePropertyAll(Colors.blueAccent),
      trackColor: MaterialStatePropertyAll(Colors.white),
      trackOutlineColor: MaterialStatePropertyAll(Colors.white),
    ),
    radioTheme: const RadioThemeData(
      fillColor: MaterialStatePropertyAll(Colors.blueAccent),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.blueAccent,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.blueAccent,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      floatingLabelStyle: TextStyle(color: Colors.blueAccent),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(Colors.white),
          backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: Colors.blueAccent, circularTrackColor: Colors.grey),
  );
}

ThemeData myDarkTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.black54,
      toolbarHeight: 100,
      titleTextStyle: TextStyle(
        color: Colors.amber,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    switchTheme: const SwitchThemeData(
        thumbColor: MaterialStatePropertyAll(Colors.black54),
        trackColor: MaterialStatePropertyAll(Colors.amber),
        trackOutlineColor: MaterialStatePropertyAll(Colors.amber)),
    radioTheme: const RadioThemeData(
      fillColor: MaterialStatePropertyAll(Colors.amber),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.amber,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.amber,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      floatingLabelStyle: TextStyle(color: Colors.amber),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(Colors.black),
          backgroundColor: MaterialStatePropertyAll(Colors.amber)),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Colors.amber,
      circularTrackColor: Colors.grey,
    ),
    colorScheme: const ColorScheme.dark(),
  );
}
