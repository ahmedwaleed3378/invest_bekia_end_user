import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/featuers/subscribe_plans/presentation/views/widgets/confirm_subscribe_view_body.dart';

class ConfirmSubscribeView extends StatelessWidget {
  const ConfirmSubscribeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: ConfirmSubscribeViewBody(),
    );
  }
}
