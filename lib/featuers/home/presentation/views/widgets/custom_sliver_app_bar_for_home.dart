import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/core/helper/cached_helper.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/featuers/home/data/model/main_app_bar_item_model.dart';
import 'package:invest_bekia/featuers/home/presentation/views/widgets/custom_header_info_container.dart';
import 'package:invest_bekia/featuers/home/presentation/views/widgets/custom_welcome_user_home_with_image_and_notifcation.dart';
import 'package:invest_bekia/featuers/notification/presentation/views/notification_view.dart';

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
      title: '${CacheHelper.to.reservedCach} ج.م',
      subTitle: 'فلوسك',
      image: Assets.imagesYourMoney,
      bgColor: Color(0xffE9F7F1),
    ),
    MainAppBarItemModel(
      title: '${CacheHelper.to.walletBalance} ج.م',
      subTitle: 'أرباحك',
      image: Assets.imagesStock,
      bgColor: Color(0xffE5F1F8),
    ),
    MainAppBarItemModel(
      title: '${CacheHelper.to.selledAmount} كيلو',
      subTitle: 'خردة بعتها',
      image: Assets.imagesSoldScrap,
      bgColor: Color(0xffFEF6EB),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      snap: false,
      expandedHeight: 230,
      backgroundColor: AppColors.primaryColorOneColor,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 8),
                CustomWelcomeUserHeaderWithNotifcation(
                  name: widget.name,
                  notificationCount: 3,
                  onTap: () {
                    g.Get.to(
                      () => const NotificationView(),
                      transition: g.Transition.leftToRight,
                      duration: const Duration(milliseconds: 400),
                    );
                  },
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                      mainAppBarItemModels.map((model) {
                        return Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4.0,
                            ),
                            child: CustomHeaderInfoContainer(
                              mainAppBarItemModel: model,
                            ),
                          ),
                        );
                      }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
