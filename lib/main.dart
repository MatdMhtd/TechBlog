import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tech_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("fa", "IR"),
      ],
      locale: const Locale("fa", "IR"),
      theme: ThemeData(
        fontFamily: 'dana',
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
              fontFamily: 'dana', fontSize: 16, fontWeight: FontWeight.w700),
          headlineMedium: TextStyle(
              fontFamily: 'dana', fontSize: 14, fontWeight: FontWeight.w300),
          bodyMedium: TextStyle(
              fontFamily: 'dana', fontSize: 13, fontWeight: FontWeight.w300),
        ),
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
