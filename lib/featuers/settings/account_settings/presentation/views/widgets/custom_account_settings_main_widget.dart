import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/featuers/settings/account_settings/presentation/views/widgets/container_of_personal_data.dart';
import 'package:invest_bekia/featuers/settings/account_settings/presentation/views/widgets/container_of_reset_password.dart';
import 'package:invest_bekia/featuers/settings/account_settings/presentation/views/widgets/custom_list_tile_of_accout_settings.dart';

class CustomAccountSettingsMainWidget extends StatefulWidget {
  const CustomAccountSettingsMainWidget({super.key});

  @override
  State<CustomAccountSettingsMainWidget> createState() =>
      _CustomAccountSettingsMainWidgetState();
}

class _CustomAccountSettingsMainWidgetState
    extends State<CustomAccountSettingsMainWidget> {
  bool isExpandedAccoutData = true, isExpandedPasswordReset = false;

  File? imagePath;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        imagePath = File(pickedFile.path);
      });
    }
  }

  @override
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
                const SizedBox(height: 10),
                AnimatedCrossFade(
                  duration: const Duration(milliseconds: 300),
                  crossFadeState:
                      isExpandedAccoutData
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                  firstChild: ContainerOfPersonalDetails(
                    onTapCancle: () {
                      setState(() {
                        isExpandedAccoutData = !isExpandedAccoutData;
                      });
                    },
                    onTapUpdate: () {},
                    onTapToEditPhoto: () {
                      _pickImage();
                    },
                    name: 'مصطفى مبروك',
                    phone: '0123456789',
                    email: 'qHq0I@example.com',
                  ),
                  secondChild: CustomListTileOfAccoutSettings(
                    onTap: () {
                      setState(() {
                        isExpandedAccoutData = !isExpandedAccoutData;
                      });
                    },
                    title: 'المعلومات الشخصية',
                  ),
                ),
                const SizedBox(height: 20),
                AnimatedCrossFade(
                  duration: const Duration(milliseconds: 300),
                  crossFadeState:
                      isExpandedPasswordReset
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                  firstChild: ContainerOfResetPassword(
                    onTapCancle: () {
                      setState(() {
                        isExpandedPasswordReset = !isExpandedPasswordReset;
                      });
                    },
                    onTapUpdate: () {},
                    password: 'sadsdasd',
                  ),
                  secondChild: CustomListTileOfAccoutSettings(
                    title: 'تغيير الرقم السري',
                    onTap: () {
                      setState(() {
                        isExpandedPasswordReset = !isExpandedPasswordReset;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
