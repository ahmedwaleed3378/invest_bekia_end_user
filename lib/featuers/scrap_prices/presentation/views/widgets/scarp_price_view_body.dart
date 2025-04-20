import 'package:flutter/material.dart';

import 'package:invest_bekia/core/widgets/app_bar/custom_sliver_app_bar_with_title.dart';
import 'package:invest_bekia/featuers/scrap_prices/presentation/views/widgets/custom_scrap_price_main_widget.dart';

class ScarpPriceViewBody extends StatelessWidget {
  const ScarpPriceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        CustomSliverAppBarWithTitle(title: 'اسعار الخردة', haveBackBtm: true),
        CustomScrapPriceMainWidget(),
      ],
    );
  }
}
