
import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/numbers.dart';

class NumberPage extends StatelessWidget
    {

     final List<Numbers> numbers = [
       Numbers(image: 'assets/images/numbers/number_one.png',
           jpName: 'ichi',
           eName:'one',
          sound: 'sounds/numbers/number_one_sound.mp3',
       ),
       Numbers(image: 'assets/images/numbers/number_two.png',
           jpName: 'ni',
           eName:'two',
         sound: 'sounds/numbers/number_two_sound.mp3'
       ),
       Numbers(image: 'assets/images/numbers/number_three.png',
           jpName: 'san',
           eName:'three',
         sound: 'sounds/numbers/number_three_sound.mp3'
       ),
       Numbers(image: 'assets/images/numbers/number_four.png',
           jpName: 'chi',
           eName:'four',
           sound: 'sounds/numbers/number_four_sound.mp3'
       ),
       Numbers(image: 'assets/images/numbers/number_five.png',
           jpName: 'go',
           eName:'five' ,
           sound: 'sounds/numbers/number_five_sound.mp3'
       ),
       Numbers(image: 'assets/images/numbers/number_six.png',
           jpName: 'roku',
           eName:'six' ,
           sound: 'sounds/numbers/number_six_sound.mp3'
       ),
       Numbers(image: 'assets/images/numbers/number_six.png',
           jpName: 'shushi',
           eName:'seven',
           sound: 'sounds/numbers/number_seven_sound.mp3'
       ),
       Numbers(image: 'assets/images/numbers/number_eight.png',
           jpName: 'hachi',
           eName:'eight' ,
           sound: 'sounds/numbers/number_eight_sound.mp3'
       ),
       Numbers(image: 'assets/images/numbers/number_nine.png',
           jpName: 'ku',
           eName:'nine' ,
           sound: 'sounds/numbers/number_nine_sound.mp3'
       ),
     ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white
          ),

        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
          itemBuilder:(context,index)
          {

            return Item(
                color:Color(0xFFEF9235),
                number: numbers[index]  );
          } ),
    );
  }

}
