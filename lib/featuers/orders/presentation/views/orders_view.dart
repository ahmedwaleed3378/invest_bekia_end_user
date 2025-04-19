import 'package:flutter/material.dart';

import 'package:invest_bekia/core/widgets/app_bar/custom_sliver_app_bar_with_title.dart';
import 'package:invest_bekia/featuers/orders/presentation/views/widgets/custom_orders_main_widget.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        CustomSliverAppBarWithTitle(title: 'طلباتى', haveBackBtm: false),
        CustomOrdersMainWidget(),
      ],
    );
  }
}
