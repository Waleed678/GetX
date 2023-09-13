import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/counter_controller.dart';

class StateManagement extends StatefulWidget {
  const StateManagement({super.key});

  @override
  State<StateManagement> createState() => _StateManagementState();
}

class _StateManagementState extends State<StateManagement> {

  final CounterController controller = Get.put(CounterController());
  int x = 0 ; 
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('State Management'),),
      body: 
          Center(
            child: Obx((){
              print('rebuild');
              return Text(controller.counter.toString() , style: TextStyle(fontSize: 60),);
            })
          ),
        
       
     floatingActionButton: FloatingActionButton(onPressed: (){
       controller.incrementCounter();
     }),
    );
  }
}