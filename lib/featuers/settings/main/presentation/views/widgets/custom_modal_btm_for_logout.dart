// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/core/helper/cached_helper.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/login_view.dart';

class CustomModalBottomSheetForLogout extends StatelessWidget {
  const CustomModalBottomSheetForLogout({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xffFAE5E7),
              child: SvgPicture.asset(Assets.imagesLogoutReq),
            ),
            SizedBox(height: 15),
            Text('تسجيل الخروج', style: TextStyles.font20SemiBold(context)),
            SizedBox(height: 10),
            Text(
              'لو خرجت، مش هتقدر تتابع طلباتك ولا تشوف رصيدك. متأكد إنك عايز تسجّل خروج؟',
              style: TextStyles.font18Medium(
                context,
              ).copyWith(color: Color(0xff6B6B6B)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomBigElevatedButtomWithTitle(
                      isCancle: false,
                      title: "لأ، رجّعني وكمّل",
                      isDisabled: false,
                      onPressed: () => g.Get.back(),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomBigElevatedButtomWithTitle(
                      isCancle: true,
                      title: "تسجيل الخروج",
                      isDisabled: false,
                      onPressed: () async {
                        await CacheHelper.to.clearUserData();
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
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
