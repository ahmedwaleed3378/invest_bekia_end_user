import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

import 'package:invest_bekia/featuers/wallet/data/model/wallet_history_model.dart';
import 'package:invest_bekia/featuers/wallet/presentation/views/widgets/custom_wallet_history_item.dart';
import 'package:invest_bekia/featuers/wallet/presentation/views/widgets/custom_wallet_main_container.dart';

class CustomWalletMainWidget extends StatelessWidget {
  const CustomWalletMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Example data list (can be dynamic or from a controller)
    final List<WalletHistoryModel> walletHistoryList = [
      WalletHistoryModel(title: '2000 ج.م', status: 1),
      WalletHistoryModel(title: '1500 ج.م', status: 0),
      WalletHistoryModel(title: '3000 ج.م', status: 1),
      WalletHistoryModel(title: '500 ج.م', status: 2),
    ];

    return SliverToBoxAdapter(
      child: Container(
        color: AppColors.primaryColorOneColor,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: Container(
            color: AppColors.backGroundColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 10),
                  const CustomWalletContainer(),
                  const SizedBox(height: 20),
                  Text(
                    'سجل السحوبات',
                    style: TextStyles.font20SemiBold(context),
                  ),
                  const SizedBox(height: 10),

                  ListView.builder(
                    padding: const EdgeInsets.all(0),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: walletHistoryList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: CustomWalletHistoryItem(
                          walletHistoryModel: walletHistoryList[index],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
