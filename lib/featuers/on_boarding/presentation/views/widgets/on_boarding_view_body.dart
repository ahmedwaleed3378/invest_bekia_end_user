// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';
import 'package:invest_bekia/featuers/on_boarding/presentation/views/widgets/custom_on_boarding_app_bar.dart';
import 'package:invest_bekia/featuers/on_boarding/presentation/views/widgets/custom_on_boarding_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  final PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.height > 700;
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        SafeArea(child: SizedBox(height: screenHeight * 0.01)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomOnBoardingAppBar(
            currentIndex: currentIndex,
            onTapBack: () {
              pageController.previousPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            onTapSkip: () {
              pageController.jumpToPage(2);
            },
          ),
        ),
        SizedBox(height: screenHeight * 0.03),

        // Responsive PageView
        Expanded(
          flex: 4,
          child: PageView(
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            children: const [
              CustomOnBoardingItem(
                title: 'الخردة مش كراكيب!',
                subTitle:
                    'كل مرة بترمي خردة قديمة، إنت بترمي فرصة! بدل ما ترميها، استثمر بيها مع إنفيست بيكيا 🌱',
                image: Assets.imagesOnBoardingOne,
              ),
              CustomOnBoardingItem(
                title: 'كل اللي عليك تصوّر وتطلب',
                subTitle:
                    'صوّر الخردة، اختار الكمية والمعاد اللي يناسبك،والمندوب هييجي لحد باب بيتك!',
                image: Assets.imagesOnBoardingTwo,
              ),
              CustomOnBoardingItem(
                title: 'كسبان في كل حالة',
                subTitle:
                    'الخردة النهاردة = سهم استثماري بكرة 📈 قيمتها تتحول لسهم استثماري قيمته بتزيد ويدخلك عائد',
                image: Assets.imagesOnBoardingThree,
              ),
            ],
          ),
        ),

        SmoothPageIndicator(
          controller: pageController,
          count: 3,
          effect: CustomizableEffect(
            dotDecoration: DotDecoration(
              color: const Color(0xffCECECE),
              borderRadius: BorderRadius.circular(12),
              width: 12,
              height: 12,
            ),
            activeDotDecoration: DotDecoration(
              dotBorder: DotBorder(
                type: DotBorderType.solid,
                color: AppColors.primaryColorOneColor,
                padding: 3,
              ),
              color: AppColors.primaryColorOneColor,
              borderRadius: BorderRadius.circular(12),
              width: 12,
              height: 12,
            ),
          ),
        ),

        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomBigElevatedButtomWithTitle(
            onPressed: () {
              if (currentIndex != 2) {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              }
            },
            title: currentIndex == 2 ? 'ابدأ دلوقتي !' : 'التالي',
          ),
        ),

        SizedBox(height: screenHeight * 0.02),
      ],
    );
  }
}
