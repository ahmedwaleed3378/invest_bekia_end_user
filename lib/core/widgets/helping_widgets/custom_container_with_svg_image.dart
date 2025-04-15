import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomContainerWithSvgImage extends StatelessWidget {
  const CustomContainerWithSvgImage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: Color(0xffE2F0EC),
        borderRadius: BorderRadius.circular(20),
      ),

      child: SvgPicture.asset(image),
    );
  }
}

class CustomContainerWithSvgImageForAddNewPassword extends StatelessWidget {
  const CustomContainerWithSvgImageForAddNewPassword({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),

      decoration: BoxDecoration(
        color: Color(0xffE2F0EC),
        borderRadius: BorderRadius.circular(30),
      ),

      child: SvgPicture.asset(image),
    );
  }
}
