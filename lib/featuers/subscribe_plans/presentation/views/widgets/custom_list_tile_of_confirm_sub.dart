import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class CustomTileOfConfirmPlanSubInfo extends StatelessWidget {
  const CustomTileOfConfirmPlanSubInfo({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyles.font18Regular(
              context,
            ).copyWith(color: Color(0xff6B6B6B)),
          ),
          Spacer(),
          Text(
            subTitle,
            style: TextStyles.font18Regular(context).copyWith(),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
