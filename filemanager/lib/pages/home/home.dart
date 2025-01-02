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
            title: const Text(
              "Good morning \nRendy", 
              style: titleSyle,
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
                      height: 144,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1 , 
                          color: Colors.red
                        )
                      ),
                    ),
                  ) , 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 118,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1 , 
                          color: Colors.red
                        )
                      ),
                    ),
                  ) , 
        
            ],
          ),
        ),
      );
  }
}