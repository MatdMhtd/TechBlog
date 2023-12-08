import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_app/gen/assets.gen.dart';
import 'package:tech_app/my_colors.dart';
import 'package:tech_app/my_strings.dart';

import 'models/fackData.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var bodMargin = size.width / 11;
    var themText = Theme.of(context).textTheme;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: Column(
            children: <Widget>[
              //menu
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.menu),
                  Image(
                      height: size.height / 13.63,
                      image: AssetImage(
                          Assets.lib.assets.images.splashScreen.path)),
                  const Icon(Icons.search),
                ],
              ),
              //poster
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
              ),

              SizedBox(
                height: size.height / 22,
              ),
              //list tag
              SizedBox(
                height: size.height / 12,
                child: ListView.builder(
                  itemCount: listTag.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.fromLTRB(
                          8, 8, (index == 0 ? bodMargin : 16), 8),
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: GradiantColors.tags,
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft),
                              borderRadius: BorderRadius.circular(14)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: ImageIcon(
                                      AssetImage(
                                          Assets.lib.assets.icons.sharp.path),
                                      color: Colors.white,
                                      size: size.height / 41),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 8, 15, 8),
                                  child: Text(
                                    listTag[index].title,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                )
                              ])),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              //blog
              Padding(
                padding: EdgeInsets.only(right: bodMargin),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage(Assets.lib.assets.icons.bluePen.path),
                      color: SolidColors.seeMore,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      MyStrings.viewHotestBlog,
                      style: themText.headlineSmall,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
