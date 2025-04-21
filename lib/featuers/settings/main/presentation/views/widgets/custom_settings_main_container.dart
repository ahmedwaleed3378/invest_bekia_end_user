import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/featuers/settings/scrap_prices/presentation/views/scrap_price_view.dart';
import 'package:invest_bekia/featuers/settings/account_settings/presentation/views/account_settings_view.dart';
import 'package:invest_bekia/featuers/settings/address/presentation/views/address_view.dart';
import 'package:invest_bekia/featuers/settings/main/presentation/views/widgets/custom_modal_btm_for_logout.dart';
import 'package:invest_bekia/featuers/settings/main/presentation/views/widgets/custom_settings_item.dart';
import 'package:invest_bekia/featuers/settings/wallet/presentation/views/wallet_view.dart';

class CustomSettingsMainContainer extends StatelessWidget {
  const CustomSettingsMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffffffff),
      ),
      child: Column(
        children: [
          CustomSettingsItem(
            onPressed: () {
              g.Get.to(
                () => const AccountSettingsView(),
                transition: g.Transition.leftToRight,
                duration: const Duration(milliseconds: 400),
              );
            },
            title: "إعدادات الحساب",
            icon: Assets.imagesSetting,
          ),
          Divider(color: Color(0xffE5E5E5)),
          CustomSettingsItem(
            onPressed: () {
              g.Get.to(
                () => const AddressView(),
                transition: g.Transition.leftToRight,
                duration: const Duration(milliseconds: 400),
              );
            },
            title: "العناوين",
            icon: Assets.imagesLocation,
          ),
          Divider(color: Color(0xffE5E5E5)),
          CustomSettingsItem(
            onPressed: () {
              g.Get.to(
                () => const ScrapPriceView(),
                transition: g.Transition.leftToRight,
                duration: const Duration(milliseconds: 400),
              );
            },
            title: "اسعار الخردة",
            icon: Assets.imagesScrapPrice,
          ),
          Divider(color: Color(0xffE5E5E5)),
          CustomSettingsItem(
            onPressed: () {
              g.Get.to(
                () => const WalletView(),
                transition: g.Transition.leftToRight,
                duration: const Duration(milliseconds: 400),
              );
            },
            title: "المحفظة",
            icon: Assets.imagesWallet,
          ),
          Divider(color: Color(0xffE5E5E5)),
          CustomSettingsItem(
            onPressed: () {},
            title: "اتصل بنا",
            icon: Assets.imagesCallIncoming,
          ),
          Divider(color: Color(0xffE5E5E5)),
          CustomSettingsItem(
            onPressed: () {},
            title: "الشروط والاحكام",
            icon: Assets.imagesJudge,
          ),
          Divider(color: Color(0xffE5E5E5)),
          CustomSettingsItem(
            onPressed: () {},
            title: "سياسة الخصوصية",
            icon: Assets.imagesLockPrivacy,
          ),
          Divider(color: Color(0xffE5E5E5)),
          CustomSettingsItem(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Color(0xffffffff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                showDragHandle: true,

                context: context,
                builder: (context) {
                  return CustomModalBottomSheetForLogout();
                },
              );
            },
            isLogout: true,
            title: "تسجيل الخروج",
            icon: Assets.imagesLogout,
          ),
        ],
      ),
    );
  }
}
