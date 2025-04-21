import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/settings/scrap_prices/data/model/scrap_price_tile_model.dart';

class CustomScrapPriceTile extends StatelessWidget {
  const CustomScrapPriceTile({super.key, required this.scrapPriceTileModel});
  final ScrapPriceTileModel scrapPriceTileModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            scrapPriceTileModel.title,
            style: TextStyles.font18Medium(context),
          ),
          Spacer(),
          Text(
            scrapPriceTileModel.subTitle,
            style: TextStyles.font18Medium(context),
          ),
        ],
      ),
    );
  }
}
