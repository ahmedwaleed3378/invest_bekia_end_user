import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';

import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/stage_one_in_requst_sell.dart';

class CustomReqSellMainWidget extends StatefulWidget {
  const CustomReqSellMainWidget({super.key, required this.onChangedStage});
  final void Function(int index) onChangedStage;

  @override
  State<CustomReqSellMainWidget> createState() =>
      _CustomReqSellMainWidgetState();
}

class _CustomReqSellMainWidgetState extends State<CustomReqSellMainWidget> {
  int currentStep = 0;

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
                const SizedBox(height: 10),
                Text(
                  'اعمل طلب جديد لبيع خُردتك',
                  style: TextStyles.font20SemiBold(context),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColors.primaryColorOneColor,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color:
                              currentStep == 0
                                  ? Color(0xffE2F0EC)
                                  : AppColors.primaryColorOneColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                /// ✅ IndexedStack بدلاً من PageView
                IndexedStack(
                  index: currentStep,
                  children: const [
                    StageOneInRequsetSell(),
                    StageOneInRequsetSell(),
                  ],
                ),
                CustomBigElevatedButtomWithTitle(
                  onPressed: () {
                    setState(() {
                      // غير المرحلة أولاً
                      currentStep = currentStep == 0 ? 1 : 0;
                      // ثم بلغ الparent بالمرحلة الجديدة
                      widget.onChangedStage(currentStep);
                    });
                  },
                  title: currentStep == 1 ? 'أكد الطلب وابعته' : 'يلا نكمل',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
