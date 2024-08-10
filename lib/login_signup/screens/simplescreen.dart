import 'package:flutter/material.dart';
import 'package:medlive/constants.dart';
import 'package:medlive/login_signup/components/custombutton.dart';
import 'package:medlive/login_signup/models/custom_screen_model.dart';

class Simplescreen extends StatefulWidget {
  const Simplescreen({required this.customScreenModel, super.key});
  final CustomScreenModel? customScreenModel;

  @override
  State<Simplescreen> createState() => _SimplescreenState();
}

class _SimplescreenState extends State<Simplescreen> {
  Color? buttonColor = Colors.white;

  Color? textColor = const Color(0xff0EBE7E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          const Positioned(
            left: 0,
            top: 0,
            child: Image(
              image: AssetImage('assets/images/general/ellipse2.png'),
            ),
          ),
          SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                      height: 213,
                      width: 212,
                      image: AssetImage(widget.customScreenModel!.image!)),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    widget.customScreenModel!.boldtext!,
                    style: const TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0EBE7E)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.customScreenModel!.regulartext!,
                    textAlign: TextAlign.center,
                    style:
                        const TextStyle(fontSize: 20, color: Color(0xff0EBE7E)),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
