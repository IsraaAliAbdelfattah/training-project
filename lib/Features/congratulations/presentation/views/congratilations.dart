import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_shop/Features/congratulations/presentation/views/widgets/check_icon.dart';

class Congratilations extends StatelessWidget {
  const Congratilations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            CheckIcon(),
            SizedBox(height: 50.h),
            Text(
              'Congratulations!!!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.h),
            Text(
              'Your order have been taken and\n is being attended to.',
              style: TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50.h),
            SizedBox(
              height: 56.h,
              width: 150.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFFA451),
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Track Order',
                  style: TextStyle(color: Colors.white, fontSize: 20.sp),
                ),
              ),
            ),
            SizedBox(height: 50.h),
            Container(
              height: 70.h,
              width: 200.w,
              decoration: BoxDecoration(
                color: Color(0xffFFA451),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(1),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Continue Shopping',
                  style: TextStyle(color: Color(0xffFFA451), fontSize: 18.sp),
                ),
              ),
            ),
           Spacer(),
          ],
        ),
      ),
    );
  }
}
