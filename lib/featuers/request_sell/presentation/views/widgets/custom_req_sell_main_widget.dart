import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/scrap_type_grid_view.dart';

class CustomReqSellMainWidget extends StatelessWidget {
  const CustomReqSellMainWidget({super.key});

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
                SizedBox(height: 15),
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
                    const SizedBox(
                      width: 8,
                    ), // Add some spacing between the containers
                    Expanded(
                      child: Container(
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColors.primaryColorOneColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text('نوع الخُردة', style: TextStyles.font20SemiBold(context)),
                SizedBox(height: 15),
                ScrapTypeGridView(),

                SizedBox(height: 15),
                Text('نوع الخُردة', style: TextStyles.font20SemiBold(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
