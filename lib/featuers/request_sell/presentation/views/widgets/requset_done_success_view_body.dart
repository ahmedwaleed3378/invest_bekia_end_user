import 'package:flutter/material.dart';
import 'package:invest_bekia/featuers/home/presentation/views/home_view.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/custom_app_bar_for_request_sell.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/custom_main_requset_success_widget.dart';

class RequsetDoneSuccessViewBody extends StatelessWidget {
  const RequsetDoneSuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        CustomAppBarForRequestSell(
          title: 'عايز تكسب؟ يلا نبدأ!',
          haveBackBtm: true,
          isExit: true,
          onPress: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const HomeView();
                },
              ),
              (route) => false,
            );
          },
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: CustomMainRequsetSuccessWidget(),
        ),
      ],
    );
  }
}
