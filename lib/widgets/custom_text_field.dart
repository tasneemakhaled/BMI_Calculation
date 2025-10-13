import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
   
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
  });
  
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(),
        
      ),
    );
  }
}
