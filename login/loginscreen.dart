import 'package:flutter/material.dart';
import 'package:instagram/Widget/UI_helper.dart';
import 'package:instagram/SignUp/SignUpScreen.dart';

import '../SignUp/SignUpScreen.dart';
class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: "logo.png"),
            SizedBox(height: 20),
            UiHelper.CustomTextField(
              controller: emailController,
              text: "Email",
              tohide: false,
              textinput: TextInputType.emailAddress,
            ),
            SizedBox(height: 30),
            UiHelper.CustomTextField(
              controller: passwordController,
              text: "Password",
              tohide: true,
              textinput: TextInputType.visiblePassword,
            ),

            // Forgot Password - centered on its own line
            SizedBox(height: 15),
            UiHelper.CustomTextButton(
              text: "Forgot Password",
              callback: () {},
            ),

            SizedBox(height: 10),
            UiHelper.CustomButton(
              text: "Log in",
              callback: () {},
              buttonname: "Log in",
            ),

            SizedBox(height: 20),

            // "Don't have an account?" centered
            Text(
              "Don't have an account?",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),

            SizedBox(height: 10),

            // "Sign Up" button centered
            UiHelper.CustomButton(

              callback: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
              },
              buttonname: 'Sign Up',
              text: "Sign Up",
            ),
          ],
        ),
      ),
    );
  }
}
