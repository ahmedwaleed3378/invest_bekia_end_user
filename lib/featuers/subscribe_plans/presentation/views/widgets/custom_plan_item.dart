// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';
import 'package:invest_bekia/featuers/orders/presentation/views/widgets/column_of_order_details.dart';
import 'package:invest_bekia/featuers/subscribe_plans/data/model/plan_model.dart';
import 'package:invest_bekia/featuers/subscribe_plans/presentation/views/widgets/custom_plan_row_for_details.dart';

class CustomPlanItem extends StatefulWidget {
  const CustomPlanItem({super.key, required this.planModel});
  final PlanModel planModel;

  @override
  State<CustomPlanItem> createState() => _CustomPlanItemState();
}

class _CustomPlanItemState extends State<CustomPlanItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color:
              widget.planModel.isYourPlan
                  ? AppColors.primaryColorThreeColor
                  : Color(0xffECECEC),
          width: 1,
        ),

        color:
            widget.planModel.isYourPlan
                ? AppColors.primaryColorOneColor.withOpacity(0.2)
                : Color(0xffffffff),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(widget.planModel.image),
              SizedBox(width: 15),
              Text(
                widget.planModel.planName,
                style: TextStyles.font18SemiBold(context),
              ),
              Spacer(),
              Visibility(
                visible: widget.planModel.isTopPlan,
                child: Transform.rotate(
                  angle: 50,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: AppColors.secondaryColorOneColor,
                    ),
                    child: Text(
                      'الاكثر اختيارا',
                      style: TextStyles.font14Medium(
                        context,
                      ).copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              CustomPlanRowForDetails(
                image: Assets.imagesCash,
                title: widget.planModel.cash,
                subTitle: 'كاش',
              ),
              Spacer(),
              CustomPlanRowForDetails(
                image: Assets.imagesCash,
                title: widget.planModel.cashScrap,
                subTitle: 'خرده',
              ),
            ],
          ),

          SizedBox(height: 25),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.primaryColorOneColor,
                width: 1,
              ),
            ),
            child: Row(
              children: [
                Spacer(),
                ColumnOfOrderDetails(
                  title: 'العائد',
                  subTitle: widget.planModel.moneyBackAfter,
                ),
                Spacer(),
                SizedBox(height: 25, child: VerticalDivider(width: 1)),
                Spacer(),
                ColumnOfOrderDetails(
                  title: 'المدة',
                  subTitle: widget.planModel.period,
                ),
                Spacer(),
              ],
            ),
          ),
          SizedBox(height: 15),
          CustomBigElevatedButtomWithTitle(
            onPressed: () {},
            isDisabled: widget.planModel.isYourPlan ? true : false,
            title:
                widget.planModel.isYourPlan ? 'باقتك الحاليه' : 'اختار الباقه',
          ),
        ],
      ),
    );
  }
}
