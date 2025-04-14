import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class CustomOnBoardingAppBar extends StatelessWidget {
  const CustomOnBoardingAppBar({
    super.key,
    required this.onTapBack,
    required this.onTapSkip,
    required this.currentIndex,
  });
  final void Function() onTapBack;
  final void Function() onTapSkip;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: currentIndex != 0,
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: onTapBack,
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios, size: 16, color: Color(0xff6B6B6B)),
                SizedBox(width: 5),
                Text('رجوع', style: TextStyles.font18Regular(context)),
              ],
            ),
          ),
        ),

        Spacer(),
        SvgPicture.asset(Assets.imagesSvgLogoBekia),
        Spacer(),
        InkWell(
          borderRadius: BorderRadius.circular(12),

          onTap: onTapSkip,
          child: Text(
            'تخطي',
            style: TextStyles.font18Regular(
              context,
            ).copyWith(decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
