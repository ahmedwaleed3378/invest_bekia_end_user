import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/home/data/model/main_app_bar_item_model.dart';

class CustomHeaderInfoContainer extends StatelessWidget {
  const CustomHeaderInfoContainer({
    super.key,
    required this.mainAppBarItemModel,
  });
  final MainAppBarItemModel mainAppBarItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.28,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: mainAppBarItemModel.bgColor,
            radius: 23,
            child: SvgPicture.asset(mainAppBarItemModel.image),
          ),
          SizedBox(height: 4),
          Text(
            mainAppBarItemModel.title,
            style: TextStyles.font18SemiBold(context).copyWith(),
          ),
          Text(
            mainAppBarItemModel.subTitle,
            style: TextStyles.font18Regular(
              context,
            ).copyWith(color: Color(0xff6B6B6B)),
          ),
        ],
      ),
    );
  }
}
