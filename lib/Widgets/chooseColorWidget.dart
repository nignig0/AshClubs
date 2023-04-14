import 'package:ashclubs/Widgets/Block.dart';
import 'package:flutter/material.dart';


class ChooseColorWidget extends StatefulWidget {
  final Color color;
  String controller;
  final String colorName;
  ChooseColorWidget({
    required this.color, 
    required this.controller, 
    required this.colorName,
    super.key});

  @override
  State<ChooseColorWidget> createState() => _ChooseColorWidgetState();
}

class _ChooseColorWidgetState extends State<ChooseColorWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          widget.controller = widget.colorName;
        });
      },
      child: Block(height: 60, width: 160, color: Theme.of(context).backgroundColor,
      borderColor: (widget.controller == widget.colorName)?  const Color(0xFF12B868) : Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.colorName, style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15
            )), 
            Block(color: widget.color, height: 50, width: 50)
            ]
            ),
      ),),
    );
  }
}