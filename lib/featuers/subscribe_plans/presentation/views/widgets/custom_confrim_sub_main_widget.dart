import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';
import 'package:invest_bekia/featuers/subscribe_plans/presentation/views/widgets/custom_personal_confirm_for_sub.dart';
import 'package:invest_bekia/featuers/subscribe_plans/presentation/views/widgets/custom_plan_confirm_for_sub.dart';

class CustomConfrimSubMainWidget extends StatefulWidget {
  const CustomConfrimSubMainWidget({super.key});

  @override
  State<CustomConfrimSubMainWidget> createState() =>
      _CustomConfirmSubMainWidgetState();
}

class _CustomConfirmSubMainWidgetState
    extends State<CustomConfrimSubMainWidget> {
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
              children: [
                SizedBox(height: 10),
                CustomPlanDetaislForConfirm(),
                SizedBox(height: 20),
                CustomPersonalConfirmForSub(),
                SizedBox(height: 25),
                CustomBigElevatedButtomWithTitle(
                  onPressed: () {},
                  title: 'تأكيد الاشتراك',
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
