import "package:flutter/material.dart";



class ResponsiveLayout  extends StatelessWidget {
  final Widget mobileBody ; 
  final Widget desktopApp;
  
  const ResponsiveLayout  ({ required this.mobileBody , required this.desktopApp});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context , Constraints){
          if(Constraints.maxWidth < 600){
              return mobileBody;
          }else{
              return desktopApp;
          }
        }
      );
  }
} 