import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final bool password;
  final TextEditingController controller;
  final String label;
  final Icon? prefixIcon;
  final double? height;
  final double? width;
  const CustomFormField({
    required this.password,
    required this.controller,
    required this.label,
    this.prefixIcon,
    this.height = 60, 
    this.width = 300,
    super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height, 
      width: width,
      child: TextFormField(
        controller: controller,
        obscureText: password,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black, 
              width: 2.5
            ), 
            borderRadius: BorderRadius.circular(15)
          ), 
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2.5
            ), 
            borderRadius: BorderRadius.circular(15)
          ),
            hintText: label,
          ),
          ),
    );
  }
}