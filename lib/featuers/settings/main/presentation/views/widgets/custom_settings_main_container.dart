import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/featuers/settings/main/presentation/views/widgets/custom_settings_item.dart';

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
            onPressed: () {},
            title: "إعدادات الحساب",
            icon: Assets.imagesSetting,
          ),
          Divider(color: Color(0xffE5E5E5)),
          CustomSettingsItem(
            onPressed: () {},
            title: "العناوين",
            icon: Assets.imagesLocation,
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
            onPressed: () {},
            isLogout: true,
            title: "تسجيل الخروج",
            icon: Assets.imagesLogout,
          ),
        ],
      ),
    );
  }
}
