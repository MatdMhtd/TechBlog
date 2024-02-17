import 'package:flutter/material.dart';
import 'package:tech_app/gen/assets.gen.dart';
import 'package:tech_app/my_colors.dart';
import 'package:tech_app/view/home_screen.dart';
import 'package:tech_app/view/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var indexPage = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var bodMargin = size.width / 10;
    var themText = Theme.of(context).textTheme;
    List<Widget> techMainScreen = [
      HomeScreen(size: size, themText: themText, bodMargin: bodMargin), //0
      ProfileScreen(size: size, themText: themText, bodMargin: bodMargin), //1
    ];

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
          //HomeScreen(size: size, themText: themText, bodMargin: bodMargin),
          Center(child: techMainScreen[indexPage]),

          //bottomNavigationBar
          BottomNavigationBar(
              bodMargin: bodMargin,
              size: size,
              changeScreen: (int value) {
                setState(() {
                  indexPage = value;
                });
              }),
        ]),
      ),
    );
  }
}

class BottomNavigationBar extends StatefulWidget {
  const BottomNavigationBar(
      {super.key,
      required this.bodMargin,
      required this.size,
      required this.changeScreen});

  final double bodMargin;
  final Size size;
  final Function(int) changeScreen;

  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: widget.bodMargin,
      right: widget.bodMargin,
      top: 550,
      child: Stack(children: [
        Container(
          height: widget.size.height / 10,
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
          left: widget.bodMargin,
          right: widget.bodMargin,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: (() => widget.changeScreen(0)),
                  icon: ImageIcon(
                    AssetImage(Assets.lib.assets.icons.homeIcon.path),
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: (() => widget.changeScreen(1)),
                  icon: ImageIcon(
                    AssetImage(Assets.lib.assets.icons.wIcon.path),
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: (() => widget.changeScreen(1)),
                  icon: ImageIcon(
                    AssetImage(Assets.lib.assets.icons.userIcon.path),
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
