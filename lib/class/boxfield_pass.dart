import 'package:flutter/material.dart';
import 'color.dart';

class BoxFieldP extends StatelessWidget {
  
  final Widget child;

  const BoxFieldP({
  Key? key,
  required this.child,
  }) : super(key: key);

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
      child: child
    );
  }
}
