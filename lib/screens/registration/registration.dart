import 'package:cadevo/constants/controllers.dart';
import 'package:cadevo/helpers/style.dart';
import 'package:cadevo/screens/home/home.dart';
import 'package:cadevo/screens/login/login.dart';
import 'package:cadevo/widgets/custom_button.dart';
import 'package:cadevo/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationScreen extends StatelessWidget {

Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(24),
          child: ListView(
            children: [
              SizedBox(height: _width / 8,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset("assets/icons/logo.png"),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text("Register",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CustomText(
                    text: "Hello there!",
                    color: lightGrey,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
                 TextField(
                   controller: authController.name,
                decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Santos Enoque",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: authController.email,
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "abc@domain.com",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: authController.password,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "123",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
               SizedBox(
                height: 15,
              ),
            
                SizedBox(
                height: 15,
              ),
              CustomButton(
                onTap: (){
                                   authController.signUp();
                },
                title: "Register",
              ),

               SizedBox(
                height: 15,
              ),

              GestureDetector(
                onTap: (){
                  Get.back();
                },
                child: RichText(text: TextSpan(
                  children: [
                    TextSpan(text: "Already have an account? ", style: TextStyle(color: Colors.black)),
                    TextSpan(text: "Log in! ", style: TextStyle(color: active))
                  ]
                )),
              )

            ],
          ),
        ),
    );
  }
}