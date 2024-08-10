import 'package:flutter/material.dart';

class CustomContainerChat extends StatelessWidget {
  const CustomContainerChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Color(0xff0EBE7E),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Text(
          "kjkgrngkrnmk,ngr",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
