import 'package:bim_calc/app_color.dart';
import 'package:flutter/material.dart';

class WCard extends StatelessWidget {
WCard({
    super.key,
    required this.num, 
    required this.title, 
    required this.inc,
    required this.dec,
  });
  int num;
  final String title;
  final Function() inc;
  final Function() dec;
  
  @override
  Widget build(BuildContext context) {
      return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color:AppColor.navy,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$title", 
            style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 15,),
            Text(
              "$num",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
      
      
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                  icon:Icon(Icons.remove,color: Colors.white),
                 color: Colors.black, iconSize: 20, onPressed:dec,),
              SizedBox(width: 18,),
               IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                  icon:Icon(Icons.add,color: Colors.white),
                color: Colors.grey, iconSize: 20, onPressed: inc,),
             ],),
              ],
          
            
        ),
      ),
    );
 
     }
}
