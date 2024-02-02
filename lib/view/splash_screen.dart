import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tech_app/gen/assets.gen.dart';
import 'package:tech_app/view/main_screen.dart';
import 'package:tech_app/my_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) => {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const MainScreen()),
          )
        });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: widthScreen / 4,
                  ),
                  Image(
                    width: widthScreen / 2,
                    height: heightScreen / 7,
                    alignment: Alignment.center,
                    image:
                        AssetImage(Assets.lib.assets.images.splashScreen.path),
                  ),
                  SizedBox(
                    width: widthScreen / 4,
                  ),
                ],
              ),
              SizedBox(
                height: heightScreen / 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: widthScreen / 2.4,
                  ),
                  SpinKitFadingCube(
                      color: SolidColors.colorPrimary, size: widthScreen / 6),
                  SizedBox(
                    width: widthScreen / 2.4,
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
