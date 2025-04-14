import 'package:flutter/material.dart';
import 'package:invest_bekia/featuers/on_boarding/presentation/views/widgets/custom_on_boarding_app_bar.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SafeArea(child: SizedBox()),
          CustomOnBoardingAppBar(onTapBack: () {}, onTapSkip: () {}),
        ],
      ),
    );
  }
}
