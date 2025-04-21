import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/featuers/settings/scrap_prices/data/model/scrap_price_category_model.dart';
import 'package:invest_bekia/featuers/settings/scrap_prices/presentation/views/widgets/custom_category_of_price_scrap_item.dart';

class CustomListViewOfScrapPrice extends StatefulWidget {
  const CustomListViewOfScrapPrice({super.key});

  @override
  State<CustomListViewOfScrapPrice> createState() =>
      _CustomListViewOfScrapPriceState();
}

class _CustomListViewOfScrapPriceState
    extends State<CustomListViewOfScrapPrice> {
  List<ScrapPriceCategoryModel> scrapPriceCategoryModel = [
    ScrapPriceCategoryModel(
      title: 'كل الخردة',
      activeImage: Assets.imagesAllScrapWhite,
      inactiveImage: Assets.imagesAllScrapPrices,
    ),
    ScrapPriceCategoryModel(
      title: 'بلاستيكك',
      activeImage: Assets.imagesPlasticWhite,
      inactiveImage: Assets.imagesPlasticScrapPrice,
    ),
    ScrapPriceCategoryModel(
      title: 'ورقيات',
      activeImage: Assets.imagesPaperPriceWhite,
      inactiveImage: Assets.imagesPaperScrapPrice,
    ),
    ScrapPriceCategoryModel(
      title: 'الكترونيات',
      activeImage: Assets.imagesElectronicsWhite,
      inactiveImage: Assets.imagesElectronicsScrapPrice,
    ),
    ScrapPriceCategoryModel(
      title: 'معادن',
      activeImage: Assets.imagesMetalWhite,
      inactiveImage: Assets.imagesMetalScrapPrice,
    ),
    ScrapPriceCategoryModel(
      title: 'ادوات منزلية',
      activeImage: Assets.imagesHouseDevicesWhite,
      inactiveImage: Assets.imagesHouseDevicesScrapPrices,
    ),
    ScrapPriceCategoryModel(
      title: 'انتيكات',
      activeImage: Assets.imagesAntiquesWhite,
      inactiveImage: Assets.imagesAntiques,
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: scrapPriceCategoryModel.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                index == 0
                    ? const EdgeInsets.only(right: 16)
                    : index == scrapPriceCategoryModel.length - 1
                    ? const EdgeInsets.only(left: 16, right: 10)
                    : const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: CustomCategoryOfScrapPriceItem(
                scrapPriceCategoryModel: scrapPriceCategoryModel[index],
                isActive: selectedIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
