import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';
import 'package:invest_bekia/core/widgets/fields/custom_form_text_field.dart';
import 'package:invest_bekia/core/widgets/helping_widgets/custom_container_with_svg_image.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/password_reset_success_view.dart';

class NewPasswordViewBody extends StatefulWidget {
  const NewPasswordViewBody({super.key});

  @override
  State<NewPasswordViewBody> createState() => _NewPasswordViewBodyState();
}

class _NewPasswordViewBodyState extends State<NewPasswordViewBody> {
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
              CustomContainerWithSvgImageForAddNewPassword(
                image: Assets.imagesPassObscure,
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.012),
              Text(
                'دخل كلمة السر الجديدة!',
                style: TextStyles.font24ExtraBold(
                  context,
                ).copyWith(color: const Color(0xff212121)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.012),
              Text(
                'اكتب الرقم السرى الجديد، ولازم تكون ٨ خانات أو أكتر!',
                style: TextStyles.font18Medium(
                  context,
                ).copyWith(color: const Color(0xff6B6B6B)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.032),
              CustomTextField(
                textInputType: TextInputType.text,

                isPhone: false,
                isLogin: false,
                mainTitle: 'كلمة السر',
                hintTitle: 'دخل كلمة السر',
                obscureText: true,
                isPassword: true,
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),
              CustomTextField(
                textInputType: TextInputType.text,

                isPhone: false,
                isLogin: false,
                mainTitle: 'تأكيد كلمة السر',
                hintTitle: 'دخل كلمة السر',
                obscureText: true,
                isPassword: true,
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.025),
              CustomBigElevatedButtomWithTitle(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    g.Get.to(
                      () => const PasswordResetSuccessView(),
                      transition: g.Transition.leftToRight,
                      duration: const Duration(milliseconds: 400),
                    );
                  } else {
                    setState(() {
                      _autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                title: 'تغيير كلمة السر',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
