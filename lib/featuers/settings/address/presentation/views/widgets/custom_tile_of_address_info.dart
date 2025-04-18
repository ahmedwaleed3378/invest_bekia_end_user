import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/verify_code_view.dart';

class CustomTileOfAddressInfo extends StatelessWidget {
  const CustomTileOfAddressInfo({
    super.key,
    required this.title,
    required this.subTitle,
    this.isPhone = false,
    this.isVerified = false,
  });
  final String title, subTitle;
  final bool isPhone, isVerified;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Text(title, style: TextStyles.font18Regular(context).copyWith()),
          Spacer(),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.6,

            child:
                isPhone
                    ? Row(
                      children: [
                        Text(
                          subTitle,
                          style: TextStyles.font18Regular(context).copyWith(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        InkWell(
                          onTap: () {
                            if (!isVerified) {
                              g.Get.to(
                                () => const VerifyCodeView(),
                                transition: g.Transition.leftToRight,
                                duration: const Duration(milliseconds: 400),
                              );
                            }
                          },
                          child: Text(
                            isVerified ? ' تم التحقق ' : ' غير متحقق ',
                            style: TextStyles.font18SemiBold(context).copyWith(
                              color:
                                  isVerified
                                      ? AppColors.primaryColorOneColor
                                      : AppColors.redOne,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    )
                    : Text(
                      subTitle,
                      style: TextStyles.font18Regular(context).copyWith(),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
          ),
        ],
      ),
    );
  }
}
