import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DotsWidget extends StatelessWidget {
  const DotsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w),
      child: Row(
        children: [
          Column(
            children: List.generate(6, (index) {
              return Container(
                width: 2,
                height: 6,
                color: Colors.orange,
                margin: EdgeInsets.symmetric(vertical: 3),
              );
            }),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
