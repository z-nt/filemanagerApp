import 'package:filemanager/pages/home/responsive/desktop_body.dart';
import 'package:filemanager/pages/home/responsive/mobile_body.dart';
import 'package:filemanager/pages/home/responsive/responsive_layout.dart';

import 'package:flutter/material.dart';


class HOMEPAGE extends StatelessWidget{
  const HOMEPAGE ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        desktopBody:DesktopBody() ,
        mobileBody: MobileBody(),
        ),
    );
  }
}