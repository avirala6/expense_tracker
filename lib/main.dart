import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 115, 82, 164));

var kDarkColorScheme = ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 5, 90, 125),brightness: Brightness.dark);

void main(){
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    darkTheme: ThemeData.dark().copyWith(
      colorScheme: kDarkColorScheme,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: kDarkColorScheme.onPrimaryContainer,
        foregroundColor: kDarkColorScheme.primaryContainer
      ),
      cardTheme: ThemeData().cardTheme.copyWith(
        color: kDarkColorScheme.primaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8,)
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kDarkColorScheme.primaryContainer,
          foregroundColor: kDarkColorScheme.onPrimaryContainer
        )
      ),
    ),
    theme: ThemeData().copyWith(
      colorScheme: kColorScheme,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: kColorScheme.onPrimaryContainer,
        foregroundColor: kColorScheme.primaryContainer
      ),
      cardTheme: ThemeData().cardTheme.copyWith(
        color: kColorScheme.primaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8,)
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kColorScheme.secondaryContainer
        )
      ),
      
    ),
    themeMode: ThemeMode.system,
    home: const Expenses(),
  ));
}