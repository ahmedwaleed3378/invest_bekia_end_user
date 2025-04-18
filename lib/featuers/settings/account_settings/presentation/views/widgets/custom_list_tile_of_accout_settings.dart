import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class CustomListTileOfAccoutSettings extends StatelessWidget {
  const CustomListTileOfAccoutSettings({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xffECECEC), width: 1),

          color: Color(0xffffffff),
        ),
        child: Row(
          children: [
            Text(title, style: TextStyles.font18SemiBold(context)),
            Spacer(),
            Icon(IconlyLight.edit_square),
          ],
        ),
      ),
    );
  }
}
