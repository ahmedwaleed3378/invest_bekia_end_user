import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/featuers/settings/wallet/presentation/views/widgets/wallet_view_body.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: WalletViewBody(),
    );
  }
}
