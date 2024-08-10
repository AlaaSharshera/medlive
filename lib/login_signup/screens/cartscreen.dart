import 'package:flutter/material.dart';
import 'package:medlive/login_signup/models/custom_screen_model.dart';
import 'package:medlive/login_signup/screens/simplescreen.dart';

class Cartscreen extends StatelessWidget {
  Cartscreen({super.key});
  final CustomScreenModel? customScreenModel = CustomScreenModel(
      image: 'assets/images/general/shoppingcart.png',
      boldtext: "Your Cart is Empty",
      regulartext:
          "You can add items to yor cart by\n returning to your homepage");

  @override
  Widget build(BuildContext context) {
    return Simplescreen(customScreenModel: customScreenModel);
  }
}
