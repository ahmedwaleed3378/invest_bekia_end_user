import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/settings/scrap_prices/data/model/scrap_price_category_model.dart';

class CustomCategoryOfScrapPriceItem extends StatelessWidget {
  const CustomCategoryOfScrapPriceItem({
    super.key,
    required this.scrapPriceCategoryModel,
    required this.isActive,
  });
  final ScrapPriceCategoryModel scrapPriceCategoryModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor:
              isActive ? AppColors.primaryColorOneColor : Color(0xffE2F0EC),
          child: SvgPicture.asset(
            isActive
                ? scrapPriceCategoryModel.activeImage
                : scrapPriceCategoryModel.inactiveImage,
            width: 25,
          ),
        ),
        SizedBox(height: 5),
        Text(
          scrapPriceCategoryModel.title,
          style: TextStyles.font18Medium(context),
        ),
      ],
    );
  }
}
