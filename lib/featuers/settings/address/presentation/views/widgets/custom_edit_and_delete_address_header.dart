import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class CustomEditAndDeleteBtmHeaderOfAddress extends StatelessWidget {
  const CustomEditAndDeleteBtmHeaderOfAddress({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });
  final String title;
  final IconData icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, color: Colors.black, size: 20),
          SizedBox(width: 4),
          Text(title, style: TextStyles.font18Regular(context).copyWith()),
        ],
      ),
    );
  }
}
