import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/core/helper/cached_helper.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';
import 'package:invest_bekia/core/widgets/fields/custom_form_text_field.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/register_view.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/reset_password_view.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/widgets/custom_auth_row_with_title.dart';
import 'package:invest_bekia/featuers/home/presentation/views/home_view.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: _formKey,
        autovalidateMode: _autovalidateMode,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SafeArea(
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.02,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SvgPicture.asset(Assets.imagesSvgLogoBekia, height: 60),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
            ),
            SliverToBoxAdapter(
              child: Text(
                'أهلا بعودتك !',
                style: TextStyles.font24ExtraBold(
                  context,
                ).copyWith(color: const Color(0xff212121)),
                textAlign: TextAlign.center,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
            ),
            SliverToBoxAdapter(
              child: CustomTextField(
                textInputType: TextInputType.phone,
                isPhone: true,
                isLogin: true,
                mainTitle: 'رقم الموبايل',
                hintTitle: 'دخل رقم موبايلك',
                obscureText: false,
                isPassword: false,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.025,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomTextField(
                textInputType: TextInputType.text,
                isPhone: false,
                isLogin: true,
                mainTitle: 'كلمة السر',
                hintTitle: 'دخل كلمة السر',
                obscureText: true,
                isPassword: true,
              ),
            ),
            SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    g.Get.off(
                      () => const ResetPasswordView(),
                      transition: g.Transition.fade,
                      duration: const Duration(milliseconds: 400),
                    );
                  },
                  child: Text(
                    'نسيت كلمه السر؟',
                    style: TextStyles.font18SemiBold(
                      context,
                    ).copyWith(color: AppColors.secondaryColorTwoColor),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.042,
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  CustomBigElevatedButtomWithTitle(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();

                        await CacheHelper().saveData(
                          key: 'isLogin',
                          value: true,
                        );
                        g.Get.off(
                          () => const HomeView(),
                          transition: g.Transition.fade,
                          duration: const Duration(milliseconds: 400),
                        );
                      } else {
                        setState(() {
                          _autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    },
                    title: 'تسجيل الدخول',
                  ),
                  const Spacer(),
                  CustomAuthButtomRowWithTitle(
                    onPress: () {
                      g.Get.off(
                        () => const RegisterView(),
                        transition: g.Transition.fade,
                        duration: const Duration(milliseconds: 800),
                      );
                    },
                    mainTitle: 'لسه جديد؟',
                    btmTtile: 'سجّل دلوقتى!',
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.025),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
