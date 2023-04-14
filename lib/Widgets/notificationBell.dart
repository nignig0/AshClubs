import 'package:flutter/material.dart';

class NotificationBell extends StatelessWidget {
  final int notificationCount;
  const NotificationBell({required this.notificationCount, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Icon(Icons.notifications_outlined, size: 40, color: Colors.black), 
        Positioned(
        child: 
        Container(
          height: 10, 
          width: 10, 
          decoration: const BoxDecoration(
            shape: BoxShape.circle
          ),
        child: Text(notificationCount.toString(), style: const TextStyle(
          color: Colors.white, 
          fontSize: 5, 
          fontWeight: FontWeight.bold
        ))
        )
        )
      ],
    );
  }
}