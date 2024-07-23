import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:session_code_flutter/components/custom_textformfield.dart';

import '../components/custom_button.dart';
import '../components/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController usernameController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //1- use textformfield
              //2- use Validator inside textformfield
              //3- user From widget and define key
              //4 check if form is validated
              CustomTextFormField(
                controller: usernameController,
                onSubmitted: (value) {
                  log(value);
                },
                labelText: 'Username',
                hintText: 'Username',
                prefixIcon: const Icon(Icons.person),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Username cannot be empty';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              CustomTextfield(
                controller: emailController,
                onSubmitted: (value) {
                  log(value);
                },
                prefixIcon: const Icon(Icons.email),
                labelText: 'Email',
              ),
              const SizedBox(height: 20),
              CustomTextfield(
                controller: passwordController,
                onSubmitted: (value) {
                  log(value);
                },
                prefixIcon: const Icon(Icons.lock),
                obscureText: isVisible,
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    icon: isVisible
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility)),
                hintText: 'Password',
              ),
              const SizedBox(height: 20),
              CustomButton(
                buttonText: 'Login',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    log('validated');
                  }

                  log(emailController.text);
                  log(passwordController.text);
                  log(usernameController.text);
                  emailController.clear();
                  passwordController.clear();
                  usernameController.clear();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
