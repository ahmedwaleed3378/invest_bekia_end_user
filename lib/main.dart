// ignore_for_file: depend_on_referenced_packages, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:invest_bekia/core/helper/bloc_observer.dart';
import 'package:invest_bekia/core/helper/cached_helper.dart';
import 'package:invest_bekia/core/helper/di.dart';
import 'package:invest_bekia/core/helper/transition.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/featuers/auth/cubit/login_cubit.dart';
import 'package:invest_bekia/featuers/auth/cubit/register_cubit.dart';
import 'package:invest_bekia/featuers/auth/login_services/login_service.dart';
import 'package:invest_bekia/featuers/auth/login_services/register_service.dart';
import 'package:invest_bekia/featuers/splash/presentation/views/splash_view.dart';
import 'package:invest_bekia/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize the cache helper
  await CacheHelper.to.init();

  await setupGetIt();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  Bloc.observer = MyBlocObserver();
  runApp(const InvestBekiaApp());

  await CacheHelper().init();
}

class InvestBekiaApp extends StatelessWidget {
  const InvestBekiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit(LoginService())),
        BlocProvider(create: (context) => RegisterCubit(RegisterService())),
        // BlocProvider(
        //   create: (context) => SubjectBloc(),
        // ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: GetMaterialApp(
          theme: ThemeData(
            fontFamily: 'NotoKufi',
            primaryColor: AppColors.primaryColorOneColor,
            useMaterial3: true,
            pageTransitionsTheme: PageTransitionsTheme(
              builders: {
                TargetPlatform.android: FadePageTransitionBuilder(),
                TargetPlatform.iOS: FadePageTransitionBuilder(),
              },
            ),
            splashColor: AppColors.primaryColorThreeColor.withOpacity(0.3),
            textSelectionTheme: const TextSelectionThemeData(
              cursorColor: AppColors.primaryColorThreeColor,
              selectionHandleColor: Color.fromARGB(255, 234, 182, 111),
              selectionColor: Color.fromARGB(255, 245, 229, 207),
            ),
            scaffoldBackgroundColor: Colors.white,
          ),
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: Locale('ar'),

          // builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          home: SplashView(),
        ),
      ),
    );
  }
}
