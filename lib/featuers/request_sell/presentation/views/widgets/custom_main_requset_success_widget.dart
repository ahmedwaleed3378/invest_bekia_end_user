import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class CustomMainRequsetSuccessWidget extends StatefulWidget {
  const CustomMainRequsetSuccessWidget({super.key});

  @override
  State<CustomMainRequsetSuccessWidget> createState() =>
      _CustomMainRequsetSuccessWidgetState();
}

class _CustomMainRequsetSuccessWidgetState
    extends State<CustomMainRequsetSuccessWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColorOneColor,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        child: Container(
          color: AppColors.backGroundColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Text(
                  'تم الطلب بنجاح 🎉',
                  style: TextStyles.font18SemiBold(context),
                ),
                SizedBox(height: 15),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(Assets.imagesQr, width: 200),
                ),
                SizedBox(height: 15),
                Text(
                  'ده الكيو آر كود بتاع طلبك',
                  style: TextStyles.font18SemiBold(context),
                ),
                SizedBox(height: 10),
                Text(
                  'ورّيه للمندوب أول ما يوصل علشان يستلم الخردة',
                  style: TextStyles.font18Medium(
                    context,
                  ).copyWith(color: Color(0xff6B6B6B)),
                ),
                SizedBox(height: 10),
                Text('#1972000', style: TextStyles.font18SemiBold(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
