import 'package:bmi/core/helpers/enums.dart';
import 'package:bmi/features/bmi_data/widgets/calculate_button.dart';
import 'package:bmi/features/bmi_data/widgets/gender_card.dart';
import 'package:bmi/features/bmi_data/widgets/height_slider.dart';
import 'package:bmi/features/bmi_data/widgets/value_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BmiDataScreen extends StatefulWidget {
  const BmiDataScreen({super.key});

  @override
  State<BmiDataScreen> createState() => _BmiDataScreenState();
}

class _BmiDataScreenState extends State<BmiDataScreen> {
  Gender selectedGender = Gender.male;
  double height = 180;
  int weight = 70;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI CALCULATOR')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0.h, horizontal: 32.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GenderCard(
                        icon: Icons.male,
                        label: 'MALE',
                        isSelected: selectedGender == Gender.male,
                        value: Gender.male,
                        onTap: (Gender value) {
                          setState(() {
                            selectedGender = value;
                          });
                        },
                      ),
                      GenderCard(
                        icon: Icons.female,
                        label: 'FEMALE',
                        isSelected: selectedGender == Gender.female,
                        value: Gender.female,
                        onTap: (Gender value) {
                          setState(() {
                            selectedGender = value;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h),
                  HeightSlider(
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                    height: height,
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ValuePicker(
                        label: 'WEIGHT',
                        value: weight,
                        min: 10,
                        max: 250,
                        onChanged: (int value) {
                          setState(() {
                            weight = value;
                          });
                        },
                      ),
                      ValuePicker(
                        label: 'AGE',
                        value: age,
                        min: 1,
                        max: 150,
                        onChanged: (int value) {
                          setState(() {
                            age = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        height: height,
        weight: weight,
        gender: selectedGender,
        age: age,
      ),
    );
  }
}
