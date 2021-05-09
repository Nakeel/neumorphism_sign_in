import 'package:flutter/material.dart';
import 'package:neumorphism_sign_in/screens/home/home_main_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text(
              'Welcome',
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
            ),
          Text(
            'Sign in',
            style: TextStyle(fontSize: 38,fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 40,),
          Text(
            'Email',
            style: TextStyle(fontSize: 16,),
          ),

          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0xffeff3f6),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  offset: Offset(6,2),
                  blurRadius: 6.0,
                  spreadRadius: 3.0

                ),
                BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 0.9),
                    offset: Offset(-6,-2),
                    blurRadius: 6.0,
                    spreadRadius: 3.0

                )
              ]
            ),
            
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'username@example.com',
                  border: InputBorder.none
                ),
              ),
            ),
          ),

          SizedBox(height: 30,),
          Text(
            'Password',
            style: TextStyle(fontSize: 16,),
          ),

          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xffeff3f6),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(6,2),
                      blurRadius: 6.0,
                      spreadRadius: 3.0

                  ),
                  BoxShadow(
                      color: Color.fromRGBO(255, 255, 255, 0.9),
                      offset: Offset(-6,-2),
                      blurRadius: 6.0,
                      spreadRadius: 3.0

                  )
                ]
            ),

            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: '*********',
                    border: InputBorder.none
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Text(
            'Forgot your password ?',
          ),
          SizedBox(height: 30,),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, HomeMainScreen.tag);
            },
            child: Container(
              width: MediaQuery.of(context).size.width *0.8,
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xffff27b0),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffff27b0),
                        offset: Offset(6,2),
                        blurRadius: 1.0,
                        spreadRadius: 2.0

                    ),

                  ]
              ),

              child:  Center(
                child: Text('Log in', style: TextStyle(
                    color: Colors.white,
                  fontSize: 16,
                  ),
                ),
              ),
            ),
          ),



        ],
      ),
    );
  }
}
