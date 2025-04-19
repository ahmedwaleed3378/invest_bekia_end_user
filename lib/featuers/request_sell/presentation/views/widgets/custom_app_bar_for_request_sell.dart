import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_btm_for_back.dart';

class CustomAppBarForRequestSell extends StatelessWidget {
  const CustomAppBarForRequestSell({
    super.key,
    required this.title,
    required this.haveBackBtm,
    required this.isExit,
    required this.onPress,
  });
  final String title;
  final bool haveBackBtm;
  final bool isExit;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 75,
      leadingWidth: 70,
      backgroundColor: AppColors.primaryColorOneColor,
      leading:
          haveBackBtm
              ? Padding(
                padding: const EdgeInsets.only(right: 16),
                child: InkWell(
                  onTap: onPress,
                  child: CustomBtmForBack(isExit: isExit),
                ),
              )
              : null,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyles.font24Bold(context).copyWith(color: Colors.white),
      ),
    );
  }
}
