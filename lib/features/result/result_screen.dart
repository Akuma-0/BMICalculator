import 'package:bmi/core/helpers/enums.dart';
import 'package:bmi/core/theme/color_manager.dart';
import 'package:bmi/core/theme/text_styles.dart';
import 'package:bmi/features/result/widgets/bmi_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.bmi,
    required this.gender,
    required this.age,
    required this.level,
  });
  final int bmi;
  final Gender gender;
  final int age;
  final int level;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, color: ColorManager.red55),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Your BMI is: $bmi',
              style: TextStyles.font32W700.copyWith(color: ColorManager.white),
            ),
            SizedBox(height: 16.h),
            Text(
              'Gender: ${gender == Gender.male ? 'Male' : 'Female'}',
              style: TextStyles.font32W700.copyWith(color: ColorManager.white),
            ),
            SizedBox(height: 16.h),
            Text(
              'Age: $age',
              style: TextStyles.font32W700.copyWith(color: ColorManager.white),
            ),
            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.all(24.w),
              child: SizedBox(child: BmiIndex(level: level)),
            ),
          ],
        ),
      ),
    );
  }
}
