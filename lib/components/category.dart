
import 'package:flutter/material.dart';

class Category extends StatelessWidget
{
  Category({super.key,  this.text,this.color,this.onTap});
  final String? text ;
  final Color? color;
  final Function()? onTap;


  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap ,
      child: Container(

        padding:  EdgeInsets.only(left: 20),
        alignment:Alignment.centerLeft ,
        height: 70,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: TextStyle(
              fontSize: 20,
              color: Colors.white
          ),
        ),



      ),
    );
  }

}