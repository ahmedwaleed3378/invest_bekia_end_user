import 'package:flutter/material.dart';

import 'package:invest_bekia/core/widgets/app_bar/custom_sliver_app_bar_with_title.dart';
import 'package:invest_bekia/featuers/wallet/presentation/views/widgets/custom_wallet_main_widget.dart';

class WalletViewBody extends StatelessWidget {
  const WalletViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        CustomSliverAppBarWithTitle(title: 'المحفظة', haveBackBtm: true),
        CustomWalletMainWidget(),
      ],
    );
  }
}
