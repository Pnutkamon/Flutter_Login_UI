import 'package:flutter/material.dart';
import 'package:login_test/class/button_n.dart';
import 'package:login_test/class/color.dart';
import 'package:login_test/main.dart';
import 'package:login_test/class/boxfield.dart';
import 'package:login_test/model.dart/user.dart';

class loglog extends StatefulWidget {
  final String username;
  const loglog({
    Key? key,
    required this.username,
  }) : super(key: key);
  @override
  _loglogState createState() => _loglogState();
}

class _loglogState extends State<loglog> {
  bool show = true;
  @override
  Widget build(BuildContext context) {
    /*return Container(
      
    );
  }
}
class loglog extends StatefulWidget {

  @override
  Widget build(BuildContext context) {*/
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
            child: Text(
              "Is this your account?",
              style: TextStyle(color: c4, fontSize: 35),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Image(
                  image: NetworkImage(
                      'https://i.pinimg.com/originals/97/a8/e9/97a8e961cf6822f718d060bda2bfb26a.png'),
                  height: 200,
                ),
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Center(
              child: Text(
                widget.username.toUpperCase(),
                style: TextStyle(
                  color: c4,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Visibility(
            visible: show,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "@" + widget.username,
                    style: TextStyle(color: c4, fontSize: 25),
                  ),
                ),
                Container(
                  child: Text(
                    "  jajajjaja",
                    style: TextStyle(color: c4, fontSize: 25),
                  ),
                )
              ],
            ),
          ),
          ButGo(
              text: "Yes, Let's Go!",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => login()),
                );
              }),
          ButGo(
              text: "haha",
              onPressed: () {
                setState(() {
                  show = !show;
                });
              }),
        ],
      ),
    );
  }
}
