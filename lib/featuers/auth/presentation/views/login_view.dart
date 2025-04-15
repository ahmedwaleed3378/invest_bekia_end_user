import 'package:flutter/material.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffF4F4F6), body: LoginViewBody());
  }
}
