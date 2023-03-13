import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:habit_builder/screens/main_view.dart';
import 'package:habit_builder/screens/splash_screen.dart';
import 'package:habit_builder/values/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (_, __) => LayoutBuilder(
        builder: (context, constraints) {
          return MaterialApp(
            builder: (context, child) {
              return ScrollConfiguration(
                behavior: MyBehavior(),
                child: child!,
              );
            },
            title: "Habbit Builder",
            theme: ThemeData().copyWith(
              scaffoldBackgroundColor: Colors.white,
              colorScheme: ThemeData().colorScheme.copyWith(primary: AppColors.darkOrange),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),
            debugShowCheckedModeBanner: false,
            home: const MainView(),
          );
        },
      ),
    );
    ;
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
