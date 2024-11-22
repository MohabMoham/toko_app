import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:mohab_flutter/models/numbers.dart';
class Item extends StatelessWidget
{
  const Item({ required this.number, required this.color});
  final Numbers number;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,

      child:  Row(
        children:  [
          Container
            (
            color: Colors.white,
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),

                ),
                Text(
                  number.eName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed:()
              {
                final player = AudioPlayer();
                player.play(AssetSource(number.sound));
              } ,
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),
          ),

        ],
      ),


    );
  }

}