import 'package:flutter/material.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/custom_app_bar_for_request_sell.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/custom_req_sell_main_widget.dart';

class RequestSellViewBody extends StatefulWidget {
  const RequestSellViewBody({super.key});

  @override
  State<RequestSellViewBody> createState() => _RequestSellViewBodyState();
}

class _RequestSellViewBodyState extends State<RequestSellViewBody> {
  int currentIndex = 0;

  final GlobalKey<CustomReqSellMainWidgetState> _customReqSellKey =
      GlobalKey<CustomReqSellMainWidgetState>();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        CustomAppBarForRequestSell(
          title: 'عايز تكسب؟ يلا نبدأ!',
          haveBackBtm: true,
          isExit: currentIndex != 1,
          onPress: () {
            final currentStep =
                _customReqSellKey.currentState?.getCurrentStep ?? 0;

            if (currentStep == 0) {
              Navigator.pop(context);
            } else {
              _customReqSellKey.currentState?.goToPreviousStep();
              setState(() {
                currentIndex = 0;
              });
            }
          },
        ),
        SliverToBoxAdapter(
          child: CustomReqSellMainWidget(
            key: _customReqSellKey,
            onChangedStage: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ],
    );
  }
}
