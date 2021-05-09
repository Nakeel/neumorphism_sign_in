import 'package:flutter/material.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';
import 'package:neumorphism_sign_in/screens/home/home_main_screen.dart';
import 'package:neumorphism_sign_in/screens/login/login_main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  PageTransitionType pageTransitionType = PageTransitionType.rippleLeftDown;
  var duration = 1000;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Neumorphism UI',
    theme: ThemeData(
    primaryColor: Color(0xffeff3f6),
    scaffoldBackgroundColor: Color(0xffeff3f6),),
    initialRoute: LoginMainScreen.tag,
    onGenerateRoute: (RouteSettings routeSettings) {
    return new PageRouteBuilder<dynamic>(
    settings: routeSettings,
    pageBuilder: (BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation) {
    switch (routeSettings.name) {

    case LoginMainScreen.tag:
    duration = 1000;
    pageTransitionType = PageTransitionType.rippleLeftDown;
    return LoginMainScreen();

    case HomeMainScreen.tag:
    duration = 1000;
    pageTransitionType = PageTransitionType.rippleLeftDown;
    return HomeMainScreen();




    default:
    return null;
    }
    },
    transitionDuration: Duration(milliseconds: duration),
    transitionsBuilder: (BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child) {
    return effectMap[pageTransitionType](
    Curves.linear, animation, secondaryAnimation, child);
    });
    });





    //   MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     title: 'Campus Mart',
    //     theme: ThemeData(
    //         primaryColor: Color(0xffeff3f6),
    //         scaffoldBackgroundColor: Color(0xffeff3f6)),
    //     home: LoginMainScreen(),
    //
    // );
  }
}

