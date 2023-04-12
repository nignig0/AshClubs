import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomOutlinedButton extends StatefulWidget {
  final String text;
  final Function action; 
  final Color color;
  final double? height;
  final double? width;
  CustomOutlinedButton({
    super.key, 
    required this.text, 
    required this.action, 
    required this.color, 
    this.height = 60, 
    this.width = 200,
    });

  @override
  State<CustomOutlinedButton> createState() => _CustomOutlinedButtonState();
}

class _CustomOutlinedButtonState extends State<CustomOutlinedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: OutlinedButton(onPressed: (){
        widget.action.call();
      }, 
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: Colors.black, 
          width: 2.5
        ),
        backgroundColor: widget.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), 
        )
      ), child: Text(widget.text, style: TextStyle(
        fontWeight: FontWeight.bold,
        color: (widget.color == Colors.white) ? Colors.black : Colors.white, 
        fontSize: 15
      ))),
    );
  }
}