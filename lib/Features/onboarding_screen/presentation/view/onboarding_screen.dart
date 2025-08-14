import 'package:flutter/material.dart';
import '../widgets/onboarding_header.dart';
import '../widgets/onboarding_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          OnboardingHeader(),
          Expanded(child: OnboardingBody()),
        ],
      ),
    );
  }
}
