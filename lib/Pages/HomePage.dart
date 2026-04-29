import 'package:flutter/material.dart';
import 'package:foodi/Models/CardModel.dart';
import 'package:foodi/Models/FoodModel.dart';
import 'package:foodi/Pages/PageDetails.dart';
import 'package:foodi/widgets/CustomAppBar.dart';
import 'package:foodi/widgets/CustomCard.dart';
import 'package:foodi/widgets/CustomFoodCategory.dart';
import 'package:foodi/widgets/Custompart2Home.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(60),
          CustomAppbar(),
          Gap(20),
          CustomPart2Home(),
          Gap(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              'Food category',
              style: GoogleFonts.inter(
                textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Gap(15),
          CustomFoodCategory(),
          SizedBox(
            height: 550,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: CardData.length,
              separatorBuilder: (_, __) => Gap(55),
              itemBuilder: (context, index) {
                final dp = CardData[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (c) => PageDetails(
                          image: dp.image,
                          food: dp.food,
                          title: dp.title,
                        ),
                      ),
                    );
                  },
                  child: CustomCard(
                    image: dp.image,
                    food: dp.food,
                    title: dp.title,
                    Subtitle: dp.subtitle,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
