import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_calculator_dribbble_design/screens/calculator/calculator_screen.dart';
import 'package:theme_calculator_dribbble_design/theme/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeProvider.themeData,
          darkTheme: themeProvider.darkThemeData,
          themeMode: ThemeMode.system,
          home: CalculatorScreen(),
        );
      }
    );
  }
}
