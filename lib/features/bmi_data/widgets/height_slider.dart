import 'package:bmi/core/theme/color_manager.dart';
import 'package:bmi/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeightSlider extends StatelessWidget {
  const HeightSlider({
    super.key,
    required this.onChanged,
    required this.height,
  });
  final void Function(double value) onChanged;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.w,
      height: 224.h,
      decoration: BoxDecoration(
        color: ColorManager.blue33,
        borderRadius: BorderRadius.circular(48.r),
      ),
      child: Column(
        children: [
          SizedBox(height: 24.h),
          Text(
            'HEIGHT',
            style: TextStyles.font20W700.copyWith(color: ColorManager.grey98),
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: [
              Text(
                height.toStringAsFixed(0),
                style: TextStyles.font48W700.copyWith(
                  color: ColorManager.white,
                ),
              ),
              SizedBox(width: 2.w),
              Text(
                'CM',
                style: TextStyles.font18W500.copyWith(
                  color: ColorManager.grey98,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          SliderTheme(
            data: SliderThemeData(
              trackHeight: 8.h,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.r),
            ),
            child: Slider(
              activeColor: ColorManager.red55,
              inactiveColor: ColorManager.red42,
              value: height,
              min: 30,
              max: 220,
              onChanged: (value) {
                onChanged(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
