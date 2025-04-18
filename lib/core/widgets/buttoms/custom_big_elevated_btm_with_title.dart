import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class CustomBigElevatedButtomWithTitle extends StatelessWidget {
  const CustomBigElevatedButtomWithTitle({
    super.key,
    required this.onPressed,
    required this.title,
    this.isCancle = false,
    this.isDisabled = false,
  });
  final void Function() onPressed;
  final bool isCancle, isDisabled;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side:
            isCancle
                ? BorderSide(color: AppColors.primaryColorOneColor, width: 1)
                : null,
        minimumSize: Size(double.infinity, 45),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor:
            isCancle ? Color(0xffffffff) : AppColors.primaryColorOneColor,
      ),
      onPressed: isDisabled ? null : onPressed,
      child: Text(
        title,
        style: TextStyles.font18SemiBold(context).copyWith(
          color: isCancle ? AppColors.primaryColorOneColor : Colors.white,
        ),
      ),
    );
  }
}
