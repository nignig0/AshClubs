import 'dart:math';

import 'package:ashclubs/Screens/ClubDetailScreen.dart';
import 'package:ashclubs/Widgets/ClubBlock.dart';
import 'package:ashclubs/models/club.dart';
import 'package:ashclubs/models/user.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  //We would load clubs that the user hasn't joined yet 
  //When the user clicks on the club he/she would be transported to the club page
  //From the club page the user can then choose to join a club
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  
  @override
  Widget build(BuildContext context) {
     
    Random rand = new Random();
    return Wrap(
      runSpacing: 5,
      spacing: 15,
      children: [
        for(int index = 0; index < dummyClubs.length; index++)
          
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=> ClubDetailScreen(user: initUser, club: dummyClubs[index])));
          },
          child: ClubBlock(
               height: 170,
             width: 150,
             club: dummyClubs[index], 
             color: colors[rand.nextInt(3)]),
        )
      ],
    );
  }
}