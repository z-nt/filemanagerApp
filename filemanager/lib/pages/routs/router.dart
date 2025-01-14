
import "package:filemanager/pages/cloud/cloud.dart";
import "package:filemanager/pages/testPage/testpage.dart";
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import "package:filemanager/pages/home/home.dart";
import "package:filemanager/pages/files/files.dart";
import "package:filemanager/pages/onloading/onloading.dart";


final GoRouter router = GoRouter(
    initialLocation: "/testPage",
  routes: <RouteBase>[
    GoRoute(
      path: "/home",
      name: "home",
      builder: (BuildContext context ,  state ){
        return const HOMEPAGE();
      }
    ) , 
    GoRoute(
      path: "/files",
      name: "files",
      builder: (BuildContext context ,  state ){
        return const Files();
      }
    ) , 
    GoRoute(
      path: "/onloading",
      name: "onloading",
      builder: (BuildContext context ,  state ){
        return const ONLOADING();
      }
    ) , 
    GoRoute(
      path: "/cloud",
      name: "cloud",
      builder: (BuildContext context ,  state ){
        return const Cloud();
      }
    ) , 
    GoRoute(
      path: "/testPage",
      name: "testPage",
      builder: (BuildContext context ,  state ){
        return const Testpage();
      }
    ) , 
  ]
);