import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_app/gen/assets.gen.dart';
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
            onPressed: () {
              _showModalEmailBottomSheet(context);
            },
            child: const Text(MyStrings.btnSignUp),
          )
        ],
      )),
    );
  }

  Future<dynamic> _showModalEmailBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        MyStrings.enterEmail,
                        style: widget.textTheme.bodyLarge,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: MyStrings.hintEmail,
                              hintStyle: widget.textTheme.bodyMedium),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            _showModalActivateCodeBottomSheet(context);
                          },
                          child: const Text("ادامه"))
                    ]),
              ),
            ),
          );
        });
  }

  Future<dynamic> _showModalActivateCodeBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        MyStrings.activateCode,
                        style: widget.textTheme.bodyLarge,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: MyStrings.hintPassWord,
                              hintStyle: widget.textTheme.bodyMedium),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("ادامه"))
                    ]),
              ),
            ),
          );
        });
  }
}
