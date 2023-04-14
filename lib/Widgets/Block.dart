import 'package:flutter/material.dart';
class Block extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final Widget? child;
  final Color? borderColor;
  const Block({
    required this.height, 
    required this.width,
    required this.color,
    this.child,
    this.borderColor = Colors.black,
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
          border: Border(
            bottom: BorderSide(
              color: borderColor!, 
              width: 3
            ),
            left: BorderSide(
              color: borderColor!, 
              width: 3
            ),
            right: BorderSide(
              color: borderColor!, 
              width: 3
            ),
            top: BorderSide(
              color: borderColor!, 
              width: 3
            ),)
        ),
        child: child,
      ),
    );
  }
}