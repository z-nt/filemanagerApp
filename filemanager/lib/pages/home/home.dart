import 'package:filemanager/pages/home/styles/style.dart';
import 'package:filemanager/pages/home/widgets/homewidgets.dart';
import 'package:flutter/material.dart';


class HOMEPAGE extends StatelessWidget{
  const HOMEPAGE ({super.key});
  @override
  Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.all(0.0),
              child: const Text(
                "Good morning \nKian", 
                style: titleSyle,
              ),
            ),
            actions: [
              IconButton(
                onPressed:(){
                  showSearch(
                    context: context, 
                    delegate: CustomSearchDelegate()
                    );
                },
                 icon: const Icon(Icons.search),
                 ), 
            ],
          ),
          body: Column(
            children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomPercentProggress(),
                  ),  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:164,
                      decoration: BoxDecoration(),
                      child: CustomCategory(),
                    ),
                  ) , 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 164,
                      decoration: BoxDecoration(),
                      child: CustomRecentWidgets(),
                    ),
                  ), 

                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.white, 
                       
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12), 
                          bottomRight: Radius.circular(12)
                        )
                      ),
                      child: BottomNavigationBar(
                       
                        items:const <BottomNavigationBarItem>[
                          BottomNavigationBarItem(
                            icon: Icon(Icons.home),
                            label: "Home"
                          ), 
                          BottomNavigationBarItem(
                            icon: Icon(Icons.file_copy),
                            label: "Files"
                            ), 
                          BottomNavigationBarItem(
                            icon: Icon(Icons.cloud), 
                            label: "Cloud"
                            ), 
                    ],
                  ),
                ),
              ), 
            ],
          ),
        ),
      );
  }
}