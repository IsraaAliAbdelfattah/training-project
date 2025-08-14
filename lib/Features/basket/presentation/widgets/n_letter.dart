import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NLetter extends StatelessWidget {
  const NLetter({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Text('N', style: TextStyle(fontSize: 30)),
        Positioned(
          top: 20.h,
          left: 0,
          right: 0,
          child: Container(height: 3.h, color: Colors.black), // الخط الأول
        ),
        Positioned(
          bottom: 20.h,
          left: 0,
          right: 0,
          child: Container(height: 3.h, color: Colors.black), // الخط التاني
        ),
      ],
    );
  }
}
