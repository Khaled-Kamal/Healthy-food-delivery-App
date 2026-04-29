import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xff93D8A2)),
            ),
            child: Image.asset('assets/home/profile.png'),
          ),
          Gap(10),
          Text(
            'Hello Khaled 👋',
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Spacer(),
          Image.asset('assets/home/menu.png' , width: 28,),
        ],
      ),
    );
  }
}
