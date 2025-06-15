import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/core/widgets/buttoms/custom_big_elevated_btm_with_title.dart';
import 'package:invest_bekia/core/widgets/fields/custom_form_text_field.dart';
import 'package:invest_bekia/featuers/auth/cubit/register_cubit.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/login_view.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/widgets/custom_auth_row_with_title.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/widgets/custom_privacy_and_polices_check.dart';
import 'package:invest_bekia/featuers/auth/presentation/views/listeners/register_bloc_listener.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
                'سجّل دلوقتى !',
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
                textInputType: TextInputType.text,
                textEditingController: _fullNameController,
                isPhone: false,
                isLogin: true,
                mainTitle: 'الاسم الكامل',
                hintTitle: 'دخل اسمك الكامل',
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
                textInputType: TextInputType.phone,
                isPhone: true,
                isLogin: false,
                textEditingController: _phoneController,
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
                isLogin: false,
                mainTitle: 'كلمة السر',
                hintTitle: 'دخل كلمة السر',
                textEditingController: _passwordController,
                obscureText: true,
                isPassword: true,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.042,
              ),
            ),
            SliverToBoxAdapter(child: RegisterBlocListener()),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  BlocBuilder<RegisterCubit, RegisterState>(
                    builder: (context, state) {
                      return CustomBigElevatedButtomWithTitle(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<RegisterCubit>().register({
                              "FullName": _fullNameController.text,
                              "PhoneNumber": _phoneController.text,
                              "Password": _passwordController.text,
                            });
                          }
                          // if (_formKey.currentState!.validate()) {
                          //   _formKey.currentState!.save();
                          //   g.Get.to(
                          //     () => const VerifyCodeView(),
                          //     transition: g.Transition.leftToRight,
                          //     duration: const Duration(milliseconds: 400),
                          //   );
                          // } else {
                          //   setState(() {
                          //     _autovalidateMode = AutovalidateMode.always;
                          //   });
                          // }
                        },
                        title: 'تسجيل مستخدم جديد',
                      );
                    },
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),
                  CustomPrivacyAndPolicesCheck(onPress: () {}),
                  const Spacer(),
                  CustomAuthButtomRowWithTitle(
                    onPress: () {
                      g.Get.off(
                        () => const LoginView(),
                        transition: g.Transition.fade,
                        duration: const Duration(milliseconds: 800),
                      );
                    },
                    mainTitle: 'عندك حساب؟',
                    btmTtile: 'سجّل دخول!',
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
