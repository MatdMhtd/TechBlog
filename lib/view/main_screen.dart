import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_app/component/my_colors.dart';
import 'package:tech_app/component/my_component.dart';
import 'package:tech_app/gen/assets.gen.dart';
import 'package:tech_app/view/home_screen.dart';
import 'package:tech_app/view/profile_screen.dart';
import 'package:tech_app/view/sign_up.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  RxInt indexPage = 0.obs;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var bodMargin = size.width / 10;
    var themText = Theme.of(context).textTheme;
    List<Widget> techMainScreen = [
      HomeScreen(size: size, themText: themText, bodMargin: bodMargin), //0
      SignUpScreen(textTheme: themText), //1
      ProfileScreen(size: size, themText: themText, bodMargin: bodMargin), //2
    ];

    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: Drawer(
            backgroundColor: SolidColors.scafoldBg,
            child: Padding(
              padding: EdgeInsets.only(left: bodMargin, right: bodMargin),
              child: ListView(
                children: [
                  DrawerHeader(
                    child: Image.asset(
                      Assets.lib.assets.images.logo.path,
                      scale: 2.5,
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "پروفایل کاربری",
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: () {},
                  ),
                  const Divider(
                    color: SolidColors.dividerColor,
                  ),
                  ListTile(
                    title: const Text(
                      "درباره تِک‌ بِلاگ",
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: () {},
                  ),
                  const Divider(
                    color: SolidColors.dividerColor,
                  ),
                  ListTile(
                    title: const Text(
                      "اشتراک گذاری تِک بِلاگ",
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: () {},
                  ),
                  const Divider(
                    color: SolidColors.dividerColor,
                  ),
                  ListTile(
                    title: const Text(
                      "تِک‌ بِلاگ در گیت هاب",
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: () {
                      MyComponent.myLauncher(
                          "https://github.com/MatdMhtd/TechBlog");
                    },
                  ),
                  const Divider(
                    color: SolidColors.dividerColor,
                  ),
                ],
              ),
            )),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: SolidColors.scafoldBg,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {
                    _key.currentState!.openDrawer();
                  },
                  child: const Icon(Icons.menu, color: Colors.black)),
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
          Obx(() {
            return Center(child: techMainScreen[indexPage.value]);
          }),

          //bottomNavigationBar
          BottomNavigationBar(
              bodMargin: bodMargin,
              size: size,
              changeScreen: (int value) {
                indexPage.value = value;
              }),
        ]),
      ),
    );
  }
}

final GlobalKey<ScaffoldState> _key = GlobalKey();

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
                  onPressed: (() => widget.changeScreen(2)),
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
