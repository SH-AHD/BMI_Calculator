import 'package:bim_calc/app_color.dart';
import 'package:bim_calc/widgets/calc_button.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.result});
  final double result;

  @override
  Widget build(BuildContext context) {
   Map<String,dynamic>bmi=getClass(result);
String cat=bmi.values.elementAt(0);
Color catColor=bmi.values.elementAt(1);
String catMsg=bmi.values.elementAt(2);
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      appBar: AppBar(
              backgroundColor: AppColor.bgColor,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios), color: Colors.white,),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Your result",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontSize: 33,
              fontWeight: FontWeight.w400,
            ),),
            SizedBox(height: 30,),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColor.navy,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("$cat",style: TextStyle(
                      color: catColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                      SizedBox(height: 90,),
                     Text("${result.toStringAsFixed(2)}",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 70,
                    ),),
                        SizedBox(height: 60,),
                      Text("$catMsg",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),),
                  ],
                ),
              ),
            ),
          SizedBox(height: 20,),
            CalcButton(
              onpress:(){ Navigator.pop(context);}, 
              text: "Recalculate"),        
        
          ],
        ),
      ),
    );
  }



Map<String,dynamic> getClass(double result){
// Underweight Less than 18.5
// Healthy Weight 18.5 to less than 25
// Overweight 25 to less than 30
// Obesity 30 or greater

if(result<18.5)
  return {"cat":"Underweight","color":Colors.yellow,
  "message": "Your body weight is a bit low, try to eat a bit more! 🍎"};
else if(result>=18.5&&result<25) 
  return {"cat":"Healthy Weight","color":Colors.green,
  "message": "Your body weight is absolutely normal, Good job! 💪",};
else if(result>=25.5&&result<30) 
  return {"cat":"Overweight","color":Colors.deepOrange,
  "message": "You are slightly above normal weight, try to exercise more! 🏃‍♂️",};
else
  return {"cat":"Obesity","color":Colors.red,
"message": "Please take care of your health and consult a nutritionist! ❤️",  };
  
  }

}
