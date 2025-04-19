import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/request_sell_view_body.dart';

class RequestSellView extends StatelessWidget {
  const RequestSellView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: RequestSellViewBody(),
    );
  }
}
