import 'package:bmi_claculator/bmi_screen.dart';
import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  int age = 10;
  int bmi = 2;
  gender gen = gender.male;
  @override
  BmiResultScreen({super.key, 
    required this.gen,
    required this.age,
    required this.bmi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 15, 29),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
          Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new,
          color: Colors.pink,),
        ),
        backgroundColor: const Color.fromARGB(255, 10, 15, 29),
        title: const Center(
          child: Text(
            "Result",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender : ${gen == gender.male ? "Male" : "Female"}",
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              "BMI : $bmi",
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              "Age : $age",
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
