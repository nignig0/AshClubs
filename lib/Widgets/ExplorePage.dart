import 'dart:math';

import 'package:ashclubs/Widgets/ClubBlock.dart';
import 'package:ashclubs/models/club.dart';
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
    List<Color> colors  = [
  Theme.of(context).primaryColor,
  Color.fromARGB(255, 18, 184, 104), 
  Color.fromARGB(255, 234, 200, 8), 
  Color.fromARGB(255, 202, 96, 221)
];  
    Random rand = new Random();
    return Wrap(
      runSpacing: 5,
      spacing: 15,
      children: [
        for(int index = 0; index < dummyClubs.length; index++)
        ClubBlock(
             height: 170,
           width: 150,
           club: dummyClubs[index], 
           color: colors[rand.nextInt(4)])
      ],
    );
  }
}