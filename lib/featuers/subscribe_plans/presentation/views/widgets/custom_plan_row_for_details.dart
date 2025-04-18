import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class CustomPlanRowForDetails extends StatelessWidget {
  const CustomPlanRowForDetails({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });

  final String title, subTitle, image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Color(0xffE8E8E8),
          child: SvgPicture.asset(image, width: 26),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyles.font18SemiBold(
                context,
              ).copyWith(color: AppColors.primaryColorOneColor),
            ),
            Text(
              subTitle,
              style: TextStyles.font18Medium(
                context,
              ).copyWith(color: Color(0xff6B6B6B)),
            ),
          ],
        ),
      ],
    );
  }
}
