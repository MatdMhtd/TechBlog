import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_app/gen/assets.gen.dart';
import 'package:tech_app/models/fack_data.dart';
import 'package:tech_app/my_colors.dart';
import 'package:tech_app/my_strings.dart';

class MyCategory extends StatefulWidget {
  const MyCategory({super.key});

  @override
  State<MyCategory> createState() => _MyCategoryState();
}

class _MyCategoryState extends State<MyCategory> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var bodMargin = size.width / 10;
    var textThem = Theme.of(context).textTheme;

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: 20, top: 20, left: bodMargin, right: bodMargin),
            child: Column(children: [
              SvgPicture.asset(
                Assets.lib.assets.images.techBot,
                height: 100,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                MyStrings.congratConfirmEmail,
                style: textThem.bodyLarge,
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: "نام و نام خانوادگی",
                    hintStyle: textThem.bodyMedium),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                MyStrings.chooseCategory,
                style: textThem.bodyLarge,
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                height: size.height / 7,
                child: GridView.builder(
                    itemCount: listTag.length,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.4,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            myCategory.add(Tags(listTag[index].title));
                          });
                        },
                        child: TagsComp(
                          index: index,
                          listBuilder: listTag,
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 32,
              ),
              Image.asset(
                Assets.lib.assets.icons.downArrow.path,
                scale: 2,
              ),
              const SizedBox(
                height: 18,
              ),
              SizedBox(
                width: double.infinity,
                height: size.height / 14,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: myCategory.length,
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 0.4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return mySelectedCategory(index);
                    }),
              )
            ]),
          ),
        ),
      ),
    ));
  }

  Container mySelectedCategory(int index) {
    return Container(
      decoration: BoxDecoration(
        color: SolidColors.chosenMyCategory,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            myCategory[index].title,
            style: const TextStyle(color: Colors.black),
          ),
          InkWell(
            onTap: () {
              setState(() {
                myCategory.removeAt(index);
              });
            },
            child: const Icon(
              CupertinoIcons.delete_right,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class TagsComp extends StatefulWidget {
  const TagsComp({super.key, required this.index, required this.listBuilder});

  final int index;
  final List<Tags> listBuilder;

  @override
  State<TagsComp> createState() => _TagsCompState();
}

class _TagsCompState extends State<TagsComp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
            colors: GradiantColors.tags,
            begin: Alignment.centerRight,
            end: Alignment.centerLeft),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.lib.assets.icons.sharp.path,
            scale: 2,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            widget.listBuilder[widget.index].title,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
