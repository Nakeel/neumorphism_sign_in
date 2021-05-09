import 'package:flutter/material.dart';

import 'components/body.dart';

class HomeMainScreen extends StatelessWidget {

  static const String tag = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6ebf2),
      body: SafeArea(child: Body()),

    );
  }
}
