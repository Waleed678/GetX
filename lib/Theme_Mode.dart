import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Theme_Mode extends StatefulWidget {
  const Theme_Mode({super.key});

  @override
  State<Theme_Mode> createState() => _Theme_ModeState();
}

class _Theme_ModeState extends State<Theme_Mode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Getx'),centerTitle: true,),
      body: Column(
        children: [
           Card(
             child: ListTile(
              title: Text('Getx Dialog Alert'),
              subtitle: Text('Getx dialog alert with getx'),
              onTap: (){
                Get.defaultDialog(
                  title: 'Delete Chat',
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                  middleText: 'Are you sure you want to delete this chat?',
                  confirm: TextButton(onPressed: (){
                    Get.back();
                  }, child: Text('ok')),
                  cancel: TextButton(onPressed: (){}, child: Text('cancel'))
                );
              },
             ),
           ),

       Card(
             child: ListTile(
              title: Text('Getx bottom sheet'),
              subtitle: Text('Getx dialog alert with getx'),
              onTap: (){
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('Light Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        
                         ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark Theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                        ),
                       
                      ],
                    ),
                  )
                );
              },
             ),
           ),

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar('Waleed Asghar' , 'Wellcome to Waleed Code');
       
        
      }),
    );
  }
}