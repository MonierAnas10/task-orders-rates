// 🐦 Flutter imports:

// � Package imports:

// � Package imports:

// 📦 Package imports:

// 🌎 Project imports:

// 🐦 Flutter imports:

// import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:taskordersrate/shared/config/router.dart';

// import 'core/di/di_container.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GlobalLoaderOverlay(
          overlayColor: const Color.fromARGB(
            255,
            106,
            106,
            106,
          ).withOpacity(0.4),
          child: MediaQuery(
            data: MediaQuery.of(
              context,
            ).copyWith(textScaler: const TextScaler.linear(1.0)),
            child: MaterialApp.router(
              title: "taskOrderRates",
              debugShowCheckedModeBanner: false,
              themeMode: ThemeMode.light,
              // theme: AppTheme.light,
              routerConfig: appRouter,
            ),
          ),
        );
      },
    );
  }
}
