import 'package:bim_calc/app_color.dart';
import 'package:bim_calc/pages/result_Screen.dart';
import 'package:bim_calc/widgets/calc_button.dart';
import 'package:bim_calc/widgets/gender_card.dart';
import 'package:bim_calc/widgets/w_card.dart';
import 'package:flutter/material.dart';
import 'dart:math';

enum Gender { male, female }

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  Gender? selectedGender;
  int height = 180;
  int weight = 50;
  int age = 24;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      appBar: AppBar(
        backgroundColor: AppColor.bgColor,
        leading: Icon(Icons.local_pizza_sharp, color: Colors.white),
        title: Text("BMI", style: TextStyle(color: Colors.white)),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            _selectGender(),
            SizedBox(height: 20),
            _heightSelection(),
            SizedBox(height: 20),
            _weightAndAgeSection(),
            SizedBox(height: 15),

            CalcButton(
              onpress: () {
                // BMI = 	w(kg) / h^2 (m)

                double res = weight / pow(height / 100, 2);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(result: res),
                  ),
                );
              },
              text: "Calculate",
            ),
          ],
        ),
      ),
    );
  }

  Row _weightAndAgeSection() {
    return Row(
      children: [
        WCard(
          num: weight,
          title: "weight",
          inc: () {
            if (weight < 400) {
              setState(() {
                weight++;
              });
            }
          },
          dec: () {
            if (weight > 40) {
              setState(() {
                weight--;
              });
            }
          },
        ),
        SizedBox(width: 15),
        WCard(
          num: age,
          title: "age",
          inc: () {
            if (age < 100) {
              setState(() {
                age++;
              });
            }
          },
          dec: () {
            if (age > 4) {
              setState(() {
                age--;
              });
            }
          },
        ),
      ],
    );
  }

  Container _heightSelection() {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColor.navy,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Height", style: TextStyle(color: Colors.white, fontSize: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                "$height",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text("cm", style: TextStyle(color: Colors.white, fontSize: 18)),
            ],
          ),
          Slider(
            value: height.toDouble(),
            min: 20,
            max: 250,
            activeColor: AppColor.pink,

            onChanged: (value) {
              setState(() {
                height = value.toInt();
              });
            },
          ),
        ],
      ),
    );
  }

  Row _selectGender() {
    return Row(
      children: [
        GenderCard(
          icon: Icons.male_outlined,
          gender: "male",
          isSelected: selectedGender == Gender.male,
          onTap: () {
            setState(() {
              selectedGender = Gender.male;
            });
          },
        ),
        SizedBox(width: 12),
        GenderCard(
          icon: Icons.female_outlined,
          gender: "female",
          isSelected: selectedGender == Gender.female,
          onTap: () {
            setState(() {
              selectedGender = Gender.female;
            });
          },
        ),
      ],
    );
  }
}
