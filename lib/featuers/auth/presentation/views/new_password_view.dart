import 'package:flutter/material.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/widgets/new_password_view_body.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF4F4F6),
      body: NewPasswordViewBody(),
    );
  }
}
