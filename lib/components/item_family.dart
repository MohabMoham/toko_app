import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


import '../models/family_members.dart';

class ItemFamily extends StatelessWidget
{
  const ItemFamily({ required this.familyMembers, required this.color});
  final FamilyMembersModel familyMembers;
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
            child: Image.asset(familyMembers.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  familyMembers.jpName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),

                ),
                Text(
                  familyMembers.eName,
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
                player.play(AssetSource(familyMembers.sound));
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