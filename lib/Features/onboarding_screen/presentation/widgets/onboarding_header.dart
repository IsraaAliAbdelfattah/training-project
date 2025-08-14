import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingHeader extends StatelessWidget {
  const OnboardingHeader({super.key});

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
            'assets/images/edcf8e89db5451b875a74a87c96f0f40d451c9df.png',
            height: 300.h,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
