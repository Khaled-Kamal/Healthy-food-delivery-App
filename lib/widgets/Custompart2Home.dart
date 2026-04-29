import 'package:flutter/material.dart';

class CustomPart2Home extends StatelessWidget {
  const CustomPart2Home({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(3, 5),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: 55, height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color :Color(0xff93D8A2),
            ),
            child: Center(child: Image.asset('assets/home/search.png' , width: 23,)),
          ),
        ],
      ),
    );
  }
}
