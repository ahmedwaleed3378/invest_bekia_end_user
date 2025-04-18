import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class CustomSelectionOfAddressType extends StatelessWidget {
  const CustomSelectionOfAddressType({
    super.key,
    required this.title,
    required this.image,
    required this.isActive,
  });
  final String title, image;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        border: Border.all(
          color: isActive ? AppColors.primaryColorOneColor : Color(0xffECECEC),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(image),
          SizedBox(width: 10),
          Text(title, style: TextStyles.font20Medium(context)),
        ],
      ),
    );
  }
}
