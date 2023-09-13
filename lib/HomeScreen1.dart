import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/HomeScreen2.dart';

class HomeScreen1 extends StatefulWidget {

  final String name ;

  const HomeScreen1({Key? key, this.name = ''});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screenone ' + widget.name )),
     body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        
          children: [
            TextButton(onPressed: (){
              Get.to(HomeScreen2());
            }, child: Text('Go to Screen2'))
          ],
        ),
      ),
    );
  }
}