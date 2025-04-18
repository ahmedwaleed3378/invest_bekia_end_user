import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class CustomSettingsItem extends StatelessWidget {
  CustomSettingsItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
    this.isLogout = false,
  });
  final String title, icon;
  final void Function() onPressed;
  bool isLogout = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            SvgPicture.asset(icon),
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyles.font18Medium(
                context,
              ).copyWith(color: isLogout ? AppColors.redTwo : null),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, color: Color(0xff6B6B6B)),
          ],
        ),
      ),
    );
  }
}
