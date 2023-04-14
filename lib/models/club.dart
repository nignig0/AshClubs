import 'package:ashclubs/models/user.dart';
import 'package:flutter/material.dart';

class Club{
  final String name;
  final String description; 
  final String meetingTimes;
  final String location;
  List<String> majors;
  List<String> interests;
  List<String> members;

  Club({
    required this.name, 
    required this.description,
    required this.meetingTimes,
    required this.location, 
    required this.majors, 
    required this.interests,
    required this.members
  });
}

List<Club> dummyClubs = List.generate(10, (index){
  return Club(name: 'dummyClub $index', description: 'This is just a dummy club', meetingTimes: 'Friday @ 7pm', location: '805', majors: ['computer science', 'mechanical engineering', 'business administration'], interests: ['programming', 'music'], members: []);
});

List<Color> colors  = const [
    Color(0xFFac3536),
    Color(0xFF12B868), 
    Color(0xFF1D81D2), 
]; 

