import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/settings/address/presentation/views/edit_address_view.dart';

class CustomContainerOfConfirmAddress extends StatelessWidget {
  const CustomContainerOfConfirmAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xffECECEC), width: 1),
        color: Color(0xffffffff),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xffE9F7F1),
            ),
            child: SvgPicture.asset(Assets.imagesLocation),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('مكانك دلوقتي', style: TextStyles.font18Medium(context)),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.5,
                child: Text(
                  'مدينه 6 اكتوبر الحي الاول بجوار المدرسة وبعد البنك',
                  style: TextStyles.font14Medium(context),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
          Spacer(),
          InkWell(
            onTap: () {
              g.Get.to(
                () => const EditAddressView(),
                transition: g.Transition.leftToRight,
                duration: const Duration(milliseconds: 400),
              );
            },
            child: Text(
              'تعديل',
              style: TextStyles.font14Medium(
                context,
              ).copyWith(color: AppColors.primaryColorOneColor),
            ),
          ),
        ],
      ),
    );
  }
}
