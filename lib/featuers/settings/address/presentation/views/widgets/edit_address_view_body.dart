import 'package:flutter/material.dart';

import 'package:invest_bekia/core/widgets/app_bar/custom_sliver_app_bar_with_title.dart';
import 'package:invest_bekia/featuers/settings/address/presentation/views/widgets/custom_main_widget_for_edit_address.dart';

class EditAddressViewBody extends StatelessWidget {
  const EditAddressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        CustomSliverAppBarWithTitle(title: 'تعديل العنوان', haveBackBtm: true),
        SliverToBoxAdapter(child: CustomMainWidgetForEditAddress()),
      ],
    );
  }
}
