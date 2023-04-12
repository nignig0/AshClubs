import 'package:ashclubs/models/club.dart';

class User{
  final String email;
  final String firstname;
  bool? isClubLeader;
  List<Club> clubsIn;
  List<Club> clubsLeading;

  User({
    required this.email, 
    required this.firstname, 
    this.isClubLeader = false, 
    required this.clubsIn, 
    required this.clubsLeading,
  });

}