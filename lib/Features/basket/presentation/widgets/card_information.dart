import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_shop/Features/basket/presentation/widgets/custom_text_field.dart';

class CardInformation extends StatelessWidget {
  const CardInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.h),
        Text("Card Holders Name", style: TextStyle(fontSize: 20.sp)),
        SizedBox(height: 10.h),
        CustomTextField(hintText: "Adolphus chris"),
        SizedBox(height: 20.h),
        Text("Card Number", style: TextStyle(fontSize: 20.sp)),
        SizedBox(height: 10.h),
        CustomTextField(hintText: "1234 5678 9012 3456"),
        SizedBox(height: 10.h),
        Row(
          children: [
            Text('Date', style: TextStyle(fontSize: 20.sp)),
            Spacer(),
            Text('CCV', style: TextStyle(fontSize: 20.sp)),
            Spacer(),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "MM/YY",
                  hintStyle: TextStyle(color: Color(0xffC2BDBD)),
                  fillColor: Color(0xffF3F1F1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(width: 20.w),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "123",
                  hintStyle: TextStyle(color: Color(0xffC2BDBD)),
                  fillColor: Color(0xffF3F1F1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
