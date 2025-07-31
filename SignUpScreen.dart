import 'package:flutter/material.dart';
import 'package:instagram/login/loginscreen.dart';
import 'package:instagram/Widget/UI_helper.dart';

class SignUpScreen extends StatelessWidget {
  // No capital "C" in 'class'

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: "logo.png"),
            SizedBox(height: 30),
            UiHelper.CustomTextField(
                controller: emailController,
                text: "Email",
                tohide: false,
                textinput: TextInputType.emailAddress),
            SizedBox(height: 10),
            UiHelper.CustomTextField(
                controller: passwordController,
                text: "Password",
                tohide: true,
                textinput: TextInputType.text),
            SizedBox(height: 10),
            UiHelper.CustomTextField(
                controller: usernameController,
                text: "Username",
                tohide: false,
                textinput: TextInputType.name),
            SizedBox(height: 30),
            UiHelper.CustomButton(
                callback: () {}, buttonname: "Sign Up", text: "Sign Up"),
            SizedBox(height: 20),
            Column(
              children: [
                Text(
                  "Already Have an Account?",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                UiHelper.CustomButton(
                  callback: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  buttonname: "Sign In",
                  text: "Sign In",
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
