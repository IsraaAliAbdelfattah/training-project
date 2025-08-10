import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_shop/Features/basket/presentation/views/basket_view.dart';
import 'package:fruit_shop/Features/track_order/presentation/views/track_order.dart';

void main() {
  runApp(const FruitShop());
}

class FruitShop extends StatelessWidget {
  const FruitShop({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      designSize: const Size(375, 812),
      child: MaterialApp(
        home: TrackOrder(),
      ),
    );
  }
}
