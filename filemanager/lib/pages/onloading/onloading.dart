import 'dart:ui';

import 'package:flutter/material.dart';


class ONLOADING extends StatelessWidget{
  
  const ONLOADING ({super.key});
  
  @override

  Widget build(BuildContext context) {
      return Scaffold(

        body: Center(
          child:Container(
            width:375,
            height: 812, 
            decoration: BoxDecoration( 
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft , 
                colors:[
                  const Color.fromARGB(255, 97, 3, 248), 
                  const Color.fromARGB(255, 50, 4, 136), 
                ]
              ),
              border: Border.all(
              width: 1 , 
              color: Colors.red, 
            ), 
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ), 
          ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[
                      Container(
                        width: 210,
                        height: 200,
                        decoration: BoxDecoration( 
                          color:  Color.fromARGB(0, 0, 0, 0), 
                        ),
                        child: Stack(
                          children:<Widget>[

                            Positioned(
                              top: 40,
                              left: 40, 
                              child: SizedBox(
                               child: Image.asset(
                                "assets/Document.png",
                                fit: BoxFit.cover,
                                height: 60, 
                                width: 60,
                              ),
                           ), 
                          ), 

                            Positioned(
                              top: 4,
                              right: 30, 
                              child: SizedBox(
                               child: Image.asset(
                                "assets/Music.png",
                                fit: BoxFit.cover,
                                height: 60, 
                                width: 60,
                              ),
                           ), 
                          ), 

                            Positioned(
                              top: 80,
                              right: 30, 
                              child: SizedBox(
                               child: Image.asset(
                                "assets/Picture.png",
                                fit: BoxFit.cover,
                                height: 60, 
                                width: 60,
                              ),
                           ), 
                          ), 
                           
                            Positioned(
                              top: 120,
                              left: 30, 
                              child: SizedBox(
                               child: Image.asset(
                                "assets/Vector.png",
                                fit: BoxFit.cover,
                                height: 60, 
                                width: 60,
                              ),
                           ), 
                          ), 
                           
                           
                           





                          ],
                        ),
                      ),

                      Container( 
                        width: 209,
                        height: 192,
                        decoration: BoxDecoration( 
                          color:  Color.fromARGB(0, 0, 0, 0),
                        ),
                        child: Image.asset(
                                "assets/logo.png",
                                fit: BoxFit.cover,
                                height: 192, 
                                width: 208,
                              ),



                      ),
                      
                      Container( 
                        width: 315,
                        height: 148,
                        decoration: BoxDecoration( 
                          border: Border.all(
                            width: 1 , 
                            color: Colors.red
                          )
                        ),
                      ),
              
                      Container( 
                        width: 122,
                        height: 122,
                        decoration: BoxDecoration( 
                          border: Border.all(
                            width: 1 , 
                            color: Colors.red
                          )
                        ),
                      )



              ],
            ),





        ),
      )
















    );
  }
}