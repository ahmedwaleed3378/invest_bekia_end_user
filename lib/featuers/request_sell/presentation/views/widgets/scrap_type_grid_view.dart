import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/request_sell/data/models/scrap_type.dart';

class ScrapTypeGridView extends StatefulWidget {
  const ScrapTypeGridView({super.key});

  @override
  State<ScrapTypeGridView> createState() => _ScrapTypeGridViewState();
}

class _ScrapTypeGridViewState extends State<ScrapTypeGridView> {
  List<ScrapType> scrapTypes = [
    ScrapType(title: 'ورقيات', image: Assets.imagesPaper),
    ScrapType(title: 'بلاستيك', image: Assets.imagesPlastic),
    ScrapType(title: 'زيت قلي', image: Assets.imagesOil),
    ScrapType(title: 'كرتون', image: Assets.imagesCartoon),
    ScrapType(title: 'أنتيكات', image: Assets.imagesRobapecia),
    ScrapType(title: 'أدوات منزلية', image: Assets.imagesHomeDevices),
    ScrapType(title: 'معادن', image: Assets.imagesMetail),
    ScrapType(title: 'الكترونيات', image: Assets.imagesElectronics),
    ScrapType(title: 'حاجات تانية', image: Assets.imagesBasket),
    ScrapType(title: 'لعب أطفال', image: Assets.imagesToys),
    ScrapType(title: 'أدوات رياضية', image: Assets.imagesGym),
    ScrapType(title: 'قطع غيار', image: Assets.imagesScrap),
  ];

  Set<int> selectedIndices = {};
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount = constraints.maxWidth > 600 ? 5 : 4;

        return GridView.builder(
          padding: const EdgeInsets.all(0),
          itemCount: scrapTypes.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: constraints.maxWidth > 600 ? 0.8 : 0.8,
          ),
          itemBuilder: (context, index) {
            final item = scrapTypes[index];
            final isSelected = selectedIndices.contains(index);

            return GestureDetector(
              onTap: () {
                setState(() {
                  if (isSelected) {
                    selectedIndices.remove(index);
                  } else {
                    selectedIndices.add(index);
                  }
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.fastOutSlowIn,
                decoration: BoxDecoration(
                  color:
                      isSelected
                          ? AppColors.primaryColorOneColor
                          : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color:
                        isSelected
                            ? AppColors.primaryColorOneColor
                            : const Color(0xffECECEC),
                    width: 1,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(item.image, width: 50, height: 60),
                    const SizedBox(height: 10),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        item.title,
                        style: TextStyles.font14Regular(context).copyWith(
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
