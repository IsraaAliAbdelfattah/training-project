import 'package:flutter/material.dart';

class CheckIcon extends StatelessWidget {
  const CheckIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Color(0xff4CD964),
              borderRadius: BorderRadius.circular(80),
            ),

            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xffE0FFE5),
                borderRadius: BorderRadius.circular(80),
              ),

              child: Icon(
                Icons.check_circle,
                size: 100,
                color: Color(0xff4CD964),
              ),
            ),
          );
  }
}