import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.image, required this.food, required this.title, required this.Subtitle});
  final String image;
  final String food;
  final String title;
  final String Subtitle;

  @override
  Widget build(BuildContext context) {
    return   Stack(
      clipBehavior: Clip.none,
      children: [
        Center(
          child: Container(
            width: 340,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 2, color: Color(0xff93D8A2)),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -40,
                  right: 8,
                  child: Image.asset(
                    image,
                    width: 170,
                  ),
                ),

                Positioned(
                  top : 15,
                  left: 15,
                  child: Container(
                    width: 100, height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color : Color(0xff93D8A2),
                    ),
                    child: Center(child: Text(food , style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),)),
                  ),
                ),
                Positioned(
                  bottom: 55,
                  left: 15,
                  child: Text(title , style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),),
                ),
                Positioned(
                  bottom: 12,
                  left: 15,
                  child: Text(Subtitle , style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color : Color(0xff808080),
                      fontSize: 14,
                    ),
                  ),),
                ),
                Positioned(
                    bottom: 20,
                    right: 35,
                    child: Image.asset('assets/home/Frame 6.png' , width: 80,)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
