import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/core/widgets/fields/custom_form_text_field.dart';
import 'package:invest_bekia/featuers/subscribe_plans/presentation/views/widgets/custom_container_of_confirm_address.dart';

class CustomPersonalConfirmForSub extends StatelessWidget {
  const CustomPersonalConfirmForSub({super.key});

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
          Text('البيانات الشخصية', style: TextStyles.font18SemiBold(context)),
          SizedBox(height: 10),
          CustomTextField(
            mainTitle: 'الاسم كامل',
            hintTitle: 'ادخل الاسم كامل',

            obscureText: false,
            textEditingController: TextEditingController(text: 'مصطفى محمد'),
            isPassword: false,
            isEnabled: false,
            isLogin: false,
            isPhone: false,
            textInputType: TextInputType.text,
          ),
          SizedBox(height: 15),
          CustomTextField(
            mainTitle: 'رقم الموبايل',
            hintTitle: 'ادخل رقم الموبايل',
            obscureText: false,
            textEditingController: TextEditingController(text: '01005005414'),
            isEnabled: false,
            isPassword: false,
            isLogin: false,
            isPhone: true,
            textInputType: TextInputType.text,
          ),
          SizedBox(height: 10),
          Text(
            'العنوان',
            style: TextStyles.font20Medium(
              context,
            ).copyWith(color: Color(0xff6B6B6B)),
          ),
          SizedBox(height: 10),
          CustomContainerOfConfirmAddress(),
          SizedBox(height: 10),
          CustomTextField(
            mainTitle: 'عدد الأسهم',
            isEnabled: false,
            hintTitle: 'ادخل عدد الأسهم',
            obscureText: false,
            textEditingController: TextEditingController(text: '12'),

            isPassword: false,
            isLogin: false,
            isPhone: true,
            textInputType: TextInputType.text,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
