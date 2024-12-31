import 'package:flutter/material.dart';
import "package:filemanager/pages/onloading/styles/style.dart";


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
                          color:  Color.fromARGB(0, 0, 0, 0),
                        ),
                          child: Column(
                            children:<Widget>[
                              SizedBox(
                                width: 248,
                                height: 84,
                                child: Text(
                                  "Manage your files\nin a simple way" , 
                                  style: textStyleOne,
                                  textAlign: TextAlign.center,
                                ),
                              ) ,

                              SizedBox(
                                width: 315,
                                height: 48,
                                child: Text(
                                  "You could integrate your local files with\n the files in cloud storage" , 
                                  style: textStyleTow,
                                  textAlign: TextAlign.center,
                                ),
                              ) , 
                            ],
                          ),
                      ),
              
                      Container( 
                        width: 122,
                        height: 122,
                        decoration: BoxDecoration( 
                            color:  Color.fromARGB(0, 0, 0, 0),
                        ),
                          child: ClipOval(
                            child: Material(
                              color:  Color.fromARGB(255, 173, 54, 209), 
                                  child: InkWell(
                                    splashColor: Color.fromARGB(255, 199, 45, 178), 
                                    onTap: (){},
                                    child: SizedBox(
                                      width: 100,
                                      height: 100,
                                      child: Icon(
                                        Icons.arrow_right_alt_outlined,
                                         color: Colors.white,
                                         size: 56,
                                         ),
                                     ),
                                  ),
                            ),
                          ),
                      )
              ],
            ),
        ),
      )
    );
  }
}