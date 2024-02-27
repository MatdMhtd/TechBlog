import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_app/gen/assets.gen.dart';
import 'package:tech_app/my_colors.dart';
import 'package:tech_app/my_strings.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key, required this.textTheme});

  final TextTheme textTheme;

  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Center(
          child: Column(
        children: [
          SvgPicture.asset(
            Assets.lib.assets.images.techBot,
            height: 130,
            width: 130,
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(
                text: MyStrings.welcomSignUp,
                style: widget.textTheme.bodyLarge),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () => {},
            style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.yellow;
                  }
                  return SolidColors.colorPrimary;
                }),
                textStyle: MaterialStateProperty.resolveWith(
                    (states) => widget.textTheme.bodyLarge)),
            child: const Text(MyStrings.btnSignUp),
          )
        ],
      )),
    );
  }
}
