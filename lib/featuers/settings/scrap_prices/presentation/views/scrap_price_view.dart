import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/featuers/settings/scrap_prices/presentation/views/widgets/scarp_price_view_body.dart';

class ScrapPriceView extends StatelessWidget {
  const ScrapPriceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: ScarpPriceViewBody(),
    );
  }
}
