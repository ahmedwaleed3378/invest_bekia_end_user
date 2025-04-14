import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/on_boarding/presentation/views/widgets/on_boarding_image_stack.dart';

class CustomOnBoardingItem extends StatelessWidget {
  const CustomOnBoardingItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });
  final String title, subTitle, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          OnBoardingImageStack(image: image),
          SizedBox(height: 45),
          Text(title, style: TextStyles.font20ExtraBold(context).copyWith()),
          SizedBox(height: 10),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyles.font18Medium(
              context,
            ).copyWith(color: Color(0xff6B6B6B)),
          ),
        ],
      ),
    );
  }
}
