import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    required this.hinttext,
    this.onchange,
    super.key,
  });
  final String? hinttext;
  Function(String)? onchange;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Field is required';
          }
        },
        onChanged: onchange,
        decoration: InputDecoration(
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Color(0xff0EBE7E), width: 2)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 208, 206, 206), width: 2),
          ),
          hintText: hinttext!,
          suffixIcon: null,
          contentPadding: const EdgeInsets.all(15),
        ),
      ),
    );
  }
}
