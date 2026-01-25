import 'package:bmi/core/theme/color_manager.dart';
import 'package:bmi/core/theme/text_styles.dart';
import 'package:bmi/features/bmi_data/bmi_data_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 884),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'BMI Calculator',
          theme: ThemeData(
            scaffoldBackgroundColor: ColorManager.blue21,
            appBarTheme: AppBarTheme(
              backgroundColor: ColorManager.blue21,
              elevation: 0,
              scrolledUnderElevation: 0,
              centerTitle: true,
              titleTextStyle: TextStyles.font20W700.copyWith(
                color: ColorManager.white,
              ),
            ),
          ),
          home: BmiDataScreen(),
        );
      },
    );
  }
}
