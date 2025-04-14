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
  PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomOnBoardingAppBar(
            currentIndex: currentIndex,
            onTapBack: () {
              pageController.previousPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            onTapSkip: () {
              pageController.jumpToPage(2);
            },
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        SizedBox(
          height: 435,
          child: PageView(
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            physics: NeverScrollableScrollPhysics(),
            controller: pageController,
            children: [
              CustomOnBoardingItem(
                title: 'الخردة مش كراكيب!',
                subTitle:
                    'سلّم الخردة اللي عندك، وخد مكانها فلوس أو حصص في أرض بجد!',
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
                    'خردتك هتتحوّل لفلوس أو حصة أرض، وساعدت كمان تحافظ على البيئة',
                image: Assets.imagesOnBoardingThree,
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        SmoothPageIndicator(
          controller: pageController,
          count: 3,
          effect: CustomizableEffect(
            dotDecoration: DotDecoration(
              color: Color(0xffCECECE),
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
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomBigElevatedButtomWithTitle(
            onPressed: () {
              currentIndex != 2
                  ? pageController.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  )
                  : null;
            },
            title: currentIndex == 2 ? 'ابدأ دلوقتي !' : 'التالي',
          ),
        ),

        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
      ],
    );
  }
}
