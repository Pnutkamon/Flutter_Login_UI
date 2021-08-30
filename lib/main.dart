import 'package:flutter/material.dart';
import 'package:login_test/class/boxfield_pass.dart';
import 'package:login_test/class/button_n.dart';
import 'package:login_test/class/color.dart';
import 'package:login_test/model.dart/user.dart';
import 'package:login_test/screen/already_login.dart';
import 'package:login_test/screen/signup.dart';
import 'class/boxfield.dart';
import 'class/button_noborder.dart';
import 'package:login_test/main.dart';

void main() {
  runApp(login());
}

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: logining());
  }
}

/*class logining extends StatelessWidget {
  final formkey = GlobalKey<FormState>();
  User user = User(username: "", password: "");
  TextEditingController inputcontroller = new TextEditingController();
  String getvalue = '';
  @override
  Widget build(BuildContext context) {
*/
class logining extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}


class _loginState extends State<logining> {
  final formkey = GlobalKey<FormState>();
  User user = User(username: "", password: "");
  TextEditingController inputcontroller = new TextEditingController();
  String getvalue = '';
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  c5,
                  c2,
                ],
              )),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Container(
                //     child: Center(
                //   child: Image(
                //     image: NetworkImage(
                //         'https://cdn.pixabay.com/photo/2021/02/16/19/45/fall-guys-6022164_960_720.png'),
                //     height: 200,
                //   ),
                // )),
                Container(
                  child: Text(
                    "Welcome!",
                    style: TextStyle(fontSize: 25, color: c1),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5),
                ),
                Container(
                  child: Text(
                    "Please, Login",
                    style: TextStyle(fontSize: 40, color: c1),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 15),
                ),
                BoxFieldP(
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
                ),
                BoxFieldP(
                  child: TextField(
                    style: TextStyle(
                      fontSize: 20,
                      color: c7,
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        color: c5,
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(fontSize: 20, color: c7),
                    ),
                  ),
                ),
                ButGo(
                    text: "LOGIN",
                    onPressed: () {
                      setState((){getvalue = inputcontroller.text;});
                      print(getvalue);
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => loglog(username: getvalue)),
                      );
                    }),
                Container(
                  child: Text(
                    "@copy ka",
                    style: TextStyle(color: c7),
                  ),
                ),
                Container(
                  child: Text(
                    "_____________________________________________",
                    style: TextStyle(color: c7),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(
                          "No account?",
                          style: TextStyle(color: c7, fontSize: 20),
                        ),
                      ),
                      ButNoB(
                        text: "SignUp",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => signup()),
                          );
                        },

                      )
                    ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
