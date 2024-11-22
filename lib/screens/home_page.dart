

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mohab_flutter/screens/family_members.dart';
import 'package:mohab_flutter/screens/number_page.dart';

import '../components/category.dart';

class HomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          'Toku',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        children: [

          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context){
                return NumberPage();

              } ));
            },
            text: 'Numbers',
            color: Colors.orangeAccent,
          ),
          Category(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)
              {
                return FamilyMembers();
              }));
            },

            text: 'family members',
            color: Colors.green,
          ),
          Category(
            text: 'colors',
            color: Colors.purple,
          ),
          Category(
            text: 'phrases',
            color: Colors.cyan,
          ),

        ],
      ),
    );

  }

}
