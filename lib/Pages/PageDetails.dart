import 'package:flutter/material.dart';
import 'package:foodi/widgets/CustomPageDetails/CustomAppBar.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class PageDetails extends StatefulWidget {
  const PageDetails({super.key, required this.image, required this.food, required this.title});
  final String image;
  final String food;
  final String title;

  @override
  State<PageDetails> createState() => _PageDetailsState();
}

class _PageDetailsState extends State<PageDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Gap(70),
          CustomAppbarr(),
          Gap(45),
          Image.asset('assets/page details/GREEN Salad.png', width: 350),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => Container(
                  width: double.infinity,
                  height: 445,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Row(
                          children: [
                            Text(
                              widget.title,
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 95,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xff93D8A2),
                              ),
                              child: Center(
                                child: Text(
                                 widget.food,
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Gap(10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff808080),
                            ),
                            children: [
                              TextSpan(
                                text:
                                    'Unleash the power of green in\nevery bite with a mouthwatering\ngreen sandwich',
                              ),
                              TextSpan(
                                text: ' Read More',
                                style: TextStyle(
                                  fontSize: 20,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 1.8,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Gap(15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Image.asset(
                          'assets/page details/Stars.png',
                          width: 128,
                        ),
                      ),
                      Gap(10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Container(
                          width: 380,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Color(0xff93D8A2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 15,
                                right: 15,
                                child: Container(
                                  width: 95,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '\$3.88',
                                      style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 9,
                                left: 15,
                                child: Text(
                                  'Delivery Amount',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 55,
                                left: 15,
                                child: Text(
                                  'Total Amount',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 18,
                                left: 15,
                                child: Text(
                                  'USD 38.00',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Gap(15),
                      Center(
                        child: Container(
                          width: 380,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color(0xff2B292A),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: Row(
                              children: [
                                Text(
                                  'Make Payment',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 21,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 98, height: 50,
                                  decoration: BoxDecoration(
                                    color :Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(child: Image.asset('assets/page details/sahm.png' , width: 50,)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Image.asset(widget.image, width: 300),
          ),
        ],
      ),
    );
  }
}
