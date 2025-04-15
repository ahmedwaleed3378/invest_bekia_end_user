import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';
import 'package:invest_bekia/core/widgets/helping_widgets/custom_container_with_svg_image.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/login_view.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/widgets/custom_auth_row_with_title.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/widgets/my_pin_enter_code.dart';

class VerifyResetPasswordCodeBody extends StatefulWidget {
  const VerifyResetPasswordCodeBody({super.key});

  @override
  State<VerifyResetPasswordCodeBody> createState() =>
      _VerifyResetPasswordCodeBodyState();
}

class _VerifyResetPasswordCodeBodyState
    extends State<VerifyResetPasswordCodeBody> {
  late Timer _timer;
  int _start = 60;
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    setState(() {
      _isButtonEnabled = false;
      _start = 60;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start == 0) {
        setState(() {
          _isButtonEnabled = true;
        });
        _timer.cancel();
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),

          CustomContainerWithSvgImage(image: Assets.imagesLock),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.012),
          Text(
            'كود التحقق',
            style: TextStyles.font24ExtraBold(
              context,
            ).copyWith(color: const Color(0xff212121)),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.012),
          Text(
            'دخل كود التحقق اللي بعتناه على الرقم',
            style: TextStyles.font18Medium(
              context,
            ).copyWith(color: const Color(0xff6B6B6B)),
            textAlign: TextAlign.center,
          ),
          Text(
            '01005005414',
            style: TextStyles.font22ExtraBold(context),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          MyPinEnterCode(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
          Visibility(
            visible: _start > 0,
            child: Text(
              formatTime(_start),
              style: TextStyles.font18Medium(context),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'مبعتلكش كود ؟',
                style: TextStyles.font18Medium(
                  context,
                ).copyWith(color: const Color(0xff6B6B6B)),
                textAlign: TextAlign.center,
              ),
              TextButton(
                style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
                onPressed:
                    _isButtonEnabled
                        ? () {
                          startTimer();
                          // your resend code logic here
                        }
                        : null,
                child: Text(
                  'ابعت تاني   ',
                  style: TextStyles.font18Medium(context).copyWith(
                    color:
                        _isButtonEnabled
                            ? AppColors.primaryColorOneColor
                            : Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomBigElevatedButtomWithTitle(
              onPressed: () {},
              title: 'أكد الكود',
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),

            child: CustomAuthButtomRowWithTitle(
              onPress: () {
                g.Get.off(
                  () => const LoginView(),
                  transition: g.Transition.fade,
                  duration: const Duration(milliseconds: 800),
                );
              },
              mainTitle: 'تذكرت كلمه المرور ؟',
              btmTtile: 'سجّل دخول!',
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.025),
        ],
      ),
    );
  }

  String formatTime(int seconds) {
    final minutes = (seconds ~/ 60).toString().padLeft(1, '0');
    final secs = (seconds % 60).toString().padLeft(2, '0');
    return '$minutes:$secs';
  }
}
