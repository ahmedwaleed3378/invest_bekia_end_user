import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;
import 'package:iconly/iconly.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/orders/presentation/views/widgets/column_of_order_details.dart';
import 'package:invest_bekia/featuers/settings/wallet/presentation/views/wallet_view.dart';

class HomeActionsRow extends StatelessWidget {
  const HomeActionsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        ColumnOfOrderDetails(title: 'الاسهم', subTitle: '1'),
        Spacer(),
        SizedBox(height: 25, child: VerticalDivider(width: 1)),
        Spacer(),
        ColumnOfOrderDetails(title: 'عائد شهرى', subTitle: '200 ج.م'),
        Spacer(),
        SizedBox(height: 25, child: VerticalDivider(width: 1)),
        Spacer(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            backgroundColor: AppColors.primaryColorOneColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {
            g.Get.to(
              () => const WalletView(),
              transition: g.Transition.fade,
              duration: const Duration(milliseconds: 400),
            );
          },
          child: Row(
            children: [
              Icon(IconlyLight.arrow_down, color: Colors.white),
              Text(
                'سحب',
                style: TextStyles.font14Medium(
                  context,
                ).copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
        Spacer(),
      ],
    );
  }
}
