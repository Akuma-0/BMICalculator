import 'package:bmi/core/helpers/enums.dart';
import 'package:bmi/core/theme/color_manager.dart';
import 'package:bmi/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.value,
    required this.onTap,
  });
  final IconData icon;
  final String label;
  final bool isSelected;
  final Gender value;
  final void Function(Gender value) onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(value),
      child: AnimatedContainer(
        width: isSelected ? 162.w : 158.w,
        height: isSelected ? 162.h : 158.h,
        decoration: BoxDecoration(
          color: ColorManager.blue33,
          borderRadius: BorderRadius.circular(45.r),
          border: isSelected
              ? Border.all(
                  color: ColorManager.red55.withAlpha((.4 * 255).toInt()),
                  width: 2.sp,
                )
              : null,
        ),
        duration: const Duration(milliseconds: 400),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 60.sp,
              color: isSelected ? ColorManager.red55 : ColorManager.white,
            ),
            SizedBox(height: 16.h),
            Text(
              label,
              style: TextStyles.font16W700.copyWith(color: ColorManager.grey98),
            ),
          ],
        ),
      ),
    );
  }
}
