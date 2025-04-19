import 'package:flutter/material.dart';

import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/custom_app_bar_for_request_sell.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/custom_req_sell_main_widget.dart';

class RequestSellViewBody extends StatefulWidget {
  const RequestSellViewBody({super.key});

  @override
  State<RequestSellViewBody> createState() => _RequestSellViewBodyState();
}

class _RequestSellViewBodyState extends State<RequestSellViewBody> {
  int currentIndex = 0; // ✅ move it here to persist across rebuilds

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        CustomAppBarForRequestSell(
          title: 'عايز تكسب؟ يلا نبدأ!',
          haveBackBtm: true,
          isExit: currentIndex != 0,
          onPress: () {
            if (currentIndex == 0) {
              Navigator.pop(context);
            } else {
              setState(() {
                currentIndex = 0;
              });
            }
          },
        ),
        SliverToBoxAdapter(
          child: CustomReqSellMainWidget(
            onChangedStage: (index) {
              setState(() {
                currentIndex = index;
                print(currentIndex);
              });
            },
          ),
        ),
      ],
    );
  }
}
