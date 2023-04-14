import 'package:ashclubs/Screens/ClubDetailScreen.dart';
import 'package:ashclubs/Screens/CreateAnnouncementScreen.dart';
import 'package:ashclubs/Screens/CreateClubScreen.dart';
import 'package:ashclubs/Screens/CreateEventScreen.dart';
import 'package:ashclubs/Screens/LoginScreen.dart';
import 'package:ashclubs/models/club.dart';
import 'package:ashclubs/models/user.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AshClubs',
      theme: ThemeData(
        primaryColor: const Color(0xFFac3536), 
        backgroundColor: const Color(0xFFfffefe)
      ),
      home: LoginScreen(),
    );
  }
}

