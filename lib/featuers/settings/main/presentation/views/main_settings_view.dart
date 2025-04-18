import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/widgets/app_bar/custom_sliver_app_bar_with_title.dart';
import 'package:invest_bekia/featuers/settings/main/presentation/views/widgets/custom_main_settings_widget.dart';

class MainSettingsView extends StatelessWidget {
  const MainSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSliverAppBarWithTitle(title: 'حسابي', haveBackBtm: false),
        SliverToBoxAdapter(child: CustomMainSettingsWidget()),
      ],
    );
  }
}
