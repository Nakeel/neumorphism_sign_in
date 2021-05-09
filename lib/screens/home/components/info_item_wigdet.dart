import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoItemWidget extends StatelessWidget {
  final String itemTitle;
  final String itemDesc;
  final IconData itemIcon;


  const InfoItemWidget({

    Key key, this.itemTitle, this.itemDesc, this.itemIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xffe6ebf2),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  offset: Offset(-3,-3),
                  blurRadius: 5.0,
                  color: Colors.white.withOpacity(0.7)
              ),
              BoxShadow(
                  offset: Offset(3,3),
                  blurRadius: 5.0,
                  color: Colors.black.withOpacity(0.15)
              ),
            ]
        ),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Color(0xffe6ebf2),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(.7),
                            blurRadius: 3.0,
                            offset: Offset(-3,-3)
                        ),

                        BoxShadow(
                            color: Colors.black.withOpacity(.3),
                            blurRadius: 3.0,
                            offset: Offset(3,3)
                        ),
                      ]
                  ),
                  child: Icon(
                    itemIcon,
                    size: 30,
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    itemTitle,
                    style: GoogleFonts.lato(
                        fontSize: 15,
                        color: Colors.black.withOpacity(.6)
                    ),
                  ),
                  Text(
                    itemDesc,
                    style: GoogleFonts.lato(
                        fontSize: 18,
                        color: Colors.black.withOpacity(.6)
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
