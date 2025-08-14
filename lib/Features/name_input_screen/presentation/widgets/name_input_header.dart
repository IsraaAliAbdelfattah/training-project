import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameInputHeader extends StatelessWidget {
  const NameInputHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFA451),
      width: double.infinity,
      height: 440.h,
      child: Padding(
        padding: EdgeInsets.only(top: 50.h),
        child: Center(
          child: Image.asset(
            'assets/images/70de1d2b47c6f7b970c55f11642487012e865efb.png',
            height: 300.h,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
