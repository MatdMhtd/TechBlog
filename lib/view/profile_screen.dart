import 'package:flutter/material.dart';
import 'package:tech_app/gen/assets.gen.dart';

class ProfileScreen extends StatelessWidget {
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
                )
              ],
            ),
          ),
        ));
  }
}
