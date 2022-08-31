import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ballon Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red, fontFamily: 'Courier-Prime',
      ),
      home: const BallonLoginUI(),
    );
  }
}

class BallonLoginUI extends StatefulWidget {
  const BallonLoginUI({Key? key}) : super(key: key);

  @override
  _BallonLoginUIState createState() => _BallonLoginUIState();
}

class _BallonLoginUIState extends State<BallonLoginUI> {
  @override
    Widget build(BuildContext context) {
      final email = TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        initialValue: 'sj@gmail.com',
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            hintText: 'Email',
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
      );

      final pasword = TextFormField(
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        autofocus: false,
        initialValue: 'some password',
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            hintText: 'Password',
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
      );

      final loginbutton = Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
              primary: Colors.red,
          ),
          onPressed: () {},
          child: Text(
            'Log In',
            style: TextStyle(
                color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
      );

      final forgotlabel = InkWell(
          onTap: () {},
          child: Text(
            'Forgot Password?',
            style: TextStyle(
                color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold),
          ));

      return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Container(
            color: const Color.fromRGBO(245, 207, 198, 1),
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/background.jpeg"),
                        fit: BoxFit.cover),
                  ),
                ),
                ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(right: 24.0,left: 24.0),
                  children: <Widget>[
                    email,
                    SizedBox(
                      height: 8.0
                    ),
                    pasword,
                    SizedBox(
                      height: 24.0
                    ),
                    loginbutton,
                    forgotlabel,
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }
}