import 'package:ashclubs/Widgets/Block.dart';
import 'package:ashclubs/Widgets/CustomOutlinedButton.dart';
import 'package:ashclubs/Widgets/FormField.dart';
import 'package:ashclubs/Widgets/chooseColorWidget.dart';
import 'package:flutter/material.dart';

class CreateClubScreen extends StatelessWidget {
  CreateClubScreen({super.key});
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
                  height: 800, 
                  width: 350, 
                  color: Theme.of(context).backgroundColor,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Text('Create a Club!', 
                        style: TextStyle(
                        fontSize: 30, 
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                       )),
                      const SizedBox(height: 20),
                      CustomFormField(password: false, controller: clubNameController, label: 'name of club'), 
                      const SizedBox(height: 10),
                      CustomFormField(password: false, controller: descriptionController, label: 'A brief description of your club', minLines: 5, maxLines: 5), 
                      const SizedBox(height:10),
                      CustomFormField(password: false, controller: meetingTimesController, label: 'meeting time e.g. Friday @ 10PM'), 
                      const SizedBox(height: 10),
                      CustomFormField(password: false, controller: locationController, label: 'location e.g. RB100'), 
                      const SizedBox(height: 10),
                      CustomFormField(password: false, controller: majorsController, label: 'majors e.g. Computer Science, MIS etc'), 
                      const SizedBox(height: 10),
                      CustomFormField(password: false, controller: interestsController, label: 'interests e.g. Programming'), 
                      const SizedBox(height: 10),
                      const Divider(thickness: 3.0, color: Colors.black), 
                      const Text('Choose your club color', style: TextStyle(
                        fontSize: 20
                      )), 
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          ChooseColorWidget(color: const Color(0xFF12B868), controller: colorController, colorName: '#12B868'), 
                          ChooseColorWidget(color: const Color(0xFFac3536), controller: colorController, colorName: '#AC3536'),
                          ChooseColorWidget(color: const Color(0xFF1D81D2), controller: colorController, colorName: '#A1D81D2'),
                        ],
                      )
                    ],
                  ),
                ),
              ), 
              const SizedBox(height: 30),
              CustomOutlinedButton(text: 'Create Club', action: (){}, color: Theme.of(context).primaryColor),
              const SizedBox(height: 50),
            ],
          ),
        ),
      )
    );
  }
}