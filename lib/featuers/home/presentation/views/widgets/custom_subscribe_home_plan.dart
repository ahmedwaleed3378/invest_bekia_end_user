import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/orders/presentation/views/widgets/column_of_order_details.dart';

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
                      'باقة البداية',
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
                      child: Text(
                        'اول عائد: 1 ديسمبر 2025',
                        style: TextStyles.font14Medium(
                          context,
                        ).copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15),
                Text(
                  'إجمالى الاستثمار',
                  style: TextStyles.font14Medium(
                    context,
                  ).copyWith(color: Colors.white),
                ),
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
          Row(
            children: [
              Spacer(),
              ColumnOfOrderDetails(title: 'الاسهم', subTitle: '1'),
              Spacer(),
              SizedBox(height: 25, child: VerticalDivider(width: 1)),
              Spacer(),
              ColumnOfOrderDetails(title: 'عائد شهرى', subTitle: '200 ج.م'),
              Spacer(),
              SizedBox(height: 25, child: VerticalDivider(width: 1)),
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColorOneColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(IconlyLight.arrow_down, color: Colors.white),
                    Text(
                      'سحب',
                      style: TextStyles.font14Medium(
                        context,
                      ).copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
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
              'دخل شهرى ثابت مدى 15 سنة‘ استثمار ذكى وامن',
              style: TextStyles.font14Medium(context),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
