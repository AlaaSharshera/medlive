import 'package:flutter/material.dart';
import 'package:medlive/constants.dart';
import 'package:medlive/login_signup/models/custom_screen_model.dart';

class Customscreen extends StatelessWidget {
  const Customscreen({required this.customScreenModel, super.key});
  final CustomScreenModel? customScreenModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 296,
              height: 231,
              image: AssetImage(customScreenModel!.image!),
            ),
            Text(
              customScreenModel!.boldtext!,
              style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0EBE7E)),
            ),
            Text(
              customScreenModel!.regulartext!,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: Color(0xff0EBE7E)),
            ),
          ],
        ),
      ),
    );
  }
}
