import 'package:ashclubs/Widgets/CustomOutlinedButton.dart';
import 'package:ashclubs/Widgets/DrawerMenu.dart';
import 'package:ashclubs/Widgets/ExplorePage.dart';
import 'package:ashclubs/Widgets/FormField.dart';
import 'package:ashclubs/models/user.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchKey = GlobalKey<FormState>();
    final searchController  = TextEditingController();
    final pageController = PageController();
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: DrawerMenu(user: initUser),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: EdgeInsets.only(left: width*0.125),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Row(
              children: [
                Image.asset('assets/ashesi_logo.png', height: 100, width: 100), 
                const SizedBox(width: 15), 
                Column(
                  children: const [
                    Text('AshClubs!', style: TextStyle(
                      color: Colors.black, 
                      fontSize: 10, 
                      fontWeight: FontWeight.bold
                    )), 
                    SizedBox(height: 10),
                    Text('Tani', style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 20
                    ))
                  ],
                ), 
                const Spacer(), 
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(Icons.notifications_outlined, size: 40, color: Colors.black),
                )
              
              ]
            ), 
            const SizedBox(height: 15,),
            Row(
              children: [
                CustomFormField(password: false,
                controller: searchController,
                label: 'Search...',
                prefixIcon: const Icon(Icons.search, color: Colors.black),
                width: 230
                ), 
                const SizedBox(width: 10),
                CustomOutlinedButton(text: 'Go!', action: (){}, color: Colors.black, width: 60)
              ],
            ),
            const SizedBox(height: 15), 
            Row(children: [
              CustomOutlinedButton(text: 'Explore Clubs & Events', action: (){
                pageController.jumpToPage(0);
              }, color: Theme.of(context).primaryColor, height: 60, width:150),
              const SizedBox(width: 10), 
              CustomOutlinedButton(text: 'Feed', action: (){
                pageController.jumpToPage(1);
              }, color: Colors.white , height: 60, width:100),
            ],), 
            const SizedBox(height: 10), 
            Expanded(
              child: PageView(
                controller: pageController,
                children: [
                  SingleChildScrollView(child: ExplorePage()),
                  Container(
                    color: Colors.purple
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}