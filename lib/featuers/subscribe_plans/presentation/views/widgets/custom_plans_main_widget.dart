import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/featuers/subscribe_plans/data/model/plan_model.dart';
import 'package:invest_bekia/featuers/subscribe_plans/presentation/views/confirm_subscribe_view.dart';
import 'package:invest_bekia/featuers/subscribe_plans/presentation/views/widgets/custom_plan_item.dart';

class CustomPlansMainWidget extends StatefulWidget {
  const CustomPlansMainWidget({super.key});

  @override
  State<CustomPlansMainWidget> createState() => _CustomPlansMainWidgetState();
}

class _CustomPlansMainWidgetState extends State<CustomPlansMainWidget> {
  void goToSubscribe() {
    g.Get.to(
      () => const ConfirmSubscribeView(),
      transition: g.Transition.leftToRight,
      duration: const Duration(milliseconds: 400),
    );
  }

  final List<PlanModel> plans = [
    PlanModel(
      image: Assets.imagesStarter,
      cash: '0 ج.م',
      isYourPlan: true,
      cashScrap: '40,000 ج.م فى سنة ',
      planName: 'باقه البدايه',
      moneyBackAfter: 'يبدأ بعد سنة',
      period: '15 سنة',
    ),
    PlanModel(
      image: Assets.imagesGold,
      planName: 'الباقة الذهبية',
      cash: '20,000 ج.م',
      isYourPlan: false,

      cashScrap: '20,000 ج.م فى سنة',
      moneyBackAfter: 'يبدأ من الشهر السادس',
      isTopPlan: true,
      period: '15 سنة',
    ),
    PlanModel(
      image: Assets.imagesSilver,
      planName: 'الباقة الفضية',
      cash: '10,000 ج.م ',
      isYourPlan: false,

      cashScrap: '30,000 ج.م فى سنة',
      moneyBackAfter: 'يبدأ بعد سنة',
      period: '15 سنة',
    ),
  ];
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
                CustomPlanItem(
                  planModel: plans[0],
                  onPressed: () {
                    goToSubscribe();
                    setState(() {
                      plans[0].isYourPlan = !plans[0].isYourPlan;
                      plans[1].isYourPlan = false;
                      plans[2].isYourPlan = false;
                    });
                  },
                ),
                SizedBox(height: 10),

                CustomPlanItem(
                  planModel: plans[1],
                  onPressed: () {
                    goToSubscribe();

                    setState(() {
                      plans[0].isYourPlan = false;
                      plans[1].isYourPlan = !plans[1].isYourPlan;
                      plans[2].isYourPlan = false;
                    });
                  },
                ),
                SizedBox(height: 10),

                CustomPlanItem(
                  planModel: plans[2],
                  onPressed: () {
                    goToSubscribe();

                    setState(() {
                      plans[0].isYourPlan = false;
                      plans[1].isYourPlan = false;
                      plans[2].isYourPlan = !plans[2].isYourPlan;
                    });
                  },
                ),

                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
