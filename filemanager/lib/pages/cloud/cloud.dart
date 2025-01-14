import 'package:flutter/material.dart';
import "package:go_router/go_router.dart";


void perimishon (){

}



class Cloud extends StatelessWidget{
  
  const Cloud ({super.key});
  
  @override

  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child:
            Container(
                        height: 64,
                        decoration: BoxDecoration(
                          color: Colors.white, 
                         
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12), 
                            bottomRight: Radius.circular(12)
                          )
                        ),
                        child: BottomNavigationBar(
                          items:<BottomNavigationBarItem>[
                            BottomNavigationBarItem(
                              icon: Icon(Icons.home),
                              label: "Home"
                            ), 
                            BottomNavigationBarItem(
                              icon: Icon(Icons.file_copy),
                              label: "Files", 
                            ), 
                          
                            BottomNavigationBarItem(
                              icon: Icon(Icons.cloud), 
                              label: "Cloud"
                              ), 
                      ],
                      onTap:(i){
                        if(i == 0) {
                          context.go("/home");
                        }
                        if(i == 1) {
                          context.go("/files");
                        }
                        if(i == 2) {
                          context.go("/cloud");
                        }
                      } ,
                    ),
                  ),
        ),
      );
  }
}