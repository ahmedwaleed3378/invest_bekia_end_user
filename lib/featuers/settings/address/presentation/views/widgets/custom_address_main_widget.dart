import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';
import 'package:invest_bekia/featuers/settings/address/data/models/address_model.dart';
import 'package:invest_bekia/featuers/settings/address/presentation/views/add_new_address_view.dart';
import 'package:invest_bekia/featuers/settings/address/presentation/views/edit_address_view.dart';
import 'package:invest_bekia/featuers/settings/address/presentation/views/widgets/custom_address_Item.dart';

class CustomAddressMainWidget extends StatelessWidget {
  CustomAddressMainWidget({super.key});

  final List<AddressModel> addresses = [
    AddressModel(
      address: '6 اكتوبر, الحى السابع, شارع ورقة بن نوفل',
      addressType: 'العنوان الرئيسي',
      name: 'مصطفى مبروك',
      phone: '01012345678',
      isVerified: true,
    ),
    AddressModel(
      address: 'القاهرة الجديدة, التجمع الخامس, شارع التسعين',
      addressType: 'العمل',
      name: 'مصطفى مبروك',
      phone: '01098765432',
      isVerified: false,
    ),
    // You can add more here
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
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
                ...List.generate(
                  addresses.length,
                  (index) => Column(
                    children: [
                      CustomAddressItem(
                        address: addresses[index].address,
                        addressType: addresses[index].addressType,
                        onTapeDelete: () {},
                        onTapeEdit: () {
                          g.Get.to(
                            () => const EditAddressView(),
                            transition: g.Transition.leftToRight,
                            duration: const Duration(milliseconds: 400),
                          );
                        },
                        name: addresses[index].name,
                        phone: addresses[index].phone,
                        isVerified: addresses[index].isVerified,
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),

                CustomBigElevatedButtomWithTitle(
                  isCancle: true,
                  onPressed: () {
                    g.Get.to(
                      () => const AddNewAddressView(),
                      transition: g.Transition.leftToRight,
                      duration: const Duration(milliseconds: 400),
                    );
                  },
                  title: 'اضافة عنوان جديد',
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
