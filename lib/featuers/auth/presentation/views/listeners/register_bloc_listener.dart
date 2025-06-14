import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:invest_bekia/featuers/auth/cubit/register_cubit.dart';
import 'package:get/get.dart' as g;
import 'package:invest_bekia/featuers/auth/presentation/views/login_view.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterLoading) {
          g.Get.dialog(
            const Center(child: CircularProgressIndicator()),
            barrierDismissible: false,
          );
        } else if (state is RegisterFailure) {
          g.Get.back();
          g.Get.snackbar(
            'خطأ',
            state.error,
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        } else if (state is RegisterSuccess) {
          g.Get.back();
          g.Get.snackbar(
            'نجاح',
            'تم التسجيل بنجاح',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green,
            colorText: Colors.white,
          );
          g.Get.off(() => const LoginView());
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
