


import 'package:flutter/material.dart';
import 'package:mohab_flutter/components/item_family.dart';
import 'package:mohab_flutter/models/family_members.dart';




class FamilyMembers extends StatelessWidget
{

  final List<FamilyMembersModel> members = [
    FamilyMembersModel(image: 'assets/images/family_members/family_father.png',
      jpName: 'chicchoya',
      eName:'father',
      sound: 'sounds/family_members/father.wav',
    ),
    FamilyMembersModel(image: 'assets/images/family_members/family_daughter.png',
        jpName: 'musume',
        eName:'daughter',
        sound: 'sounds/family_members/daughter.wav'
    ),
    FamilyMembersModel(image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'ojisan',
        eName:'grandfather',
        sound: 'sounds/family_members/grand father.wav'
    ),
    FamilyMembersModel(image: 'assets/images/family_members/family_mother.png',
        jpName: 'haohoya',
        eName:'mother',
        sound: 'sounds/family_members/mother.wav'
    ),
    FamilyMembersModel(image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'sobo',
        eName:'grandmother',
        sound: 'sounds/family_members/grand mother.wav'
    ),
    FamilyMembersModel(image: 'assets/images/family_members/family_son.png',
        jpName: 'musoko',
        eName:'son',
        sound: 'sounds/family_members/son.wav'
    ),
    FamilyMembersModel(image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'imoto',
        eName:'younger sister',
        sound: 'sounds/family_members/younger sister.wav'
    ),
    FamilyMembersModel(image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'son',
        eName:'older brother',
        sound: 'assets/sounds/family_members/older bother.wav'
    ),

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          'Family members',
          style: TextStyle(
              color: Colors.white
          ),

        ),
      ),
      body: ListView.builder(
          itemCount: members.length,
          itemBuilder:(context,index)
          {

            return ItemFamily(
                color: const Color(0xFF558B37),
                familyMembers: members[index]);
          } ),
    );
  }

}
