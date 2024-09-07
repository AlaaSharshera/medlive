import 'package:flutter/material.dart';
import 'package:medlive/constants.dart';
import 'package:medlive/home/components/customchat_container.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({this.doctorname, this.image, super.key});
  final String? doctorname;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: const Color(0xff0EBE7E),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              child: Image.asset(image!),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              doctorname!,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const CustomContainerChat();
        },
      ),
    );
  }
}
