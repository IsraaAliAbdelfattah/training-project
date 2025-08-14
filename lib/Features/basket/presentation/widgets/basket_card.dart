import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_shop/Features/basket/presentation/widgets/n_letter.dart';

class BasketCard extends StatelessWidget {
  const BasketCard({
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
            child: Image.asset(imagePath),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                '2Packs',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ],
          ),
          Spacer(),
          NLetter(),
          SizedBox(width: 5.w),

          Text('20.000', style: TextStyle(fontSize: 24, color: Colors.black)),
        ],
      ),
    );
  }
}
