import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/login_view.dart';

class PasswordResetSuccessViewBody extends StatelessWidget {
  const PasswordResetSuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.imagesCongraltulations),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.012),

            Text(
              'مبروك!',
              style: TextStyles.font24ExtraBold(context).copyWith(),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.012),

            Text(
              'كلمة السر اتغيرت بنجاح. ممكن تسجل دخول دلوقتي.',
              style: TextStyles.font18Medium(
                context,
              ).copyWith(color: const Color(0xff6B6B6B)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.035),
            CustomBigElevatedButtomWithTitle(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginView();
                    },
                  ),
                  (route) => false,
                );
              },
              title: 'تسجيل الدخول',
            ),
          ],
        ),
      ),
    );
  }
}
