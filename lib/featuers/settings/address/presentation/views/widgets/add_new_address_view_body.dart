import 'package:flutter/material.dart';

import 'package:invest_bekia/core/widgets/app_bar/custom_sliver_app_bar_with_title.dart';
import 'package:invest_bekia/featuers/settings/address/presentation/views/widgets/custom_main_widget_for_add_new_address.dart';

class AddNewAddressViewBody extends StatelessWidget {
  const AddNewAddressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        CustomSliverAppBarWithTitle(
          title: 'إضافة عنوان جديد',
          haveBackBtm: true,
        ),
        SliverToBoxAdapter(child: CustomMainWidgetForAddNewAddress()),
      ],
    );
  }
}
