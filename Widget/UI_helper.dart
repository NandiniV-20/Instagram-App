import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextButton(
      {required String text, required VoidCallback callback}) {
    return TextButton(
        onPressed: () {
          callback();
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 12, color: Color(0XFF3797EF)),
        ));
  }

  static Widget CustomTextField({
    required TextEditingController controller,
    required String text,
    required bool tohide,
    required TextInputType textinput,
  }) {
    return Container(
      height: 50,
      width: 343,
      decoration: BoxDecoration(
        color: Color(0xFF121212),
        border: Border.all(color: Color(0xFFFFFFFF)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          controller: controller,
          obscureText: tohide,
          keyboardType: textinput,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Color(0xFFFFFFFF),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  // Custom Image Method
  static Widget CustomImage({required String imgurl}) {
    return Image.asset("assets/images/$imgurl");
  }

  static Widget CustomButton({
    required VoidCallback callback,
    required String buttonname, required String text,
  }) {
    return SizedBox(
      height: 45,
      width: 343,
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0XFF3797EF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Center(
          child: Text(
            buttonname,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}