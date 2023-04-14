import 'package:ashclubs/Screens/CreateAnnouncementScreen.dart';
import 'package:ashclubs/Screens/CreateClubScreen.dart';
import 'package:ashclubs/Screens/CreateEventScreen.dart';
import 'package:ashclubs/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerMenu extends StatelessWidget {
  final User user;
  const DrawerMenu({
    required this.user,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        children: [
          DrawerHeader(child: Image.asset('assets/ashesi_logo.png')),
          ListTile(
            title: const Text('Create Club', style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 25
            )),
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (_)=> CreateClubScreen()));
            } ,
          ), 
          const Divider(thickness: 3.0, color: Colors.black),
          ListTile(
            //shows only if you are a group leader
            title: const Text('Manage Club', style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 25
            )),
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (_)=> CreateClubScreen()));
            } ,
          ), 
          const Divider(thickness: 3.0, color: Colors.black),
          ListTile(
            //shows only if you are a group leader
            title: const Text('Create Announcement', style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 25
            )),
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (_)=> CreateAnnouncementScreen()));
            } ,
          ), 
          const Divider(thickness: 3.0, color: Colors.black),
          ListTile(
            //shows only if you are a group leader
            title: const Text('Create Event', style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 25
            )),
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (_)=> CreateEventScreen()));
            } ,
          ), 
        ]
      ),
    );
  }
}