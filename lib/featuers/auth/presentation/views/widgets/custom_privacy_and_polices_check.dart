import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class CustomPrivacyAndPolicesCheck extends StatelessWidget {
  const CustomPrivacyAndPolicesCheck({super.key, required this.onPress});
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'بالضغط على تسجيل مستخدم جديد، فانت توافق على ',
        style: TextStyles.font18Medium(context),
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onPress,
            text: 'سياسة الاستخدام والخصوصية!',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
