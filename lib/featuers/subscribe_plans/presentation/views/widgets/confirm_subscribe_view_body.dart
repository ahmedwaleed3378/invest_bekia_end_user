import 'package:flutter/material.dart';

import 'package:invest_bekia/core/widgets/app_bar/custom_sliver_app_bar_with_title.dart';
import 'package:invest_bekia/featuers/subscribe_plans/presentation/views/widgets/custom_plans_main_widget.dart';

class ConfirmSubscribeViewBody extends StatelessWidget {
  const ConfirmSubscribeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        CustomSliverAppBarWithTitle(title: 'الباقات', haveBackBtm: false),
        SliverToBoxAdapter(child: CustomPlansMainWidget()),
      ],
    );
  }
}
