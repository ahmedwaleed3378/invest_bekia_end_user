import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/settings/main/presentation/views/widgets/custom_container_settings_with_title_and_btm.dart';
import 'package:invest_bekia/featuers/settings/main/presentation/views/widgets/custom_header_of_main_settings_item_with_name_and_address.dart';

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
                      'من شوية كراكيب لـ سهم في سيوة سكاي! بدل ما ترميها استثمر بيها',
                  onPressed: () {},
                ),
                Text('sda'),
                Text('sda'),
                Text('sda'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
