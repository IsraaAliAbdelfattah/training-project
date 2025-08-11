import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_shop/Features/basket/presentation/widgets/n_letter.dart';

class TrackingCard extends StatelessWidget {
  const TrackingCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.backgroundColor,
  });
  final String imagePath;
  final String title;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: backgroundColor,
            ),
            child: Image.asset(imagePath, width: 50.w, height: 50.h),
          ),
          SizedBox(width: 25.w),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Icon(Icons.check_circle, size: 40, color: Color(0xff4CD964)),
        ],
      ),
    );
  }
}
