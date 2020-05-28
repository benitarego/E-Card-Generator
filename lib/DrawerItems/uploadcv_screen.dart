import 'package:eazzycard/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:eazzycard/main.dart';
import 'package:eazzycard/app_theme.dart';
import 'package:eazzycard/DrawerItems/uploadcv_screen.dart';

class UploadCVScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => new Home(),
//        '/drawer': (BuildContext context) => new NavigatorDrawer(),
//        '/payment': (BuildContext context) => new PaymentScreen(),
//        '/layouts': (BuildContext context) => new LayoutsScreen(),
//        '/uploadcv': (BuildContext context) => new UploadCVScreen(),
      },
      home: new UploadCVScreenPage(),
    );
  }
}

class UploadCVScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UploadCVScreenState();
  }
}
class UploadCVScreenState extends State<UploadCVScreen> {
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
                            onPressed: () =>
                                _scaffoldKey.currentState.openDrawer(),
                          ),),
                          SizedBox(width: 10.0),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0, left: 15.0),
                            child: FadeAnimation(1.3, Text("Upload your CV",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 25),)),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
//            SizedBox(height: 10),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))
                  ),
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 40.0, left: 10.0, right: 10.0),
                            child: Center(
                              child: Container(
                                width: 400.0,
                                height: 230.0,
                                child: Card(
                                  color: Colors.white,
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(height:180.0,
//                                      child: ,
                                      ),
                                    ],
                                  ),
                                ),
//                                child: FlipCard(
//                                  direction: FlipDirection.HORIZONTAL,
//                                  // default
//                                  front: Material(
//                                    color: Colors.white.withOpacity(0.9),
//                                    borderRadius: BorderRadius.circular(24.0),
//                                    shadowColor: Color(0x00080).withOpacity(
//                                        0.2),
////                                    child: _nameDetailsContainer(),
//                                  ),
//                                ),
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
}


