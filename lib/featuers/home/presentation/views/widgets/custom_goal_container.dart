import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/home/presentation/views/widgets/custom_container_in_goal_container.dart';
import 'package:invest_bekia/featuers/home/presentation/views/widgets/custom_time_line.dart';

class CustomGoalContainer extends StatelessWidget {
  const CustomGoalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xffECECEC), width: 1),

        color: Color(0xffffffff),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.primaryColorOneColor,
                ),
                child: SvgPicture.asset(Assets.imagesDart),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'هدفك دلوقتي',
                    style: TextStyles.font18SemiBold(context),
                  ),
                  Text(
                    'توصل ل 40000 ج.م',
                    style: TextStyles.font18SemiBold(
                      context,
                    ).copyWith(color: AppColors.secondaryColorOneColor),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                '12000 ج.م',
                style: TextStyles.font18Regular(
                  context,
                ).copyWith(color: Color(0xff6B6B6B)),
              ),
              Spacer(),
              Text(
                '28000 ج.م',
                style: TextStyles.font18SemiBold(
                  context,
                ).copyWith(color: AppColors.primaryColorOneColor),
              ),
            ],
          ),
          SizedBox(height: 10),
          CustomTimeLine(),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                'فاضلك',
                style: TextStyles.font18Regular(
                  context,
                ).copyWith(color: Color(0xff6B6B6B)),
              ),
              Spacer(),
              Text(
                '4 أشهر',
                style: TextStyles.font18SemiBold(
                  context,
                ).copyWith(color: AppColors.secondaryColorOneColor),
              ),
            ],
          ),
          SizedBox(height: 15),
          CustomContainerInGoalContainer(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
