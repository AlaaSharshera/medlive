import 'package:flutter/material.dart';

import 'package:medlive/constants.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'pagesliderscreen');
        },
        child: const Center(
          child: Image(image: AssetImage('assets/images/general/logo.png')),
        ),
      ),
    );
  }
}
