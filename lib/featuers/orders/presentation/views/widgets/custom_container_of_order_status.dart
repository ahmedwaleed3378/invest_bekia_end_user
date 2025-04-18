// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class CustomContainerOfOrderStatus extends StatelessWidget {
  const CustomContainerOfOrderStatus({
    super.key,
    required this.title,
    required this.isActive,
  });
  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: isActive ? AppColors.primaryColorOneColor : Color(0xffECECEC),
          width: 1,
        ),
        color:
            isActive
                ? AppColors.primaryColorOneColor.withOpacity(0.2)
                : AppColors.backGroundColor,
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          title,
          style: TextStyles.font14Medium(context).copyWith(
            color:
                isActive ? AppColors.primaryColorOneColor : Color(0xff6B6B6B),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
