import 'package:ashclubs/Screens/HomeScreen.dart';
import 'package:ashclubs/Widgets/CustomOutlinedButton.dart';
import 'package:ashclubs/Widgets/FormField.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Form(
        key: formKey, 
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Login', style: TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 50,
              ),),
              const SizedBox(height: 20),
              CustomFormField(password: false, controller: emailController, label: 'email address'), 
              const SizedBox(height: 10),
              CustomFormField(password: true, controller: passwordController, label: 'password'),
              const SizedBox(height: 10),
              CustomOutlinedButton(text: 'Login', action: (){
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (_)=> const HomeScreen()));
              }, color: Theme.of(context).primaryColor)
            ],
          ),
        ),
      ),
    );
  }
}