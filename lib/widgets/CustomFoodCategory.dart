import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Models/FoodModel.dart';

class CustomFoodCategory extends StatelessWidget {
  const CustomFoodCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: FoodData.length,
        separatorBuilder: (_, __) => Gap(0),
        itemBuilder: (context, index) {
          final item = FoodData[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xff93D8A2)),
                  ),
                  child: Image.asset(item.image),
                ),
                Gap(10),
                Text(item.title , style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),),
              ],
            ),
          );
        },
      ),
    );
  }
}
