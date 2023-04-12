import 'package:flutter/material.dart';
class Block extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final Widget? child;
  const Block({
    required this.height, 
    required this.width,
    required this.color,
    this.child,
    super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height, 
      width: width,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color, 
          border: const Border(
            bottom: BorderSide(
              color: Colors.black, 
              width: 3
            ),
            left: BorderSide(
              color: Colors.black, 
              width: 3
            ),
            right: BorderSide(
              color: Colors.black, 
              width: 3
            ),
            top: BorderSide(
              color: Colors.black, 
              width: 3
            ),)
        ),
        child: child,
      ),
    );
  }
}