import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';
import 'package:invest_bekia/featuers/home/presentation/views/home_view.dart';

class SuccessWalletTransication extends StatelessWidget {
  const SuccessWalletTransication({super.key});

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
              backgroundColor: Color(0xffE9F7F1),
              child: SvgPicture.asset(Assets.imagesDoneSub),
            ),
            SizedBox(height: 15),
            Text(
              'تم إرسال طلب السحب بنجاح!',
              style: TextStyles.font20SemiBold(context),
            ),
            SizedBox(height: 10),
            Text(
              'سيتم تحويل المبلغ خلال 1–3 أيام عمل.📍 يمكنك متابعة حالة الطلب من "سجل السحوبات".',
              style: TextStyles.font18Medium(
                context,
              ).copyWith(color: Color(0xff6B6B6B)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            CustomBigElevatedButtomWithTitle(
              isCancle: false,
              title: "ارجع للرئيسية",
              isDisabled: false,
              onPressed:
                  () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const HomeView();
                      },
                    ),
                    (route) => false,
                  ),
            ),
            SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
