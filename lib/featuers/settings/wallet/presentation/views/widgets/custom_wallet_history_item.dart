import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/settings/wallet/data/model/wallet_history_model.dart';

class CustomWalletHistoryItem extends StatelessWidget {
  const CustomWalletHistoryItem({super.key, required this.walletHistoryModel});
  final WalletHistoryModel walletHistoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xffECECEC), width: 1),

        color: Color(0xffffffff),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffECECEC),
            ),
            child: Icon(IconlyLight.arrow_down),
          ),
          SizedBox(width: 10),
          Text(
            walletHistoryModel.title,
            style: TextStyles.font20SemiBold(context),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color:
                  walletHistoryModel.status == 0
                      ? Color(0xffFCF7E5)
                      : walletHistoryModel.status == 1
                      ? Color(0xffEAF6EC)
                      : Color(0xffFAE5E7),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              walletHistoryModel.status == 0
                  ? 'في الانتظار'
                  : walletHistoryModel.status == 1
                  ? 'مكتمل'
                  : 'مرفوض',
              style: TextStyles.font18Medium(context).copyWith(
                color:
                    walletHistoryModel.status == 0
                        ? Color(0xffEACE56)
                        : walletHistoryModel.status == 1
                        ? Color(0xff28A745)
                        : Color(0xffD00416),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
