import 'package:filemanager/pages/responsive/desktop_body.dart';
import 'package:filemanager/pages/responsive/mobil_body.dart';
import 'package:filemanager/pages/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';


class ONLOADING extends StatelessWidget{
  const ONLOADING ({super.key});
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          body: ResponsiveLayout(
            mobileBody: MobilBody(),
            desktopApp: DesktopBody(),
            ),

    );
  }
}