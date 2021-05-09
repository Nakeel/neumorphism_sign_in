import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import 'icon_button_widget.dart';
import 'info_item_wigdet.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();

}

class _BodyState extends State<Body> {
  List<IconData> _iconList = [
    Icons.wifi,
    Icons.lightbulb,
    Icons.moped_rounded,
    Icons.deck_outlined,
  ];

  int selectedIcon = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          width: double.infinity,
        decoration:
        BoxDecoration(color: Color(0xffe6ebf2), boxShadow: [
          BoxShadow(
              offset: const Offset(-2.5, 3.0),
              blurRadius: 1.5,
              spreadRadius: 1.5,
              color: Colors.black.withOpacity(0.1),
            )
          ]
        ),
        child:
          Text(
            'myHome',
            style: GoogleFonts.lato(
              fontSize: 25,
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: _iconList
        .asMap()
        .entries
        .map(
    (e) => IconButtonWidget(
          height: 55,
          width: 55,
          blackOffset: Offset(-2,-2),
          whiteOffset: Offset(2,2),
          iconData: _iconList[e.key],
          iconSize: 30,
          blurLevel: 5.0,
          isPressed: selectedIcon == e.key,
          buttonPressed: (){
            setState(() {
              selectedIcon = e.key;
            });
    },
          color: Color(0xffe6ebf2),
        ),
    )
        .toList(),

          ),
        ),

        SizedBox(height: 30,),
        Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color(0xffe6ebf2),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                offset: Offset(-3,-3),
                color: Colors.white.withOpacity(.7),
                blurRadius: 3.0
              ),

              BoxShadow(
                  offset: Offset(3,3),
                  color: Colors.black.withOpacity(.25),
                  blurRadius: 3.0
              )
            ]
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffe6ebf2),
              ),
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffe6ebf2),
                    boxShadow:[
                      BoxShadow(
                        offset: Offset(2,2),
                        color: Colors.white.withOpacity(.7),
                        blurRadius: 2.0
                      ),
                      BoxShadow(
                          offset: Offset(-2,-2),
                          color: Colors.black.withOpacity(.3),
                          blurRadius: 3.0
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Padding(
                      padding:  EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffcde7f1),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(-2,-2),
                              color: Colors.black.withOpacity(.3),
                              blurRadius: 2.0
                            ),
                            BoxShadow(
                                offset: Offset(2,-1),
                                color: Colors.white.withOpacity(.7),
                                blurRadius: 2.0
                            ),
                          ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Temperature',
                              style: GoogleFonts.lato(
                                fontSize: 18,
                                color: Colors.black.withOpacity(.8),

                              ),
                            ),
                            SizedBox(height: 10.0,),

                            Text(
                              '20',
                              style: GoogleFonts.adamina (
                                fontSize: 18,
                                color: Colors.black.withOpacity(.8),
                                fontWeight: FontWeight.bold

                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ),
          ),
        ),
        SizedBox(height: 30,),
        InfoItemWidget(itemIcon: FontAwesome.leaf,itemDesc: 'Humidity',itemTitle: '65%',),
        InfoItemWidget(itemIcon: FontAwesome.wifi,itemDesc: 'Speed',itemTitle: '254mbps',)


      ],
    );
  }
}

