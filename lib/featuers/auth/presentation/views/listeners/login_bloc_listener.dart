import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:invest_bekia/featuers/auth/cubit/login_cubit.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/featuers/home/presentation/views/home_view.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginLoading) {
          g.Get.dialog(
            const Center(child: CircularProgressIndicator()),
            barrierDismissible: false,
          );
        } else if (state is LoginFailure) {
          g.Get.back();
          g.Get.snackbar(
            'خطأ',
            state.error,
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        } else if (state is LoginSuccess) {
          g.Get.back();
          g.Get.snackbar(
            'نجاح',
            'تم تسجيل الدخول بنجاح',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green,
            colorText: Colors.white,
          );
          g.Get.off(() => const HomeView());
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
