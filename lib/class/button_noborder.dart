import 'package:flutter/material.dart';
import 'package:login_test/screen/already_login.dart';

import 'color.dart';

class ButNoB extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color, textColor;
  const  ButNoB({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = c5,
    this.textColor = c6,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: size.width * 0.25,
      height: size.height * 0.06,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: TextButton(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 25,
              color: textColor),
              ),
            onPressed: onPressed,
        ),) 
      ,);
  }
}
