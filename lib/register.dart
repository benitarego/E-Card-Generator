import 'package:eazzycard/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:eazzycard/dashboard.dart';
import 'package:eazzycard/main.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => new Home(),
        '/dashboard': (BuildContext context) => new Dashboard()
      },
      home: new RegisterPage(),
    );
  }
}

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => new _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isChecked = true;
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
                  FadeAnimation(1, Text("Register", style: TextStyle(color: Colors.white, fontSize: 40),)),
                  SizedBox(height: 10,),
                  FadeAnimation(1.3, Text("Get started with these simple steps", style: TextStyle(color: Colors.white, fontSize: 18),)),
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
                        SizedBox(height: 10,),
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
                                child: TextFormField(
//                                  validator: InputValidator.emptyCheck("Full Name can't be empty"),
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.person),
                                      hintText: "Full Name",
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
                                      prefixIcon: Icon(Icons.email),
                                      hintText: "Email",
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
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock),
                                      hintText: "Confirm Password",
                                      hintStyle: TextStyle(color: Colors.grey[600]),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                        SizedBox(height: 20,),
//                        FadeAnimation(1.5, Text("Agree with the terms and policies", style: TextStyle(color: Colors.grey),)),
                        Padding(
                          padding: const EdgeInsets.only(right:26.0),
                          child: CheckboxListTile(
                            activeColor: Colors.green,
                            onChanged: (a) {
                              setState(() {
                                _isChecked = !_isChecked;
                              });
                            },
                            value: _isChecked,
                            controlAffinity: ListTileControlAffinity.leading,
                            title: Text('Agree with the terms and policies', style: TextStyle(color: Colors.grey[500] , fontSize: 12.0),),
                          ),
                        ),

                        new GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed('/dashboard');
                          },
                          child: FadeAnimation(1.6, Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.purple[700]
                            ),
                            child: Center(
                              child: Text("REGISTER", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            ),
                          )),
                        ),
//                        SizedBox(height: 40,),
//                        FadeAnimation(1.7, Text("-- Login with --", style: TextStyle(color: Colors.grey),)),
//                        SizedBox(height: 30,),
//                        Row(
//                          children: <Widget>[
//                            Expanded(
//                              child: FadeAnimation(1.8, Container(
//                                height: 50,
//                                decoration: BoxDecoration(
//                                    borderRadius: BorderRadius.circular(50),
//                                    color: Colors.white
//                                ),
//                                child: Center(
//                                  child: Image.asset('assets/google.png'),
//                                  child: Text("", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
//                                ),
//                              )),
//                            ),
//                            SizedBox(width: 30,),
//                            Expanded(
//                              child: FadeAnimation(1.9, Container(
//                                height: 50,
//                                decoration: BoxDecoration(
//                                    borderRadius: BorderRadius.circular(50),
//                                    color: Colors.black
//                                ),
//                                child: Center(
//                                  child: Text("Github", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
//                                ),
//                              )),
//                            )
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
