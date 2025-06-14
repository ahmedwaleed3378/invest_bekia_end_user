// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';
import 'package:invest_bekia/core/widgets/helping_widgets/custom_container_with_svg_image.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/widgets/my_pin_enter_code.dart';
import 'package:invest_bekia/featuers/home/presentation/views/home_view.dart';

class VerifyCodeBody extends StatefulWidget {
  const VerifyCodeBody({super.key});

  @override
  State<VerifyCodeBody> createState() => _VerifyCodeBodyState();
}

class _VerifyCodeBodyState extends State<VerifyCodeBody> {
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
              onPressed: () async {
                // await CacheHelper().saveData(key: 'isLogin', value: true);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomeView();
                    },
                  ),
                  (route) => false,
                );
              },
              title: 'أكد الكود',
            ),
          ),
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
