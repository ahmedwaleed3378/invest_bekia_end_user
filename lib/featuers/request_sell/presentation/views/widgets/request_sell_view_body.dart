import 'package:flutter/material.dart';

import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/custom_app_bar_for_request_sell.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/custom_req_sell_main_widget.dart';

class RequestSellViewBody extends StatelessWidget {
  const RequestSellViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        CustomAppBarForRequestSell(
          title: 'عايز تكسب؟ يلا نبدأ!',
          haveBackBtm: true,
          isExit: true,
          onPress: () {
            Navigator.pop(context);
          },
        ),
        SliverToBoxAdapter(child: CustomReqSellMainWidget()),
      ],
    );
  }
}
