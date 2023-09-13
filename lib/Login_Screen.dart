import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/Login_Controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

 LoginController controller = Get.put(LoginController());

@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Screen'),centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: controller.emailControler.value,
            decoration: InputDecoration(
              hintText: 'Email'
            ),
          ),
            TextFormField(
            controller: controller.passwordController.value,
            decoration: InputDecoration(
              hintText: 'Password'
            ),
          ),
          SizedBox(height: 50,),
          Obx((){
            return  InkWell(
            onTap: (){
              controller.loginApi();
            },
            child: controller.loading.value ? CircularProgressIndicator() :  Container(
              height: 45,
              color: Colors.grey,
              child: Center(
                child: Text('Login'),
              ),
            ),
          );
          })
        ],
      ),
    );
  }
}