import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';
import 'package:invest_bekia/featuers/settings/wallet/presentation/views/widgets/success_wallet_transication.dart';

class CustomWalletContainer extends StatefulWidget {
  const CustomWalletContainer({super.key});

  @override
  State<CustomWalletContainer> createState() => _CustomWalletContainerState();
}

class _CustomWalletContainerState extends State<CustomWalletContainer> {
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.primaryColorOneColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.backGroundColor,
                ),
                child: SvgPicture.asset(
                  Assets.imagesWallet,
                  width: 35,
                  height: 35,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'الرصيد المتاح للسحب',
                          style: TextStyles.font18SemiBold(
                            context,
                          ).copyWith(color: Colors.white),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isShow = !isShow;
                            });
                          },
                          child: Icon(
                            isShow ? IconlyLight.hide : IconlyLight.show,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      isShow ? '15,000 ج.م' : '***** ج.م',
                      style: TextStyles.font24Bold(
                        context,
                      ).copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          CustomBigElevatedButtomWithTitle(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Color(0xffffffff),
                showDragHandle: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                context: context,
                builder: (context) {
                  return SuccessWalletTransication();
                },
              );
            },
            isCancle: true,
            title: 'سحب الارباح',
          ),
        ],
      ),
    );
  }
}
