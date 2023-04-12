import 'package:ashclubs/Widgets/Block.dart';
import 'package:ashclubs/models/club.dart';
import 'package:flutter/material.dart';


class ClubBlock extends StatelessWidget {
  final double height;
  final double width;
  final Club club;
  final Color color;
  const ClubBlock({
    required this.height, 
    required this.width,
    required this.club,
    required this.color,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    
    return Block(
      height: height, 
      width: width,
      color: Theme.of(context).backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Column(
          children: [
            Block(height: height*0.62, width: width, color: color),
            const SizedBox(height: 5), 
            Text(club.name, style: const TextStyle(
              color: Colors.black, 
              fontSize: 15, 
              fontWeight: FontWeight.bold,
            ),), 
            const SizedBox(height: 5), 
            Text(club.meetingTimes, style: const TextStyle(
              color: Colors.grey, 
              fontSize:13, 
              fontWeight: FontWeight.bold,
            ))            

          ],
        ),
      ),
    );
  }
}


