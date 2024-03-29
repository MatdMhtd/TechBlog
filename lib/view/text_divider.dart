import 'package:flutter/material.dart';
import 'package:tech_app/component/my_colors.dart';

class TextDivider extends StatelessWidget {
  const TextDivider({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1.5,
      color: SolidColors.dividerColor,
      indent: size.width / 6,
      endIndent: size.width / 6,
    );
  }
}
