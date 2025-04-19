import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class CustomContainerInGoalContainer extends StatelessWidget {
  const CustomContainerInGoalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffEAF8F1),
      ),
      child: Column(
        children: [
          Text(
            'كل خطوة بتقرّبك من هدفك',
            style: TextStyles.font18SemiBold(context).copyWith(),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.imagesGift),
              SizedBox(width: 5),
              Text(
                'سهمك بيزيد في القيمة... وفلوسك بتزيد معاه',
                style: TextStyles.font14Medium(context).copyWith(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
