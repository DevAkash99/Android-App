import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'SignUp.dart';
import 'SignIn.dart';


void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      backgroundColor: Colors.white,
      image: Image.asset('./assets/splogo.jpg'),
      loaderColor: Colors.white,
      photoSize: 150.0,
      navigateAfterSeconds: MainScreen(),
    );
 }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        backgroundColor : Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.only(left:10,top:800,bottom:40,right:30),
        child: ListView(children: <Widget>[
          Container(
              height: 50,
              padding: EdgeInsets.only(left:30,top:0,bottom:2,right:0),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.lightBlue,
                child: Text('Login'),
                onPressed: () {
                  navigateToSignInPage(context);
                },
              )),
          Container(
              child: Row(
            children: <Widget>[
              Text(
                'Does not have account?',
                style: TextStyle(fontSize: 22),
              ),
              FlatButton(
                textColor: Colors.blue,
                child: Text(
                  'Sign UP',
                  style: TextStyle(fontSize: 28),
                ),
                onPressed: () {
                  navigateToSignUpPage(context);
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ))
        ]),
      ),

    );
  }
}

Future navigateToSignInPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
}

Future navigateToSignUpPage(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => SignUpPage()));
}
