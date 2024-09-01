import 'package:flutter/material.dart';
import 'package:medlive/home/components/simplescreen.dart';
import 'package:medlive/login_signup/models/custom_screen_model.dart';

class BookingdoneScreen extends StatelessWidget {
  BookingdoneScreen({super.key});
  final CustomScreenModel? customScreenModel = CustomScreenModel(
      image: 'assets/images/general/Confirmed.png',
      boldtext: "Booking Successful!",
      regulartext: "Thanks for your visit");

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'mainscreen');
        },
        child: Simplescreen(customScreenModel: customScreenModel));
  }
}
