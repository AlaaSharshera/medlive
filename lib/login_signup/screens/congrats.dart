import 'package:flutter/material.dart';
import 'package:medlive/login_signup/models/custom_screen_model.dart';
import 'package:medlive/login_signup/screens/customscreen.dart';

class CongratsScreen extends StatefulWidget {
  const CongratsScreen({super.key});

  @override
  State<CongratsScreen> createState() => _CongratsScreenState();
}

class _CongratsScreenState extends State<CongratsScreen> {
  CustomScreenModel? customScreenModel = CustomScreenModel(
      image: 'assets/images/login_signup/congrats.png',
      boldtext: "Congrats !",
      regulartext:
          "Your Account has been created Successfully\nYou will be redirected to the homepage\n within moments.");

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
