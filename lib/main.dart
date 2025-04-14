// ignore_for_file: depend_on_referenced_packages

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:invest_bekia/featuers/splash/presentation/views/splash_view.dart';
import 'package:invest_bekia/generated/l10n.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: kReleaseMode ? false : true,
      builder: (context) => const InvestBekiaApp(),
    ),
  );
}

class InvestBekiaApp extends StatelessWidget {
  const InvestBekiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: Locale('ar'),
      builder: DevicePreview.appBuilder,

      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
