import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final Color color;
  final double blurLevel;
  final Offset blackOffset;
  final Offset whiteOffset;
  final double height;
  final double width;
  final IconData iconData;
  final double iconSize;
  final bool isPressed;
  final Function buttonPressed;

  const IconButtonWidget({Key key, this.color, this.blurLevel, this.blackOffset, this.whiteOffset, this.height, this.width, this.iconData, this.iconSize, this.isPressed, this.buttonPressed}) : super(key: key);





  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: buttonPressed,
        child: isPressed ? Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(.15),
                offset: Offset(3,3),
                blurRadius: blurLevel,
              ),
              BoxShadow(
                color: Colors.white.withOpacity(.7),
                offset: Offset(-3,-3),
                blurRadius:  blurLevel,
              ),
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              decoration: BoxDecoration(
                color:  color,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    color:  color,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        offset:  blackOffset,
                        blurRadius:  blurLevel,
                        color: Colors.black.withOpacity(.25)
                      ),
                      BoxShadow(
                          offset:  whiteOffset,
                          blurRadius:  blurLevel,
                          color: Colors.white.withOpacity(.7)
                      ),
                    ]
                  ),
                  child: Icon( iconData,
                  size:  iconSize,
                  color: Colors.blue,),
                ),
              ),
            ),
          ),
        ):  Container(
        height:  height,
        width:  width,
        decoration: BoxDecoration(
          color: Color(0xffe6ebf2),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.15),
                offset: Offset(3,3),
                blurRadius:  blurLevel,
              ),
              BoxShadow(
                color: Colors.white.withOpacity(.7),
                offset: Offset(-3,-3),
                blurRadius:  blurLevel,
              ),
            ]
        ),
        child: Icon(
           iconData,
          size: 30,
          color: Colors.black.withOpacity(0.5),
        )
    // )
    ),
      );
  }
}
