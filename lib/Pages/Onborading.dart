import 'package:flutter/material.dart';
import 'package:foodi/widgets/CustomOnboarding.dart';
import 'package:foodi/widgets/CustomRichText.dart';
import 'package:gap/gap.dart';

class Onborading extends StatelessWidget {
  const Onborading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B292A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/onboarding/onboarding.png'),
          Gap(30),
          CustomRichText(text1: 'Eat '),
          Gap(8),
          CustomRichText(text1: 'Feel'),
          Gap(8),
          CustomRichText(text1: 'Live'),
          Gap(80),
          CustomOnboarding(),
        ],
      ),
    );
  }
}
