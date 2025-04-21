import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/widgets/fields/custom_form_text_field.dart';
import 'package:invest_bekia/featuers/home/presentation/views/widgets/custom_note_btm_to_collect_scrap.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/request_sell_view.dart';

import 'package:invest_bekia/featuers/settings/scrap_prices/presentation/views/widgets/custom_list_view_of_scrap_price.dart';
import 'package:invest_bekia/featuers/settings/scrap_prices/presentation/views/widgets/custom_scrap_prices_container.dart';

class CustomScrapPriceMainWidget extends StatelessWidget {
  const CustomScrapPriceMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: CustomTextField(
                    isSearch: true,
                    onChanged: (value) {},
                    haveTitle: false,
                    mainTitle: '',
                    hintTitle: 'ابحث عن الصنف',
                    obscureText: false,
                    isPassword: false,
                    isLogin: false,
                    isPhone: false,
                    textInputType: TextInputType.text,
                  ),
                ),
                SizedBox(height: 10),
                CustomListViewOfScrapPrice(),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: CustomPricesOfScrapContainer(),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: CustomNoteBtmToCollectScrap(
                    onPressed: () {
                      g.Get.to(
                        () => const RequestSellView(),
                        transition: g.Transition.leftToRight,
                        duration: const Duration(milliseconds: 400),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
