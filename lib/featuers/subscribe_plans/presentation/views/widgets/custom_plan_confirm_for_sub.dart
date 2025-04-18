import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/subscribe_plans/presentation/views/widgets/custom_list_tile_of_confirm_sub.dart';

class CustomPlanDetaislForConfirm extends StatelessWidget {
  const CustomPlanDetaislForConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xffECECEC), width: 1),

        color: Color(0xffffffff),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('تفاصيل الباقة', style: TextStyles.font18SemiBold(context)),
          SizedBox(height: 5),
          CustomTileOfConfirmPlanSubInfo(
            title: 'اسم الباقة',
            subTitle: 'الباقة الذهبية',
          ),
          CustomTileOfConfirmPlanSubInfo(
            title: 'قيمة السهم',
            subTitle: '40,000 ج.م',
          ),
          CustomTileOfConfirmPlanSubInfo(
            title: 'طريقة الدفع',
            subTitle: '10,000 كاش & 30,000 خردة',
          ),
          CustomTileOfConfirmPlanSubInfo(
            title: 'بداية العائد',
            subTitle: 'من الشهر السادس',
          ),
          CustomTileOfConfirmPlanSubInfo(
            title: 'مدة العائد',
            subTitle: '15 سنة',
          ),
        ],
      ),
    );
  }
}
