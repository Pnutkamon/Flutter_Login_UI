import 'package:flutter/material.dart';
import 'package:login_test/screen/already_login.dart';

import 'color.dart';

class ButGo extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color, textColor;
  const ButGo({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = c5,
    this.textColor = c1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
      width: size.width * 0.75,
      height: size.height * 0.06,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: c5,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: textColor),
              ),
            onPressed: onPressed,
        ),) 
      ,);
  }
}
