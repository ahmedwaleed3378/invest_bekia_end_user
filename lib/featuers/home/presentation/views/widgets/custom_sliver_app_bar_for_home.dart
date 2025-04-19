import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/featuers/home/data/model/main_app_bar_item_model.dart';
import 'package:invest_bekia/featuers/home/presentation/views/widgets/custom_header_info_container.dart';
import 'package:invest_bekia/featuers/home/presentation/views/widgets/custom_welcome_user_home_with_image_and_notifcation.dart';

class CustomSliverAppBarForHome extends StatefulWidget {
  const CustomSliverAppBarForHome({super.key, required this.name});
  final String name;

  @override
  State<CustomSliverAppBarForHome> createState() =>
      _CustomSliverAppBarForHomeState();
}

class _CustomSliverAppBarForHomeState extends State<CustomSliverAppBarForHome> {
  List<MainAppBarItemModel> mainAppBarItemModels = [
    MainAppBarItemModel(
      title: '28000 ج.م',
      subTitle: 'فلوسك',
      image: Assets.imagesYourMoney,
      bgColor: Color(0xffE9F7F1),
    ),
    MainAppBarItemModel(
      title: '0 سهم',
      subTitle: 'اسهمك',
      image: Assets.imagesStock,
      bgColor: Color(0xffE5F1F8),
    ),
    MainAppBarItemModel(
      title: '220 كيلو',
      subTitle: 'خردة بعتها',
      image: Assets.imagesSoldScrap,
      bgColor: Color(0xffFEF6EB),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 210, // Increased height for more design space
      leadingWidth: 70,
      backgroundColor: AppColors.primaryColorOneColor,
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ), // Add horizontal and vertical padding
        child: SafeArea(
          child: Column(
            children: [
              CustomWelcomeUserHeaderWithNotifcation(
                name: widget.name,
                notificationCount: 3,
                onTap: () {},
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Spacer(),
                  CustomHeaderInfoContainer(
                    mainAppBarItemModel: mainAppBarItemModels[0],
                  ),
                  Spacer(),
                  CustomHeaderInfoContainer(
                    mainAppBarItemModel: mainAppBarItemModels[1],
                  ),
                  Spacer(),
                  CustomHeaderInfoContainer(
                    mainAppBarItemModel: mainAppBarItemModels[2],
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
