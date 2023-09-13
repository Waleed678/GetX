import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/HomeScreen1.dart';

class GetxNavigator extends StatefulWidget {
  const GetxNavigator({super.key});

  @override
  State<GetxNavigator> createState() => _GetxNavigatorState();
}

class _GetxNavigatorState extends State<GetxNavigator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Getx Navigator'),centerTitle: true,),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        
          children: [
            TextButton(onPressed: (){
              Get.to(HomeScreen1(name: 'Asif taj',));
            }, child: Text('Go to next screen'))
          ],
        ),
      ),
    );
  }
}