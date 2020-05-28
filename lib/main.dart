//import 'dart:js';

import 'package:eazzycard/Animation/FadeAnimation.dart';
import 'package:eazzycard/dashboard.dart';
//import 'package:eazzycard/navigator_drawer.dart';
import 'package:flutter/material.dart';
import 'package:eazzycard/register.dart';
import 'package:eazzycard/DrawerItems/uploadcv_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/register': (context) => Register(),
      '/dashboard': (context) => Dashboard(),
      '/uploadcv': (BuildContext context) => new UploadCVScreen(),
    },
  ));
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/register': (BuildContext context) => new Register(),
        '/dashboard': (BuildContext context) => new Dashboard(),
        '/uploadcv': (BuildContext context) => new UploadCVScreen(),
      },
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.purple[900],
                  Colors.purple[700],
                  Colors.purple[400]
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10,),
                  FadeAnimation(1, Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),)),
                  SizedBox(height: 10,),
                  FadeAnimation(1.3, Text("Welcome to EazzyCard.", style: TextStyle(color: Colors.white, fontSize: 18),)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 20,),
                        FadeAnimation(1.4, Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                  color: Color.fromRGBO(20, 50, 75, 70),
                                  blurRadius: 20,
                                  offset: Offset(0, 10)
                              )]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.email),
                                      hintText: "Email or Phone number",
                                      hintStyle: TextStyle(color: Colors.grey[600]),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock),
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey[600]),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                        SizedBox(height: 30,),
                        FadeAnimation(1.5, Text("Forgot Password?", style: TextStyle(color: Colors.grey),)),
                        SizedBox(height: 20,),
                        new GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/dashboard');
                          },
                          child: FadeAnimation(1.6, Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.purple[700]
                            ),
                            child: Center(
                              child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            ),
                          )),
                        ),
                        SizedBox(height: 20,),
                        FadeAnimation(1.7, Text("-- Login with --", style: TextStyle(color: Colors.grey),)),
                        SizedBox(height: 20,),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: FadeAnimation(1.8, Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white
                                ),
                                child: Center(
                                  child: Image.asset('assets/google.png'),
//                                  child: Text("", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                                ),
                              )),
                            ),
                            SizedBox(width: 20,),
                          ],
                        ),
                        SizedBox(height: 15.0),
                         FadeAnimation(1.7, Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                             Text(
                               "Don't have an account?",
                               style: TextStyle(
                                 color: Colors.grey,
                                 fontFamily: 'Montserrat',
                               ),
                             ),
                             SizedBox(width: 5.0),
                             new GestureDetector(
                             onTap: (){
                            Navigator.pushNamed(context, '/register');
                            },
                             child: InkWell(
                               child: Text('Register',
                                   style: TextStyle(
                                       color: Colors.purple[700],
                                       fontFamily: 'Montserrat',
                                       fontWeight: FontWeight.bold,
                                       decoration: TextDecoration.underline)),
                             )
                             ),
                           ],
                         ),
                         ),
//                        SizedBox(width: 30,height: 20,),
//                        FadeAnimation(1.7, Text("Don't have an Account? ", style: TextStyle(color: Colors.grey),)),
//                        SizedBox(width: 30,height: 15,),
//                        new GestureDetector(
//                          onTap: (){
//                            Navigator.pushNamed(context, '/register');
//                          },
//                          child: FadeAnimation(1.6, Container(
//                            height: 50,
//                            margin: EdgeInsets.symmetric(horizontal: 50),
//                            decoration: BoxDecoration(
//                                borderRadius: BorderRadius.circular(50),
//                                color: Colors.purple[700]
//                            ),
//                            child: Center(
//                              child: Text("Register", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
//                            ),
//                          )),
//                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
