import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_shop/Features/basket/presentation/views/basket_view.dart';
import 'package:fruit_shop/Features/splash_screen/presentation/view/splash_screen.dart';
import 'package:fruit_shop/Features/onboarding_screen/presentation/view/onboarding_screen.dart';
import 'package:fruit_shop/core/util/cubit/get_fruit_cubit.dart';
import 'package:fruit_shop/core/util/injection.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:fruit_shop/Features/login_screen/presentation/view/login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://pwqprclbbjbqouilfnqw.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB3cXByY2xiYmpicW91aWxmbnF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTQ4NTA1MzIsImV4cCI6MjA3MDQyNjUzMn0.KYJw_PznX9E8orW5DD4TCK44YgCIP0vNDJLbgrZDYX4",
  );
  initGetIt();
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
      child: BlocProvider(
        create: (context) => getIt<GetFruitCubit>(),
        child: MaterialApp(
          home: SplashScreenView(),

          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
