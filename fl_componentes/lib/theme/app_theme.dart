import 'package:flutter/material.dart';

class AppTheme {
  //Color primario
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    //AppBar Theme
    appBarTheme: const AppBarTheme(
        color: primary,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        iconTheme: IconThemeData(color: Colors.white)),
    //ListTile Theme
    listTileTheme: const ListTileThemeData(iconColor: primary),
    //TextButton Theme
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary)),
    //FloatingActionButton
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      foregroundColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: primary, foregroundColor: Colors.white)),
    //InputDecoration
    inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: const TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: primary),
            borderRadius: BorderRadius.circular(5)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: primary)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        )),
        sliderTheme: const SliderThemeData(
          activeTrackColor: primary,
          thumbColor: primary
        )
  );
}
