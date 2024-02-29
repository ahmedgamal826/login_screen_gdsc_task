import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.validateMessage});

  final TextEditingController controller;
  final String hintText;
  final String validateMessage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value!.isEmpty) {
            return '$validateMessage';
          }
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(), hintText: '$hintText'),
      ),
    );
  }
}
