import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart' as g;
import 'package:iconly/iconly.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/orders/presentation/views/widgets/column_of_order_details.dart';
import 'package:invest_bekia/featuers/settings/wallet/presentation/views/wallet_view.dart';

class CustomSubscribeHomePlan extends StatelessWidget {
  const CustomSubscribeHomePlan({super.key});

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
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.primaryColorOneColor,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(Assets.imagesStarter),
                    SizedBox(width: 10),
                    Text(
                      'إجمالي الرصيد',
                      style: TextStyles.font18SemiBold(
                        context,
                      ).copyWith(color: Colors.white),
                    ),
                    Spacer(),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: AppColors.secondaryColorOneColor,
                      ),
                      child: Icon(
                        Icons.visibility_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15),
               
                Text(
                  '40,000 ج.م',
                  style: TextStyles.font20Bold(
                    context,
                  ).copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          // HomeActionsRow(),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: AppColors.secondaryColorOneColor,
                width: 1,
              ),
              color: Color(0xffE6F1F9),
            ),
            child: Text(
              'إستبدل الخردة وابدا رحلتك فى تحويش واستثمار الاموال',
              style: TextStyles.font14Medium(context),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
