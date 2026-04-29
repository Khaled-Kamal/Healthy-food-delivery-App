import 'package:flutter/material.dart';
import 'package:foodi/Pages/HomePage.dart';
import 'package:gap/gap.dart';

class CustomOnboarding extends StatelessWidget {
  const CustomOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 15, width: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color : Color(0xff626262),
                ),
              ),
              Gap(12),
              Container(
                height: 15, width: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color : Color(0xff626262),
                ),
              ),
              Gap(12),
              Container(
                width: 33, height: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color : Color(0xff9DE8AE),
                ),
              ),
            ],
          ),

          GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (c)=> HomePage(),),);   Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 15, width: 15,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color : Color(0xff626262),
                          ),
                        ),
                        Gap(12),
                        Container(
                          height: 15, width: 15,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color : Color(0xff626262),
                          ),
                        ),
                        Gap(12),
                        Container(
                          width: 33, height: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color : Color(0xff9DE8AE),
                          ),
                        ),
                      ],
                    ),

                    Container(
                      width: 77,
                      height: 77,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                        border: Border.all(color: Colors.white, width: 1.8),
                      ),
                      child: Center(
                        child: Image.asset('assets/onboarding/sahm.png', width: 45),
                      ),
                    ),
                  ],
                ),
              );
            },
            child: Container(
              width: 77,
              height: 77,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
                border: Border.all(color: Colors.white, width: 1.8),
              ),
              child: Center(
                child: Image.asset('assets/onboarding/sahm.png', width: 45),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
