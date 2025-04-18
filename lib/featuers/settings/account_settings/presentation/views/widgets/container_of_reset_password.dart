import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/core/utils/app_colors.dart';

import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';
import 'package:invest_bekia/core/widgets/fields/custom_form_text_field.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/reset_password_view.dart';

class ContainerOfResetPassword extends StatelessWidget {
  const ContainerOfResetPassword({
    super.key,
    required this.onTapUpdate,
    required this.onTapCancle,
    required this.password,
  });
  final void Function() onTapUpdate;
  final void Function() onTapCancle;
  final String password;
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
          Text('تغيير الرقم السري', style: TextStyles.font18SemiBold(context)),
          SizedBox(height: 10),

          CustomTextField(
            textInputType: TextInputType.text,
            isPhone: false,
            isLogin: false,
            mainTitle: 'كلمة السر القديمة',
            hintTitle: 'دخل كلمة السر القديمة',
            obscureText: true,
            isPassword: true,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () {
                g.Get.to(
                  () => const ResetPasswordView(isInApp: true),
                  transition: g.Transition.fade,
                  duration: const Duration(milliseconds: 400),
                );
              },
              child: Text(
                'نسيت كلمه السر ؟',
                style: TextStyles.font18SemiBold(
                  context,
                ).copyWith(color: AppColors.secondaryColorTwoColor),
              ),
            ),
          ),
          SizedBox(height: 5),
          CustomTextField(
            textInputType: TextInputType.text,

            isPhone: false,
            isLogin: false,
            mainTitle: 'كلمة السر الجديدة',
            hintTitle: 'دخل كلمة السر الجديدة',
            obscureText: true,
            isPassword: true,
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
