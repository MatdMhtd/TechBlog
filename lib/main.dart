import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tech_app/my_colors.dart';
import 'package:tech_app/view/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: SolidColors.statusBarColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: SolidColors.navigatorBarColor,
      systemNavigationBarIconBrightness: Brightness.dark));

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
                  fontFamily: 'dana',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
              headlineMedium: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color.fromARGB(200, 255, 255, 255)),
              headlineSmall: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: SolidColors.seeMore),
              bodyMedium: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 13,
                  fontWeight: FontWeight.w300),
              bodyLarge: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: SolidColors.signUpText)),
          elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.yellow;
              }
              return SolidColors.colorPrimary;
            }),
          )),
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(width: 2)),
              filled: true,
              fillColor: Colors.white)),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
