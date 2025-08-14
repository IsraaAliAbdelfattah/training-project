import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_shop/Features/basket/presentation/widgets/another_bottom_sheet.dart';
import 'package:fruit_shop/Features/basket/presentation/widgets/custom_text_field.dart';

void showBasketBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Color(0xffFFFFFF),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
            Text("Delivery address", style: TextStyle(fontSize: 20.sp)),
            SizedBox(height: 20),
            CustomTextField(hintText: "10th avenue, Lekki, Lagos State"),
            SizedBox(height: 30),
            Text("Number we can call", style: TextStyle(fontSize: 20.sp)),
            SizedBox(height: 10),
            CustomTextField(hintText: "09090605708"),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFFA451),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(1),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 10.h,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Pay on delivery',
                      style: TextStyle(
                        color: Color(0xffFFA451),
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFFA451),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(1),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 10.h,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      anothershowBasketBottomSheet(context);
                    },
                    child: Text(
                      'Pay With Card',
                      style: TextStyle(
                        color: Color(0xffFFA451),
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      );
    },
  );
}
