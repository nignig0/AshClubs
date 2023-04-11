import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          Form(
            key: formKey, 
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'email',
                    border: OutlineInputBorder()
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}