import 'package:flutter/material.dart';
import 'package:invest_bekia/core/widgets/app_bar/custom_sliver_app_bar_with_title.dart';
import 'package:invest_bekia/featuers/settings/account_settings/presentation/views/widgets/custom_account_settings_main_widget.dart';

class AccountSettingsViewBody extends StatelessWidget {
  const AccountSettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        CustomSliverAppBarWithTitle(title: 'إعدادات الحساب', haveBackBtm: true),
        SliverToBoxAdapter(child: CustomAccountSettingsMainWidget()),
      ],
    );
  }
}
