import 'package:flutter/material.dart';
import 'package:tech_app/component/my_colors.dart';
import 'package:tech_app/component/my_strings.dart';
import 'package:tech_app/gen/assets.gen.dart';
import 'package:tech_app/models/fack_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.size,
    required this.themText,
    required this.bodMargin,
  });

  final Size size;
  final TextTheme themText;
  final double bodMargin;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
        child: Column(
          children: <Widget>[
            //poster
            Stack(
              children: [
                Container(
                  height: widget.size.height / 4.205,
                  width: widget.size.width / 1.19,
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
                              style: widget.themText.headlineMedium,
                            ),
                            Text(
                              "Likes 256",
                              style: widget.themText.headlineMedium,
                            )
                          ],
                        ),
                        Text(
                          "دوازده قدم برنامه نویسی یک دوره ی...س",
                          style: widget.themText.headlineLarge,
                        )
                      ],
                    ))
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            //list tag
            SizedBox(
              height: widget.size.height / 12,
              child: ListView.builder(
                itemCount: listTag.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(
                        8, 8, (index == 0 ? widget.bodMargin : 16), 8),
                    child: Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: GradiantColors.tags,
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft),
                            borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: ImageIcon(
                                    AssetImage(
                                        Assets.lib.assets.icons.sharp.path),
                                    color: Colors.white,
                                    size: widget.size.height / 41),
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
              padding: EdgeInsets.only(right: widget.bodMargin),
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
                    style: widget.themText.headlineSmall,
                  )
                ],
              ),
            ),
            SizedBox(
              height: widget.size.height / 3.5,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(
                        8, 8, index == 0 ? widget.bodMargin : 8, 8),
                    child: Column(
                      children: [
                        SizedBox(
                          height: widget.size.height / 5.3,
                          width: widget.size.width / 2.4,
                          child: Stack(children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(14)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          listBlogModel[index].imageUrl),
                                      fit: BoxFit.cover)),
                              foregroundDecoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14)),
                                  gradient: LinearGradient(
                                      colors: GradiantColors.blogColor,
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter)),
                            ),
                            Positioned(
                              bottom: 8,
                              right: 0,
                              left: 0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    listBlogModel[index].writer,
                                    style: widget.themText.headlineMedium,
                                  ),
                                  Text(
                                    "Likes: ${listBlogModel[index].likes}",
                                    style: widget.themText.headlineMedium,
                                  )
                                ],
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(
                          width: widget.size.width / 2.4,
                          child: Text(listBlogModel[index].content,
                              maxLines: 2, overflow: TextOverflow.ellipsis),
                        )
                      ],
                    ),
                  );
                },
                itemCount: listBlogModel.length,
                scrollDirection: Axis.horizontal,
              ),
            ),

            //podCast
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: widget.size.height / 3,
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(right: widget.bodMargin),
                  child: Row(
                    children: [
                      ImageIcon(
                          AssetImage(Assets.lib.assets.icons.podCast.path)),
                      Text(
                        MyStrings.viewHotestPodcast,
                        style: widget.themText.headlineSmall,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: widget.size.height / 4.5,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: listBlogModel.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            right: index == 0 ? widget.bodMargin : 10, top: 10),
                        child: Column(
                          children: [
                            Container(
                              height: widget.size.height / 8,
                              width: widget.size.width / 2.4,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        listBlogModel[index].imageUrl),
                                    fit: BoxFit.cover),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(14)),
                              ),
                            ),
                            SizedBox(
                              height: widget.size.height / 30,
                              child: Text(
                                listBlogModel[index].writer,
                                style: widget.themText.bodyMedium,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
