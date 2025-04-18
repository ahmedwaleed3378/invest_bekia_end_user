import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';
import 'package:invest_bekia/core/widgets/fields/custom_form_text_field.dart';

class ContainerOfPersonalDetails extends StatelessWidget {
  const ContainerOfPersonalDetails({
    super.key,
    required this.name,
    required this.phone,
    required this.email,
    required this.onTapToEditPhoto,
    required this.onTapUpdate,
    required this.onTapCancle,
  });
  final String name, phone, email;
  final void Function() onTapToEditPhoto;
  final void Function() onTapUpdate;
  final void Function() onTapCancle;

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('المعلومات الشخصية', style: TextStyles.font18SemiBold(context)),
          SizedBox(height: 10),
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(Assets.imagesAvatar),
                ),
                Positioned(
                  bottom: -5,

                  child: InkWell(
                    onTap: onTapToEditPhoto,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: AppColors.primaryColorOneColor,
                      child: Icon(
                        IconlyBold.edit,
                        color: AppColors.backGroundColor,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          CustomTextField(
            mainTitle: 'الاسم كامل',
            hintTitle: 'ادخل الاسم كامل',

            obscureText: false,
            textEditingController: TextEditingController(text: name),
            isPassword: false,
            isLogin: false,
            isPhone: false,
            textInputType: TextInputType.text,
          ),
          SizedBox(height: 15),
          CustomTextField(
            mainTitle: 'رقم الموبايل',
            hintTitle: 'ادخل رقم الموبايل',
            obscureText: false,
            textEditingController: TextEditingController(text: phone),

            isPassword: false,
            isLogin: false,
            isPhone: true,
            textInputType: TextInputType.text,
          ),
          SizedBox(height: 15),
          CustomTextField(
            mainTitle: 'الايميل',
            hintTitle: 'ادخل الايميل',
            obscureText: false,
            textEditingController: TextEditingController(text: email),

            isPassword: false,
            isLogin: false,
            isPhone: true,
            textInputType: TextInputType.text,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: CustomBigElevatedButtomWithTitle(
                  onPressed: onTapUpdate,
                  title: 'تحديث',
                ),
              ),
              SizedBox(width: 10), // add spacing between buttons
              Expanded(
                child: CustomBigElevatedButtomWithTitle(
                  isCancle: true,
                  onPressed: onTapCancle,
                  title: 'إلغاء',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
