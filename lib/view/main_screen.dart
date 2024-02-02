import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_app/gen/assets.gen.dart';
import 'package:tech_app/my_colors.dart';
import 'package:tech_app/view/home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var bodMargin = size.width / 10;
    var themText = Theme.of(context).textTheme;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: SolidColors.scafoldBg,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.menu, color: Colors.black),
              Image(
                  height: size.height / 13.63,
                  image:
                      AssetImage(Assets.lib.assets.images.splashScreen.path)),
              const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ],
          ),
        ),
        body: Stack(children: [
          HomeScreen(size: size, themText: themText, bodMargin: bodMargin),

          //bottomNavigationBar
          BottomNavigationBar(bodMargin: bodMargin, size: size),
        ]),
      ),
    );
  }
}

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({
    super.key,
    required this.bodMargin,
    required this.size,
  });

  final double bodMargin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: bodMargin,
      right: bodMargin,
      top: 550,
      child: Stack(children: [
        Container(
          height: size.height / 10,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(14)),
              gradient: LinearGradient(
                  colors: GradiantColors.bottomNav,
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight)),
        ),
        Positioned(
          top: 10,
          bottom: 10,
          left: bodMargin,
          right: bodMargin,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ImageIcon(
                AssetImage(Assets.lib.assets.icons.homeIcon.path),
                color: Colors.white,
                size: 24,
              ),
              ImageIcon(
                AssetImage(Assets.lib.assets.icons.wIcon.path),
                color: Colors.white,
                size: 24,
              ),
              ImageIcon(
                AssetImage(Assets.lib.assets.icons.userIcon.path),
                color: Colors.white,
                size: 24,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
