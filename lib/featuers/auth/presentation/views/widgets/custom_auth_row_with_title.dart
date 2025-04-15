import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class CustomAuthButtomRowWithTitle extends StatelessWidget {
  const CustomAuthButtomRowWithTitle({
    super.key,
    required this.mainTitle,
    required this.btmTtile,
    required this.onPress,
  });
  final String mainTitle, btmTtile;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          mainTitle,
          style: TextStyles.font18Medium(
            context,
          ).copyWith(color: Color(0xff212121)),
        ),
        Spacer(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Color(0xffECECEC), width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: Color(0XFFFFFFFF),
            elevation: 0,
          ),
          onPressed: onPress,
          child: Text(
            btmTtile,
            style: TextStyles.font18Medium(context).copyWith(),
          ),
        ),
      ],
    );
  }
}
