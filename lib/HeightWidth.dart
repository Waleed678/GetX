import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HightWidth extends StatefulWidget {
  const HightWidth({super.key});

  @override
  State<HightWidth> createState() => _HightWidthState();
}

class _HightWidthState extends State<HightWidth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hight Width'),),
      body: Container(
        height: MediaQuery.of(context).size.height * .2,
        width: Get.width * .6,
        color: Colors.red,
        child: Center(
          child: Text('Center'),
        ),
      ),
    );
  }
}