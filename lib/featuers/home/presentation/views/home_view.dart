// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/widgets/login_view_body.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/widgets/register_view_body.dart';
import 'package:invest_bekia/featuers/settings/main/presentation/views/main_settings_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final PageController _pageController;

  int _selectedIndex = 3;

  final List<_NavItem> _items = [
    _NavItem('حسابي', Assets.imagesPerson, Assets.imagesPersonFill),
    _NavItem('طلباتي', Assets.imagesBox, Assets.imagesBoxFill),
    _NavItem('الباقات', Assets.imagesCrown, Assets.imagesCrownFill),
    _NavItem('الرئيسية', Assets.imagesHome, Assets.imagesHomeFill),
  ];
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          MainSettingsView(),
          RegisterViewBody(),
          RegisterViewBody(),
          LoginViewBody(),
        ],
      ),
      backgroundColor: AppColors.backGroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          shape: const CircleBorder(),
          elevation: 0,
          backgroundColor: AppColors.primaryColorOneColor,
          child: const Icon(IconlyBold.plus, color: Colors.white, size: 35),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          height: 75, // Custom height for enough space
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, -2),
              ),
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(_items.length + 1, (index) {
              if (index == 2) return const SizedBox(width: 40); // space for FAB

              final int actualIndex = index > 2 ? index - 1 : index;
              final _NavItem item = _items[actualIndex];
              final bool isSelected = _selectedIndex == actualIndex;

              return Expanded(
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    setState(() => _selectedIndex = actualIndex);
                    _pageController.animateToPage(
                      actualIndex,
                      duration: const Duration(milliseconds: 450),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color:
                                isSelected
                                    ? AppColors.primaryColorOneColor
                                        .withOpacity(0.1)
                                    : Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: SvgPicture.asset(
                            isSelected ? item.activeIcon : item.inactiveIcon,
                          ),
                        ),
                        const SizedBox(height: 4),
                        AnimatedDefaultTextStyle(
                          duration: const Duration(milliseconds: 300),
                          style: TextStyles.font18Medium(context).copyWith(
                            fontSize: 12,
                            color:
                                isSelected
                                    ? AppColors.primaryColorOneColor
                                    : const Color(0xff6B6B6B),
                          ),
                          child: Text(item.label),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class _NavItem {
  final String label;
  final String inactiveIcon;
  final String activeIcon;

  const _NavItem(this.label, this.inactiveIcon, this.activeIcon);
}
