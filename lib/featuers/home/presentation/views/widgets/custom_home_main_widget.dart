import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/core/utils/app_colors.dart';

import 'package:invest_bekia/featuers/home/presentation/views/widgets/custom_goal_container.dart';
import 'package:invest_bekia/featuers/home/presentation/views/widgets/custom_note_btm_to_collect_scrap.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/request_sell_view.dart';

class CustomHomeMainWidget extends StatelessWidget {
  const CustomHomeMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColorOneColor,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        child: Container(
          color: AppColors.backGroundColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 10),
                CustomNoteBtmToCollectScrap(
                  onPressed: () {
                    g.Get.to(
                      () => const RequestSellView(),
                      transition: g.Transition.leftToRight,
                      duration: const Duration(milliseconds: 400),
                    );
                  },
                ),
                SizedBox(height: 10),
                CustomGoalContainer(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
