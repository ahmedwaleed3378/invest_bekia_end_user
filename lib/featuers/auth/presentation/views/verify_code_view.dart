import 'package:flutter/material.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/widgets/verify_code_body.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF4F4F6),
      body: VerifyCodeBody(),
    );
  }
}
