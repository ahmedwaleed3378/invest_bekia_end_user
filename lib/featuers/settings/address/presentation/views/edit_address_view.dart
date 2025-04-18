import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/featuers/settings/address/presentation/views/widgets/edit_address_view_body.dart';

class EditAddressView extends StatelessWidget {
  const EditAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: EditAddressViewBody(),
    );
  }
}
