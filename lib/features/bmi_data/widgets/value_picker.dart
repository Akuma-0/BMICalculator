import 'package:bmi/core/theme/color_manager.dart';
import 'package:bmi/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ValuePicker extends StatelessWidget {
  const ValuePicker({
    super.key,
    required this.label,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
  });
  final String label;
  final int value, min, max;
  final void Function(int value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 161.w,
      height: 188.h,
      decoration: BoxDecoration(
        color: ColorManager.blue33,
        borderRadius: BorderRadius.circular(48.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyles.font16W700.copyWith(color: ColorManager.grey98),
          ),
          SizedBox(height: 22.h),
          Text(
            value.toString(),
            style: TextStyles.font36W700.copyWith(color: ColorManager.white),
          ),
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  if (value > min) {
                    onChanged(value - 1);
                  }
                },
                icon: Icon(
                  Icons.remove,
                  size: 24.sp,
                  color: ColorManager.white,
                ),
                style: IconButton.styleFrom(
                  backgroundColor: ColorManager.grey5e,
                ),
              ),
              SizedBox(width: 16.w),
              IconButton(
                onPressed: () {
                  if (value < max) {
                    onChanged(value + 1);
                  }
                },
                icon: Icon(Icons.add, size: 24.sp, color: ColorManager.white),
                style: IconButton.styleFrom(
                  backgroundColor: ColorManager.grey5e,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
