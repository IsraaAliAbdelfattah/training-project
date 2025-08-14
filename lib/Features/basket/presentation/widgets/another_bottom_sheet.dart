import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_shop/Features/basket/presentation/widgets/card_information.dart';
import 'package:fruit_shop/Features/congratulations/presentation/views/congratulations.dart';

void anothershowBasketBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Color(0xffFFFFFF),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
    ),
    builder: (context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: CardInformation(),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 100.w),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffFFA451),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Congratilations();
                    },
                  ),
                );
              },
              child: Text(
                'Complete Order',
                style: TextStyle(fontSize: 18.sp, color: Color(0xffFFA451)),
              ),
            ),
          ),
        ],
      );
    },
  );
}
