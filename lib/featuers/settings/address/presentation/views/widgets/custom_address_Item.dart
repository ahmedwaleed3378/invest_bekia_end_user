// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/settings/address/presentation/views/widgets/custom_edit_and_delete_address_header.dart';
import 'package:invest_bekia/featuers/settings/address/presentation/views/widgets/custom_tile_of_address_info.dart';

class CustomAddressItem extends StatelessWidget {
  const CustomAddressItem({
    super.key,
    required this.addressType,
    required this.name,
    required this.address,
    required this.phone,
    required this.isVerified,
    required this.onTapeEdit,
    required this.onTapeDelete,
  });
  final String addressType, name, address, phone;
  final bool isVerified;
  final void Function() onTapeEdit, onTapeDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xffECECEC), width: 1),

        color: Color(0xffffffff),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(Assets.imagesLocation),
              SizedBox(width: 5),
              Text(addressType, style: TextStyles.font18SemiBold(context)),
              Spacer(),
              CustomEditAndDeleteBtmHeaderOfAddress(
                title: 'تعديل',
                icon: IconlyLight.edit,
                onTap: onTapeEdit,
              ),
              SizedBox(width: 10),
              CustomEditAndDeleteBtmHeaderOfAddress(
                title: 'حذف',
                icon: IconlyLight.delete,
                onTap: onTapeDelete,
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(color: Color(0xffE5E5E5)),
          CustomTileOfAddressInfo(title: 'الاسم', subTitle: name),
          CustomTileOfAddressInfo(title: 'العنوان', subTitle: address),
          CustomTileOfAddressInfo(
            title: 'رقم الهاتف',
            subTitle: phone,
            isPhone: true,
            isVerified: isVerified,
          ),
        ],
      ),
    );
  }
}
