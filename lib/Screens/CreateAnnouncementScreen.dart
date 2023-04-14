import 'package:ashclubs/Widgets/Block.dart';
import 'package:ashclubs/Widgets/CustomOutlinedButton.dart';
import 'package:ashclubs/Widgets/FormField.dart';
import 'package:ashclubs/Widgets/chooseColorWidget.dart';
import 'package:flutter/material.dart';

class CreateAnnouncementScreen extends StatelessWidget {
  CreateAnnouncementScreen({super.key});
  final formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final messageController = TextEditingController();
  String colorController = '';

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor, 
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: const Block(height: 45, width: 45, color: Colors.black, child: Center(child: Icon(Icons.arrow_back, size: 30, color: Colors.white)))),
                        
                        
                    ]
                  ),
                ),
              
              Form(
                key: formKey, 
                child: Block(
                  height: 250, 
                  width: 350, 
                  color: Theme.of(context).backgroundColor,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Text('Create an Announcement!', 
                        style: TextStyle(
                        fontSize: 25, 
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                       )),
                      const SizedBox(height: 20),
                      CustomFormField(password: false, controller: titleController, label: 'title of announcement'), 
                      const SizedBox(height: 10),
                      CustomFormField(password: false, controller: messageController, label: 'What is your message?', minLines: 5, maxLines: 5, height: 100), 
                      const SizedBox(height:10),
                       
                       ],
                  ),
                ),
              ), 
              const SizedBox(height: 30),
              CustomOutlinedButton(text: 'Create Announcement', action: (){}, color: Theme.of(context).primaryColor),
              const SizedBox(height: 50),
            ],
          ),
        ),
      )
    );
  }
}