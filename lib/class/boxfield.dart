import 'package:flutter/material.dart';
import 'package:login_test/model.dart/user.dart';
import 'color.dart';

class BoxField extends StatefulWidget {
  const BoxField({Key? key}) : super(key: key);

  @override
  _BoxFieldState createState() => _BoxFieldState();
}

class _BoxFieldState extends State<BoxField> {
  TextEditingController inputcontroller = new TextEditingController();
  final formkey = GlobalKey<FormState>();
  //String username = '';                                                                                                               
  final emailEditingController = TextEditingController();
  String getvalue= '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: size.width * 0.8,
        height: size.height * 0.08,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: c2,
          // boxShadow: [BoxShadow(
          //   color: c5,
          //   spreadRadius: 1,
          //   blurRadius: 5,
          //   offset: Offset(0,2),
          // )]
        ),
          child: TextField(
            controller: inputcontroller,
            style: TextStyle(
              fontSize: 20,
              color: c7,
            ),
            decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: c5,
                ),
                hintText: "Username",
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: c7,
                )),
          ),
        );
  }
}
