import 'package:bmi/core/helpers/enums.dart';
import 'package:bmi/core/helpers/helper_functions.dart';
import 'package:bmi/core/theme/color_manager.dart';
import 'package:bmi/core/theme/text_styles.dart';
import 'package:bmi/features/result/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
    required this.height,
    required this.weight,
    required this.gender,
    required this.age,
  });
  final double height;
  final int weight;
  final Gender gender;
  final int age;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
      height: 100.h,
      child: TextButton(
        onPressed: () {
          int bmi = calculateBmi(height: height, weight: weight);
          int level = getBmiLevel(bmi);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) {
                return ResultScreen(
                  bmi: bmi,
                  gender: gender,
                  age: age,
                  level: level,
                );
              },
            ),
          );
        },
        style: TextButton.styleFrom(
          backgroundColor: ColorManager.red55,
          minimumSize: Size(double.infinity, 56.h),
          overlayColor: ColorManager.red42,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.r),
          ),
        ),
        child: Text(
          'Calculate',
          style: TextStyles.font18W700.copyWith(color: ColorManager.white),
        ),
      ),
    );
  }
}
