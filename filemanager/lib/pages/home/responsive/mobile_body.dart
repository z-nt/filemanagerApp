import "package:flutter/material.dart"; 
import "package:filemanager/pages/home/styles/style.dart";
import "package:filemanager/pages/home/widgets/homewidgets.dart";
import "package:go_router/go_router.dart";


class MobileBody extends StatelessWidget {
  const MobileBody({super.key});
  @override
  Widget build(BuildContext context) {
      
   return Container(
      constraints: BoxConstraints(
        minWidth: 375
      ),
     child: Scaffold(
      backgroundColor: Color.fromARGB(251, 251, 251, 251),
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
                    Container(
                        decoration: BoxDecoration(),
                        child:  CustomPercentProggress(),
                      ),
                    Container(
                        height:164,
                        decoration: BoxDecoration(),
                        child: CustomCategory(),
                      ),
                
                   Container(
                        height: 164,
                        decoration: BoxDecoration(
                         
                        ),
                        child: CustomRecentWidgets(),
                      ),
     
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
              ],
        ),
      ),
     ),
   ); 
  }
}