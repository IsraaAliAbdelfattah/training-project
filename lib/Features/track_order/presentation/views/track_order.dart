import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                  backgroundColor: Color(0xffFFA451),
                ),
                TrackingCard(
                  imagePath: 'assets/images/image_2.png',
                  title: 'Order Tacken',
                  backgroundColor: Color(0xffFFA451),
                ),
                TrackingCard(
                  imagePath: 'assets/images/image_2.png',
                  title: 'Order Tacken',
                  backgroundColor: Color(0xffFFA451),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
