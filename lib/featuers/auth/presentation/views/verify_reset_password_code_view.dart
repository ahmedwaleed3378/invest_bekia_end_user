import 'package:flutter/material.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/widgets/verify_reset_password_code_body.dart';

class VerifyResetPasswordCodeView extends StatelessWidget {
  const VerifyResetPasswordCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF4F4F6),
      body: VerifyResetPasswordCodeBody(),
    );
  }
}
