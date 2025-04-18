import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';
import 'package:invest_bekia/core/widgets/fields/custom_form_text_field.dart';
import 'package:invest_bekia/core/widgets/helping_widgets/custom_container_with_svg_image.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/login_view.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/verify_reset_password_code_view.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/widgets/custom_auth_row_with_title.dart';

class ResetPasswordViewBody extends StatefulWidget {
  const ResetPasswordViewBody({super.key, this.isInApp = false});
  final bool isInApp;

  @override
  State<ResetPasswordViewBody> createState() => _ResetPasswordViewBodyState();
}

class _ResetPasswordViewBodyState extends State<ResetPasswordViewBody> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: _formKey,
          autovalidateMode: _autovalidateMode,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              CustomContainerWithSvgImage(image: Assets.imagesLock),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.012),
              Text(
                'رجع كلمه السر !',
                style: TextStyles.font24ExtraBold(
                  context,
                ).copyWith(color: const Color(0xff212121)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
              Text(
                'اكتب رقم موبايلك علشان نبعتلك كود تغير بيه الباسورد',
                style: TextStyles.font18Medium(
                  context,
                ).copyWith(color: const Color(0xff6B6B6B)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.052),
              CustomTextField(
                textInputType: TextInputType.phone,
                isPhone: true,
                isLogin: true,
                mainTitle: 'رقم الموبايل',
                hintTitle: 'دخل رقم موبايلك',
                obscureText: false,
                isPassword: false,
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
              CustomBigElevatedButtomWithTitle(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    g.Get.to(
                      () => const VerifyResetPasswordCodeView(),
                      transition: g.Transition.fade,
                      duration: const Duration(milliseconds: 400),
                    );
                  } else {
                    setState(() {
                      _autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                title: 'إرسال رمز التحقق',
              ),
              Spacer(),
              CustomAuthButtomRowWithTitle(
                onPress: () {
                  widget.isInApp
                      ? g.Get.back()
                      : g.Get.off(
                        () => const LoginView(),
                        transition: g.Transition.fade,
                        duration: const Duration(milliseconds: 800),
                      );
                },
                mainTitle: 'تذكرت كلمه المرور ؟',
                btmTtile: widget.isInApp ? 'العودة' : 'سجّل دخول!',
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.025),
            ],
          ),
        ),
      ),
    );
  }
}
