import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class ColumnOfOrderDetails extends StatelessWidget {
  const ColumnOfOrderDetails({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyles.font14Medium(
            context,
          ).copyWith(color: Color(0xff6B6B6B)),
        ),
        SizedBox(height: 5),
        Text(subTitle, style: TextStyles.font14SemiBold(context)),
      ],
    );
  }
}
