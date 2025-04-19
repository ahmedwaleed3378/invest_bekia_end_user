import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/requset_done_success_view_body.dart';

class RequsetDoneSuccessView extends StatelessWidget {
  const RequsetDoneSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: RequsetDoneSuccessViewBody(),
    );
  }
}
