import 'package:flutter/material.dart';
import 'package:medlive/login_signup/components/customscreen.dart';
import 'package:medlive/login_signup/models/custom_screen_model.dart';

class WelcomebackScreen extends StatefulWidget {
  const WelcomebackScreen({super.key});

  @override
  State<WelcomebackScreen> createState() => _WelcomebackScreenState();
}

class _WelcomebackScreenState extends State<WelcomebackScreen> {
  CustomScreenModel? customScreenModel = CustomScreenModel(
      image: 'assets/images/login_signup/congrats.png',
      boldtext: "Welcome back !",
      regulartext: "You will be redirected to the homepage\nwithin moments.");

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'mainscreen');
      },
      child: Customscreen(
        customScreenModel: customScreenModel,
      ),
    );
  }
}
