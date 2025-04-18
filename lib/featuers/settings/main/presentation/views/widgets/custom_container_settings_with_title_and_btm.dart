import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class CustomContainerWithTextAndBtmInSettings extends StatelessWidget {
  const CustomContainerWithTextAndBtmInSettings({
    super.key,
    required this.onPressed,
    required this.title,
  });
  final void Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.primaryColorOneColor,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 150,
                    child: Text(
                      'من شوية كراكيب لـ سهم في سيوة سكاي! بدل ما ترميها استثمر بيها',
                      style: TextStyles.font18Medium(
                        context,
                      ).copyWith(color: Colors.white),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.secondaryColorOneColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: onPressed,
                child: SizedBox(
                  child: Row(
                    mainAxisSize: MainAxisSize.min, // <-- Add this line!
                    children: [
                      CircleAvatar(radius: 5, backgroundColor: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        'إبدأ دلوقتي',
                        style: TextStyles.font18Medium(
                          context,
                        ).copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 20,
          child: SvgPicture.asset(Assets.imagesRecycleBg, width: 150),
        ),
      ],
    );
  }
}
