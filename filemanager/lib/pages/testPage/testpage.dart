import 'package:flutter/material.dart';
import 'package:open_file_manager/open_file_manager.dart';
import 'dart:io';



class Testpage extends StatefulWidget {
  const Testpage({super.key});

  @override
  State<Testpage> createState() => _MyAppState();
}

class _MyAppState extends State<Testpage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [





          ]
        ),
      ),
    );
  }
}