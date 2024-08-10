import 'package:flutter/material.dart';

class CustomLoginRow extends StatelessWidget {
  const CustomLoginRow({
    required this.ontap,
    super.key,
  });
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have account?",
          style: TextStyle(fontSize: 16),
        ),
        TextButton(
          onPressed: ontap,
          child: const Text(
            "Login",
            style: TextStyle(color: Color(0xff0EBE7E), fontSize: 16),
          ),
        )
      ],
    );
  }
}
