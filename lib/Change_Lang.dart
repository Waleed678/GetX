import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLang extends StatefulWidget {
  const ChangeLang({super.key});

  @override
  State<ChangeLang> createState() => _ChangeLangState();
}

class _ChangeLangState extends State<ChangeLang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Change Language'),centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('en', 'Us'));
              }, child: Text('English')),
              
              SizedBox(width:20 ,),

              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('ur', 'Pk'));
              }, child: Text('Urdu'))
            ],
          )
        ],
      ),
    );
  }
}