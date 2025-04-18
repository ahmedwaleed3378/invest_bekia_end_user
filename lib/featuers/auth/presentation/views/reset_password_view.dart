import 'package:flutter/material.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/widgets/reset_password_view_body.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key, this.isInApp = false});
  final bool isInApp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF4F4F6),
      body: ResetPasswordViewBody(isInApp: isInApp),
    );
  }
}
