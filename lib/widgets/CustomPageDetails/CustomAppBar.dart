import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomAppbarr extends StatelessWidget {
  const CustomAppbarr({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              'assets/page details/arrow_back.png',
              width: 55,
            ),
          ),
        ),
        Gap(45),
        Image.asset('assets/page details/French.png', width: 130),
      ],
    );
  }
}
