import 'package:flutter/material.dart';

import 'package:invest_bekia/core/widgets/app_bar/custom_sliver_app_bar_with_title.dart';
import 'package:invest_bekia/featuers/settings/address/presentation/views/widgets/custom_address_main_widget.dart';

class AddressViewBody extends StatelessWidget {
  const AddressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        CustomSliverAppBarWithTitle(title: 'العناوين', haveBackBtm: true),
        SliverToBoxAdapter(child: CustomAddressMainWidget()),
      ],
    );
  }
}
