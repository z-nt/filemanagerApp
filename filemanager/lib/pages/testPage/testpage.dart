// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';

// import 'package:permission_handler/permission_handler.dart';



// class Testpage extends StatefulWidget {
//   const Testpage({super.key});

//   @override
//   State<Testpage> createState() => _MyAppState();
// }

// class _MyAppState extends State<Testpage> {

//  String image = " ";
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Plugin example app'),
//         ),
//         body: Column(
//           children: [
//             SizedBox(height: 59,), 
//             image.isEmpty?Container():Image.file(File(image)), 
            
//             ElevatedButton(
//               onPressed:()async{
//                 var status = Permission.storage.request();
//                 var image = await ImagePicker().pickImage(source: ImageSource.gallery);
//                   if(image!=null){
//                     setState(() {
//                     this.image=image.path;
//                     });
//                   }
//               },
//               child: Text("select image"),
//               ),

//             ElevatedButton(
//               onPressed:()async{
//                    var status = Permission.storage.request(); 
//                    if (status==PermissionStatus.granted ){
//                    //read file
//                 var read = await File(image).readAsBytes(); 
//                 // create file 
//                   var newfile = await File("path to file ").create(recursive: true);
//                   //write file  
//                await   newfile.writeAsBytes(read);
//                    }
              
//               },
//               child: Text("create file ab wraite that file "),
//               ),
//           ]
//         ),
//       ),
//     );
//   }
// }