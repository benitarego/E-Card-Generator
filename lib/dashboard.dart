import 'package:eazzycard/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:eazzycard/main.dart';
//import 'package:eazzycard/navigator_drawer.dart';
import 'package:eazzycard/app_theme.dart';
//import 'package:eazzycard/DrawerItems/payment_screen.dart';
//import 'package:eazzycard/DrawerItems/layouts_screen.dart';
import 'package:eazzycard/DrawerItems/uploadcv_screen.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => new Home(),
//        '/payment': (BuildContext context) => new PaymentScreen(),
//        '/layouts': (BuildContext context) => new LayoutsScreen(),
        '/uploadcv': (BuildContext context) => new UploadCVScreen(),
      },
      home: new DashboardPage(),
    );
  }
}

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashboardState();
  }
}
class DashboardState extends State<Dashboard> {
  bool _isChecked = true;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: new Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text("Benita Rego"),
              accountEmail: new Text("regobenita26@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Image.asset('assets/benita2.jpg'),
                backgroundColor: Colors.white,
              ),
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
              onDetailsPressed: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/dashboard');
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Payment'),
              onTap: () {
                Navigator.pushNamed(context, '/payment');
              },
            ),
            ListTile(
              leading: Icon(Icons.palette),
              title: Text('Layouts'),
              onTap: () {
                Navigator.pushNamed(context, '/layouts');
              },
            ),
            ListTile(
              leading: Icon(Icons.font_download),
              title: Text('Fonts'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Services'),
            ),
            ListTile(
              leading: Icon(Icons.settings_applications),
              title: Text('Skills'),
            ),
            ListTile(
              leading: Icon(Icons.library_books),
              title: Text('Experience'),
            ),
            ListTile(
              leading: Icon(Icons.accessibility),
              title: Text('Testimonial'),
            ),
            ListTile(
              leading: Icon(Icons.portrait),
              title: Text('Portfolio'),
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Blog'),
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Appointments'),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('Contact Messages'),
            ),
            ListTile(
              leading: Icon(Icons.cloud_upload),
              title: Text('Upload CV'),
              onTap: () {
                Navigator.pushNamed(context, '/uploadcv');
              },
            ),
            Divider(
              height: 1,
              color: AppTheme.grey.withOpacity(0.6),
            ),
            ListTile(
              title: Text(
                'Sign Out',
                style: TextStyle(
                  fontFamily: AppTheme.fontName,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: AppTheme.darkText,
                ),
                textAlign: TextAlign.left,
              ),
              trailing: Icon(
                Icons.power_settings_new,
                color: Colors.red,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
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
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.all(0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(1, IconButton(
                        padding: EdgeInsets.only(right: 20.0),
                        icon: new Icon(Icons.dehaze),
                        color: Colors.white,
                        onPressed: () => _scaffoldKey.currentState.openDrawer(),
                      ),),
                      SizedBox(width: 10.0),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0, left: 40.0),
                        child : FadeAnimation(1.3, Text("Welcome", style: TextStyle(color: Colors.white, fontSize: 25),)),
                      ),],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 75.0),
                    child : FadeAnimation(1.3, Text("Benita Rego!", style: TextStyle(color: Colors.white, fontSize: 30),)),
                  ),
                ],
              ),
            ),
