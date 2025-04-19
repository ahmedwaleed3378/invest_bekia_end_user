import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/requset_done_success_view.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/stage_one_in_requst_sell.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/stage_two_in_request_sell.dart';

class CustomReqSellMainWidget extends StatefulWidget {
  const CustomReqSellMainWidget({super.key, required this.onChangedStage});
  final void Function(int index) onChangedStage;

  @override
  State<CustomReqSellMainWidget> createState() =>
      CustomReqSellMainWidgetState();
}

class CustomReqSellMainWidgetState extends State<CustomReqSellMainWidget> {
  int currentStep = 0;

  int get getCurrentStep => currentStep;

  void goToPreviousStep() {
    setState(() {
      currentStep = 0;
      widget.onChangedStage(currentStep);
    });
  }

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'اعمل طلب جديد لبيع خُردتك',
                  style: TextStyles.font20SemiBold(context),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.fastOutSlowIn,
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColors.primaryColorOneColor,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.fastOutSlowIn,
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color:
                              currentStep == 0
                                  ? const Color(0xffE2F0EC)
                                  : AppColors.primaryColorOneColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              currentStep == 0
                  ? const StageOneInRequsetSell()
                  : const StageTwoInRequestSell(),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),

                child: CustomBigElevatedButtomWithTitle(
                  onPressed: () {
                    setState(() {
                      currentStep = currentStep == 0 ? 1 : 2;
                      widget.onChangedStage(currentStep);
                    });
                    if (currentStep == 2) {
                      g.Get.off(
                        () => const RequsetDoneSuccessView(),
                        transition: g.Transition.leftToRight,
                        duration: const Duration(milliseconds: 400),
                      );
                    }
                  },
                  title: currentStep == 1 ? 'أكد الطلب وابعته' : 'يلا نكمل',
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
