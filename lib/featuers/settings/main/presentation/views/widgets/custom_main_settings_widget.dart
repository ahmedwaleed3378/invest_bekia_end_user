import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/request_sell_view.dart';
import 'package:invest_bekia/featuers/settings/main/presentation/views/widgets/custom_container_settings_with_title_and_btm.dart';
import 'package:invest_bekia/featuers/settings/main/presentation/views/widgets/custom_header_of_main_settings_item_with_name_and_address.dart';
import 'package:invest_bekia/featuers/settings/main/presentation/views/widgets/custom_settings_main_container.dart';

class CustomMainSettingsWidget extends StatelessWidget {
  const CustomMainSettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 40,
          color: AppColors.primaryColorOneColor,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.backGroundColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 10),
                CustomHeaderOfMainSettingsWithAvatarAndAddress(
                  name: 'مصطفى مبروك',
                  address: '6 أكتوبر, الحى السابع, شارع ورقة بن نوفل',
                  imageUrl: 'www.imaghold.com',
                ),
                SizedBox(height: 20),
                CustomContainerWithTextAndBtmInSettings(
                  title:
                      'من شوية كراكيب لـ سهم في سيوة اسكاي!بدل ما ترميها استثمر بيها',
                  onPressed: () {
                    g.Get.to(
                      () => const RequestSellView(),
                      transition: g.Transition.leftToRight,
                      duration: const Duration(milliseconds: 400),
                    );
                  },
                ),
                SizedBox(height: 20),
                CustomSettingsMainContainer(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
