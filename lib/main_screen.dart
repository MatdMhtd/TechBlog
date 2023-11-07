import 'package:flutter/material.dart';
import 'package:tech_app/gen/assets.gen.dart';
import 'package:tech_app/my_colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var themText = Theme.of(context).textTheme;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.menu),
                  Image(
                      height: size.height / 13.63,
                      image: AssetImage(
                          Assets.lib.assets.images.splashScreen.path)),
                  Icon(Icons.search),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: size.height / 4.205,
                    width: size.width / 1.19,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image(
                                  image: AssetImage(
                                      Assets.lib.assets.images.posterTest.path))
                              .image),
                    ),
                    foregroundDecoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        gradient: LinearGradient(
                            colors: GradiantColors.homePosterCoverGradiant,
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                  ),
                  Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "ملیکا عزیزی یک روز پیش",
                                style: themText.headlineMedium,
                              ),
                              Text(
                                "Likes 256",
                                style: themText.headlineMedium,
                              )
                            ],
                          ),
                          Text(
                            "دوازده قدم برنامه نویسی یک دوره ی...س",
                            style: themText.headlineLarge,
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
