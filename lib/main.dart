import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static const backgroundColor = Color(0xFF35561F);
  static const iconColor = Color(0xFF589351);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Bottom Navigation"),),
      bottomNavigationBar:Container(height: 70,color: Colors.black,
          child:Padding(padding: EdgeInsets.symmetric(horizontal: 10),child: GNav(
              rippleColor: backgroundColor, // tab button ripple color when pressed
              hoverColor: backgroundColor, // tab button hover color
              haptic: true, // haptic feedback
              tabBorderRadius: 5,
              tabActiveBorder: Border.all(color: backgroundColor, width: 0.1), // tab button border
              tabBorder: Border.all(color: backgroundColor, width: 0.1), // tab button border
              //tabShadow: [BoxShadow(color: backgroundColor, blurRadius: 2)], // tab button shadow
              curve: Curves.easeOutExpo, // tab animation curves
              duration: Duration(milliseconds: 500), // tab animation duration
              gap: 5, // the tab button gap between icon and text
              color: iconColor, // unselected icon color
              activeColor: iconColor, // selected icon and text color
              iconSize: 24, // tab button icon size
              tabBackgroundColor: Colors.purple.withOpacity(0.1), // selected tab background color
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10), // navigation bar padding
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.logout,
                  text: 'Likes',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                )
              ]
          ),)
      )
    );
  }
}
