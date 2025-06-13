// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/core/helper/cached_helper.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/widgets/helping_widgets/custom_circle_progress.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/login_view.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/register_view.dart';
import 'package:invest_bekia/featuers/home/presentation/views/home_view.dart';
import 'package:invest_bekia/featuers/on_boarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.2).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.slowMiddle),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    _animationController.forward();

    Future.delayed(const Duration(milliseconds: 2500), () async {
      var value =  CacheHelper.to.isOnboardingViewed;

      if (!value) {
        g.Get.off(
          () => const OnBoardingView(),
          transition: g.Transition.fade,
          duration: const Duration(milliseconds: 800),
        );
      } else {
        var valueOfLogin =  CacheHelper.to.isLoggedIn;
        if (valueOfLogin ) {
          g.Get.off(
            () => const HomeView(),
            transition: g.Transition.fade,
            duration: const Duration(milliseconds: 800),
          );
        } else {
          g.Get.off(
            () => const LoginView(),
            transition: g.Transition.fade,
            duration: const Duration(milliseconds: 800),
          );
        }
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
              child: AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return FadeTransition(
                    opacity: _fadeAnimation,
                    child: Transform.scale(
                      scale: _scaleAnimation.value,
                      child: child,
                    ),
                  );
                },
                child: Image.asset(Assets.imagesInvestBekia),
              ),
            ),
            const Spacer(),
            CustomCircleProgressIndicator(),
            SizedBox(height: 25),
          ],
        ),
      ],
    );
  }
}
