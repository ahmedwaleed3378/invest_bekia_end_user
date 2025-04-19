import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';
import 'package:invest_bekia/featuers/home/presentation/views/home_view.dart';

class CustomSubForPlanSuccessBtmSheet extends StatelessWidget {
  const CustomSubForPlanSuccessBtmSheet({super.key});

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
              'مبروك! اشتركت في الباقة وزوّدت استثمارك',
              style: TextStyles.font20SemiBold(context),
            ),
            SizedBox(height: 10),
            Text(
              'كل خطوة زي دي بتقرّبك أكتر من هدفك… كمل وجمّع خردة تزود بيها حصّتك!',
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
                  () => g.Get.off(
                    () => const HomeView(),
                    transition: g.Transition.fade,
                    duration: const Duration(milliseconds: 400),
                  ),
            ),
            SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
