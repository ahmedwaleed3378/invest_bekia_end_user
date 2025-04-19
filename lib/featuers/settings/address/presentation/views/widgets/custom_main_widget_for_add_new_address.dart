import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';
import 'package:invest_bekia/core/widgets/fields/custom_form_text_field.dart';
import 'package:invest_bekia/featuers/settings/address/presentation/views/widgets/custom_drop_down_to_choose_city.dart';
import 'package:invest_bekia/featuers/settings/address/presentation/views/widgets/custom_selection_of_address_type.dart';

class CustomMainWidgetForAddNewAddress extends StatefulWidget {
  const CustomMainWidgetForAddNewAddress({super.key});

  @override
  State<CustomMainWidgetForAddNewAddress> createState() =>
      _CustomMainWidgetForAddNewAddressState();
}

class _CustomMainWidgetForAddNewAddressState
    extends State<CustomMainWidgetForAddNewAddress> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 40,
          color: AppColors.primaryColorOneColor,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.backGroundColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: _formKey,
              autovalidateMode: _autovalidateMode,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  CustomTextField(
                    mainTitle: 'الاسم كامل',
                    hintTitle: 'ادخل الاسم كامل',

                    obscureText: false,
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

                    isPassword: false,
                    isLogin: false,
                    isPhone: true,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 15),
                  CustomDropDownMenuToChooseCity(onSelected: (value) {}),
                  SizedBox(height: 15),
                  CustomTextField(
                    mainTitle: 'العنوان بالتفصيل',
                    hintTitle: 'ادخل العنوان بالتفصيل',
                    obscureText: false,
                    maxLines: 4,
                    isPassword: false,
                    isLogin: false,
                    isPhone: false,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 15),
                  Text(
                    'تسمية العنوان (اختياري)',
                    style: TextStyles.font20Medium(
                      context,
                    ).copyWith(color: Color(0xff6B6B6B)),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Flexible(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = 0;
                            });
                          },
                          child: CustomSelectionOfAddressType(
                            isActive: selectedIndex == 0,
                            title: 'المنزل',
                            image: Assets.imagesHouseSimple,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = 1;
                            });
                          },
                          child: CustomSelectionOfAddressType(
                            isActive: selectedIndex == 1,
                            title: 'العمل',
                            image: Assets.imagesBriefcaseMetal,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 25),
                  CustomBigElevatedButtomWithTitle(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                      } else {
                        setState(() {
                          _autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    },
                    title: 'حفظ العنوان',
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