//            SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 20.0,),
                        FadeAnimation(
                          1.4, Text(
                            'Your E-Card',
                            style: TextStyle(
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                          child: Center(
                            child: Container(
                              width: 400.0,
                              height: 230.0,
                              child: FlipCard(
                                direction: FlipDirection.HORIZONTAL, // default
                                front: Material(
                                  color: Colors.orange.withOpacity(0.9),
                                  borderRadius: BorderRadius.circular(24.0),
                                  shadowColor: Color.fromRGBO(20, 30, 20, 1.7),
                                  child: _nameDetailsContainer(),
                                ),
                                back: Material(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(24.0),
                                  shadowColor: Color(0x802196F3),
                                  child: _socialContainer(),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    ),
    ),
    );
  }

  Widget _nameDetailsContainer() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 90.0,
            width: 400.0,
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ListTile(
                  leading: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://images.unsplash.com/photo-1510025987945-cf4ee9606b1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
                          )
                      )
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text('Meghan Visser', style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                    child: Text('Android Developer', style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 16.0,
                    ),),
                  ),
                ),
              ),
            ],),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(24.0),
            ),
          ),
          Container(
            child: _detailsContainer(),
          ),
        ],
      ),
    );
  }

  Widget _socialContainer() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 90.0,
            width: 400.0,
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: ListTile(
                  leading: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://images.unsplash.com/photo-1510025987945-cf4ee9606b1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
                          )
                      )
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Social Links', style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text('', style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 20.0,
                    ),),
                  ),
                ),
              ),
            ],),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(24.0),
            ),
          ),
          Container(
            child: _socialdetailsContainer(),
          ),
        ],
      ),
    );
  }

  Widget _detailsContainer() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 5.0, left: 8.0, right: 8.0),
          child: Row(
            children: <Widget> [
              SizedBox(height: 5,),
              FadeAnimation(1, Text('',),),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.linkedin),
                onPressed: () {
                  print("Pressed");
                },
              ),
//              SizedBox(height: 10,),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.github),
                onPressed: () {
                  print("Pressed");
                },
              ),

              IconButton(
                icon: FaIcon(FontAwesomeIcons.instagram),
                onPressed: () {
                  print("Pressed");
                },
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.facebook),
                onPressed: () {
                  print("Pressed");
                },
              ),
            ],
          ),
        ),
//        Padding(
//          padding: EdgeInsets.only(left: 50.0),
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.end,
//            children: <Widget>[
//              SizedBox(height: 30,),
//              FadeAnimation(1, Text('',)),
//            ],
//          ),
//        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 8.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(child: Icon(
                    FontAwesomeIcons.phone, color: Colors.deepOrange, size: 15.0,)),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(child: Text('+91 9892938847', style: TextStyle(
                      color: Color(0xffff520d),
                      fontSize: 15.0,
                    ),),),
                  ),
                ],)
          ),
        ),
        SizedBox(height: 5.0),
        Padding(
          padding: const EdgeInsets.only(left: 20.0,),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(child: Icon(
                    FontAwesomeIcons.mapMarkerAlt, color: Color(0xffff520d), size: 15.0,)),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(child: Text('NewYork', style: TextStyle(
                      color: Color(0xffff520d),
                      fontSize: 15.0,
                    ),),),
                  ),
                ],)
          ),
        ),
        SizedBox(height: 5.0),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 8.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(child: Icon(
                    FontAwesomeIcons.envelope, color: Color(0xffff520d), size: 15.0,)),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      child: Text('meghanv@gmail.com', style: TextStyle(
                        color: Color(0xffff520d),
                        fontSize: 15.0,
                      ),),),
                  ),
                ],)
          ),
        ),
      ],);
  }


  Widget _socialdetailsContainer() {
    return Column(
      children: <Widget>[
        SizedBox(width: 10.0,),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
          child: Container(
              child: Row(
                children: <Widget>[
                  Container(child: Icon(
                    FontAwesomeIcons.twitter, color: Colors.white,
                    size: 20.0,)),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      child: Text('/meghanv', style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),),),
                  ),
                ],)
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
          child: Container(
              child: Row(children: <Widget>[
                Container(child: Icon(
                  FontAwesomeIcons.github, color: Colors.white,
                  size: 15.0,)),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    child: Text('/meghanvisser', style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,),),),
                ),
              ],)
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
          child: Container(
              child: Row(children: <Widget>[
                Container(child: Icon(
                  FontAwesomeIcons.linkedin, color: Colors.white,
                  size: 15.0,)),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    child: Text('/meghanviss', style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),),),
                ),
              ],)
          ),),

        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
          child: Container(
              child: Row(
                children: <Widget>[
                Container(
                    child: Icon(
                  FontAwesomeIcons.facebook, color: Colors.white,
                  size: 15.0,)),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    child: Text('/meghanvisser', style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),),),
                ),
              ],)
          ),),

      ],);
  }
}


