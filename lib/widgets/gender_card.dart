import 'package:bim_calc/app_color.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,required this.icon,
    required this.gender, required this.isSelected, 
    required this.onTap,
  });
  final IconData icon;
  final String gender;
  final bool isSelected;
  final Function() onTap;

  
  @override
  Widget build(BuildContext context) {
      return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 35),
          decoration: BoxDecoration(
            color:isSelected?AppColor.pink: AppColor.navy,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white, size: 80),
              SizedBox(height: 18,),
              Text(gender, style: TextStyle(color: Colors.white, fontSize: 18)),
            ],
          ),
        ),
      ),
    );
 
     }
}
