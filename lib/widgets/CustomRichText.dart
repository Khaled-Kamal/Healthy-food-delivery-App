import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({super.key, required this.text1});
  final String text1;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 60, color: Colors.white),
          children: [
            TextSpan(
              text: text1,
              style: TextStyle(color: Color(0xff93D8A2)),
            ),
            TextSpan(text: 'Well,'),
          ],
        ),
      ),
    );
  }
}
