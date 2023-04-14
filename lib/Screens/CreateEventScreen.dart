import 'package:ashclubs/Widgets/Block.dart';
import 'package:ashclubs/Widgets/CustomOutlinedButton.dart';
import 'package:ashclubs/Widgets/FormField.dart';
import 'package:ashclubs/Widgets/chooseColorWidget.dart';
import 'package:flutter/material.dart';

class CreateEventScreen extends StatelessWidget {
  CreateEventScreen({super.key});
  final formKey = GlobalKey<FormState>();
  final clubNameController = TextEditingController();
  final descriptionController = TextEditingController();
  final meetingTimesController = TextEditingController();
  final locationController = TextEditingController();
  final majorsController = TextEditingController();
  final interestsController = TextEditingController();
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
                  height: 400, 
                  width: 350, 
                  color: Theme.of(context).backgroundColor,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Text('Create an Event!', 
                        style: TextStyle(
                        fontSize: 30, 
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                       )),
                      const SizedBox(height: 20),
                      CustomFormField(password: false, controller: clubNameController, label: 'name of event'), 
                      const SizedBox(height: 10),
                      CustomFormField(password: false, controller: descriptionController, label: 'A brief description of the event', minLines: 5, maxLines: 5), 
                      const SizedBox(height:10),
                      CustomFormField(password: false, controller: meetingTimesController, label: 'meeting time e.g. Friday @ 10PM'), 
                      const SizedBox(height: 10),
                      CustomFormField(password: false, controller: locationController, label: 'location e.g. RB100'), 
                      const SizedBox(height: 10),
                     
                    ],
                  ),
                ),
              ), 
              const SizedBox(height: 30),
              CustomOutlinedButton(text: 'Create Event', action: (){}, color: Theme.of(context).primaryColor),
              const SizedBox(height: 50),
            ],
          ),
        ),
      )
    );
  }
}