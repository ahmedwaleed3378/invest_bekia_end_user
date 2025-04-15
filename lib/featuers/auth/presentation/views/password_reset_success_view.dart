import 'package:flutter/material.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/widgets/password_reset_success_view_body.dart';

class PasswordResetSuccessView extends StatelessWidget {
  const PasswordResetSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF4F4F6),
      body: PasswordResetSuccessViewBody(),
    );
  }
}
