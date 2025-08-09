import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hintText});
final  String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
              decoration: InputDecoration(
                fillColor: Color(0xffF3F1F1),
                filled: true,
                hintText: hintText,
                hintStyle: TextStyle(color: Color(0xffC2BDBD)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            );
  }
}