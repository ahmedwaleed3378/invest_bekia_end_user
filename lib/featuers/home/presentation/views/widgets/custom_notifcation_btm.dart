import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class CustomNotifactionBtm extends StatelessWidget {
  const CustomNotifactionBtm({
    super.key,
    required this.notificationCount,
    required this.onTap,
  });
  final int notificationCount;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: Icon(IconlyLight.notification, color: Colors.black),
          ),

          Positioned(
            top: 0,
            right: -6,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0.5),
                borderRadius: BorderRadius.circular(12),
                color: AppColors.secondaryColorOneColor,
              ),
              child: Text(
                notificationCount.toString(),
                style: TextStyles.font14Regular(
                  context,
                ).copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
