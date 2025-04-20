// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:invest_bekia/featuers/scrap_prices/data/model/scrap_price_tile_model.dart';
import 'package:invest_bekia/featuers/scrap_prices/presentation/views/widgets/custom_scrap_price_list_tile.dart';

class CustomPricesOfScrapContainer extends StatelessWidget {
  CustomPricesOfScrapContainer({super.key});
  List<ScrapPriceTileModel> scrapPriceTileModels = [
    ScrapPriceTileModel(title: 'الة كاتبة', subTitle: '2.5 ج.م / كيلو'),
    ScrapPriceTileModel(title: 'جرامافون', subTitle: '5.5 ج.م / كيلو'),
    ScrapPriceTileModel(title: 'تليفون انتيك', subTitle: '3.5 ج.م / كيلو'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xffECECEC), width: 1),
        color: Colors.white,
      ),
      child: Column(
        children: List.generate(
          scrapPriceTileModels.length,
          (index) => Column(
            children: [
              if (index != 0)
                const Divider(
                  color: Color(0xffECECEC),
                  thickness: 1,
                  height: 20,
                ),
              CustomScrapPriceTile(
                scrapPriceTileModel: scrapPriceTileModels[index],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
