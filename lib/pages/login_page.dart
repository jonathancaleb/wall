import 'package:flutter/material.dart';
import 'package:wall/components/button.dart';
import 'package:wall/components/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controllers
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            const SizedBox(height: 50),
            //logo
            const Icon(
              Icons.lock,
              size: 100,
            ),

            const SizedBox(height: 50),

            //welcome back message
            const Text("Welcome back"),

            const SizedBox(height: 25),

            //email
            TextFieldWidget(
                controller: emailTextController,
                hintText: 'Email',
                obscureText: false),
            const SizedBox(height: 10),

            //password
            TextFieldWidget(
                controller: passwordTextController,
                hintText: 'Password',
                obscureText: true),
            const SizedBox(height: 10),

            //sign in
            ButtonWidget(
              text: 'sign in',
              onTap: () {},
            ),
            const SizedBox(height: 25),

            //got to register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Register now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
