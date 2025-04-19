import 'package:flutter/material.dart';
import 'package:invest_bekia/core/widgets/app_bar/custom_sliver_app_bar_with_title.dart';
import 'package:invest_bekia/featuers/notification/presentation/views/widgets/custom_main_notifcation_widget.dart';

class NotifcationViewBody extends StatelessWidget {
  const NotifcationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        CustomSliverAppBarWithTitle(title: 'الاشعارت', haveBackBtm: true),
        CustomMainNotificationWidget(),
      ],
    );
  }
}
