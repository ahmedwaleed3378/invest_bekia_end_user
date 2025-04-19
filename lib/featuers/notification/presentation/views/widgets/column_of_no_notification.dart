import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class ColumnOfNoNotifications extends StatelessWidget {
  const ColumnOfNoNotifications({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(Assets.imagesNoNotifaction),
                const SizedBox(height: 20),
                Text(
                  'مفيش إشعارات دلوقتى.',
                  style: TextStyles.font22SemiBold(context),
                ),
                const SizedBox(height: 5),
                Text(
                  'معندكش إشعارات دلوقتى. ارجع تاني كمان شوية وشوف لو في جديد.',
                  style: TextStyles.font18Medium(
                    context,
                  ).copyWith(color: const Color(0xff8F8F8F)),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
