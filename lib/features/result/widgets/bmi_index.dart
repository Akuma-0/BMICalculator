import 'package:bmi/core/theme/color_manager.dart';
import 'package:bmi/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BmiIndex extends StatelessWidget {
  const BmiIndex({super.key, required this.level});
  final int level;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: (30 + (level * 85)).w),
          child: Icon(
            Icons.arrow_drop_down,
            color: ColorManager.white,
            size: 30.sp,
          ),
        ),
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  width: 85.w,
                  height: level == 0 ? 20.h : 16.h,
                  decoration: BoxDecoration(
                    color: Color(0xffC0CA33),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.r),
                      bottomLeft: Radius.circular(10.r),
                    ),
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Underweight',
                  style: TextStyles.font10W700.copyWith(
                    color: ColorManager.white,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 85.w,
                  height: level == 1 ? 20.h : 16.h,
                  decoration: BoxDecoration(color: Color(0xff4CAF50)),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Normal',
                  style: TextStyles.font10W700.copyWith(
                    color: ColorManager.white,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 85.w,
                  height: level == 2 ? 20.h : 16.h,
                  decoration: BoxDecoration(color: Color(0xffFF9800)),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Overweight',
                  style: TextStyles.font10W700.copyWith(
                    color: ColorManager.white,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 85.w,
                  height: level == 3 ? 20.h : 16.h,
                  decoration: BoxDecoration(
                    color: Color(0xffF44336),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.r),
                      bottomRight: Radius.circular(10.r),
                    ),
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Underweight',
                  style: TextStyles.font10W700.copyWith(
                    color: ColorManager.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
