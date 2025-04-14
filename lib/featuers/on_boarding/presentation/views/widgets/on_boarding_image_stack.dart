// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_images.dart';

class OnBoardingImageStack extends StatelessWidget {
  const OnBoardingImageStack({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // الكارت الأخضر الخلفي المائل
        Positioned(
          bottom: -25,
          left: 0,
          right: 0,
          child: Transform.rotate(
            angle: 0.1,
            child: Container(
              height: 35,
              width: double.infinity,
              margin: const EdgeInsets.only(left: 12, right: 30),
              decoration: BoxDecoration(
                color: Colors.green.shade100.withOpacity(0.6),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),

        // الكارت الأزرق الأمامي المائل
        Positioned(
          bottom: -10,
          left: 0,
          right: 0,
          child: Transform.rotate(
            angle: 0.09,
            child: Container(
              width: double.infinity,
              height: 35,
              margin: const EdgeInsets.only(left: 12, right: 30),
              decoration: BoxDecoration(
                color: Colors.blue.shade100.withOpacity(0.6),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),

        // الصورة الأساسية
        AspectRatio(
          aspectRatio: 4 / 3,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image, // استبدل بمسار صورتك
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
