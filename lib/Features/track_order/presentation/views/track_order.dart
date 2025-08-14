import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_shop/Features/track_order/presentation/widgets/dots.dart';
import 'package:fruit_shop/Features/track_order/presentation/widgets/tracking_card.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150.h,
            color: Color(0xffFFA451),
            child: Center(
              child: Text(
                'Delivery Status',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TrackingCard(
                  imagePath: 'assets/images/image_4.png',
                  title: 'Order Tacken',
                  backgroundColor: Color(0xffFFFAEB),
                ),
                DotsWidget(),
                TrackingCard(
                  imagePath: 'assets/images/image_5.png',
                  title: 'Order Tacken',
                  backgroundColor: Color(0xffF1EFF6),
                ),
                DotsWidget(),
                TrackingCard(
                  imagePath: 'assets/images/image_6.png',
                  title: 'Order Tacken',
                  backgroundColor: Color(0xffFEF0F0),
                ),
                DotsWidget(),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.r),
                      decoration: BoxDecoration(
                        color: Color(0xffF0FEF8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.check_circle,
                        size: 50,
                        color: Color(0xff4CD964),
                      ),
                    ),
                    SizedBox(width: 25.w),
                    Text(
                      'Order Received',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
