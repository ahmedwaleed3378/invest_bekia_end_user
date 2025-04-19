import 'package:flutter/material.dart';
import 'package:invest_bekia/featuers/home/presentation/views/widgets/custom_home_main_widget.dart';
import 'package:invest_bekia/featuers/home/presentation/views/widgets/custom_sliver_app_bar_for_home.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: [
        CustomSliverAppBarForHome(name: 'مصطفى مبروك'),
        SliverToBoxAdapter(child: CustomHomeMainWidget()),
      ],
    );
  }
}
