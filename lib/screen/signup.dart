import 'package:flutter/material.dart';
import 'package:login_test/class/button_n.dart';
import 'package:login_test/class/color.dart';
import 'package:login_test/main.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [c2, c4])),
          ),
          ButGo(
              text: "back",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => login()),
                );
              })
        ],
      ),
    );
  }
}
