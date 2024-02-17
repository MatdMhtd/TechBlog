import 'package:flutter/material.dart';
import 'package:tech_app/gen/assets.gen.dart';
import 'package:tech_app/my_colors.dart';
import 'package:tech_app/my_strings.dart';
import 'package:tech_app/view/text_divider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
    required this.size,
    required this.themText,
    required this.bodMargin,
  });

  final Size size;
  final TextTheme themText;
  final double bodMargin;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              children: [
                Image(
                  image: AssetImage(Assets.lib.assets.images.profile.path),
                  height: 100,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageIcon(
                        AssetImage(Assets.lib.assets.icons.editedProfile.path)),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      MyStrings.editedProfile,
                      style: widget.themText.headlineSmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Text(
                  "امین تقوی",
                  style: widget.themText.bodyMedium,
                ),
                Text(
                  "example@gmail.com",
                  style: widget.themText.bodyMedium,
                ),
                const SizedBox(
                  height: 40,
                ),
                TextDivider(size: widget.size),
                InkWell(
                  onTap: () => {},
                  splashColor: SolidColors.colorPrimary,
                  child: SizedBox(
                    height: 45,
                    child: Center(
                      child: Text(
                        MyStrings.myFavArticle,
                        style: widget.themText.bodyMedium,
                      ),
                    ),
                  ),
                ),
                TextDivider(size: widget.size),
                InkWell(
                  onTap: () => {},
                  splashColor: SolidColors.colorPrimary,
                  child: SizedBox(
                    height: 45,
                    child: Center(
                      child: Text(
                        MyStrings.myFavPodcast,
                        style: widget.themText.bodyMedium,
                      ),
                    ),
                  ),
                ),
                TextDivider(size: widget.size),
                InkWell(
                  onTap: () => {},
                  splashColor: SolidColors.colorPrimary,
                  child: SizedBox(
                    height: 45,
                    child: Center(
                      child: Text(
                        MyStrings.signOut,
                        style: widget.themText.bodyMedium,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ));
  }
}
