import 'package:ashclubs/Widgets/Block.dart';
import 'package:ashclubs/Widgets/CustomOutlinedButton.dart';
import 'package:ashclubs/models/club.dart';
import 'package:ashclubs/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ClubDetailScreen extends StatefulWidget {
  final User user;
  final Club club;
  const ClubDetailScreen({
    required this.user, 
    required this.club,
    super.key});

  @override
  State<ClubDetailScreen> createState() => _ClubDetailScreenState();
}

class _ClubDetailScreenState extends State<ClubDetailScreen> {
  @override
  Widget build(BuildContext context) {
    var interests = '';
    for (var interest in widget.club.interests){
      interests += '$interest, ';
    }

    var majors = '';
    for (var major in widget.club.majors){
      majors+= '$major, ';
    }
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: const Block(height: 45, width: 45, color: Colors.black, child: Center(child: Icon(Icons.arrow_back, size: 30, color: Colors.white)))),

                      const Text('Detail', style: TextStyle(
                        fontSize: 25, 
                        fontWeight: FontWeight.bold, 
                      )), 

                      const Icon(Icons.share_outlined, size: 30)
                  ]
                ),
              ),
              const SizedBox(height: 50),
              Stack(
                alignment: Alignment.center, 
                clipBehavior: Clip.none,
                children: [
                  Block(height: 200, width: 300, color: Theme.of(context).primaryColor), 
                  (widget.user.clubsIn.any((element) => element.name == widget.club.name)) ?
                  Positioned(
                    top: 100, 
                    child: CustomOutlinedButton(text: 'Joined', action: (){}, color: const Color.fromARGB(255, 18, 184, 104)))
                  :
                  Positioned(
                    top: 100,
                    child: CustomOutlinedButton(text: 'Join Club!', action: (){
                      widget.user.clubsIn.add(widget.club);
                      setState((){});
                    }, color: const Color.fromARGB(255, 234, 200, 8))),
      
                  Positioned(
                    bottom: 150,
                    child: Block(color: Theme.of(context).backgroundColor, width: 200, height: 80,
                      child: Center(
                        child: Text(widget.club.name, style: const TextStyle(
                          fontSize: 20, 
                          fontWeight: FontWeight.bold, 
                        )),
                      )
                     ),
                  ) 
                  
                ],
              ), 
              const SizedBox(height: 20), 
              Block(height: 450, width: 350, color: Theme.of(context).backgroundColor, 
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width:200,
                          child: Text(widget.club.name, maxLines: 3, overflow: TextOverflow.clip,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold, 
                          ),),
                        ),

                        Text(widget.club.meetingTimes, style: const TextStyle(
                          fontSize: 14, 
                          color: Colors.grey
                        ))
                      ],
                    ), 
                    const SizedBox(height: 10),
                    const Divider(
                      color: Colors.black, 
                      thickness: 3.0,
                    ), 
                    const SizedBox(height: 10), 
                    const Text('Description', style: TextStyle(
                      fontSize: 16, 
                      fontWeight: FontWeight.bold, 
                    )),

                    const SizedBox(height: 10),
                    Text(widget.club.description, style: const TextStyle(
                      fontSize: 16
                    )), 

                    const SizedBox(height: 10), 
                    const Text('Location', style: TextStyle(
                      fontSize: 16, 
                      fontWeight: FontWeight.bold, 
                    )),

                    const SizedBox(height: 10),
                    Text(' We meet at ${widget.club.location}', style: const TextStyle(
                      fontSize: 16
                    )), 
                    const SizedBox(height:10),
                    const Divider(
                      color: Colors.black, 
                      thickness: 3.0,
                    ), 
                    const Text('Students with these interests should consider joining: ', style: TextStyle(
                      fontSize: 16, 
                      fontWeight: FontWeight.bold, 
                    )),

                    const SizedBox(height: 10),
                    Text(interests, style: const TextStyle(
                      fontSize: 16
                    )), 

                    const SizedBox(height: 10), 
                    const Text('Students in these majors should consider joining: ', style: TextStyle(
                      fontSize: 16, 
                      fontWeight: FontWeight.bold, 
                    )),

                    const SizedBox(height: 10),
                    Text(majors, style: const TextStyle(
                      fontSize: 16
                    ),)
                      
                  ]
                ),
              ))
            ],
          ),
        ),
      )
    );
  }
}