import 'package:flutter/material.dart';
import 'package:mohab_flutter/screens/home_page.dart';


void main()
{
  runApp( Toko());



   //class flutter team bayno 3la ano widget (constructor) we hwa anounomus objec // run app method btakhod widget
}
class Toko extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),


    );

  }

}
