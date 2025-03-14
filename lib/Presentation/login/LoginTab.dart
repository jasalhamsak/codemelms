import 'package:codemeapp/Presentation/MainBody/MainApp.dart';
import 'package:codemeapp/Presentation/Register/RegisterTab.dart';
import 'package:codemeapp/Presentation/login/Components/Components.dart';
import 'package:flutter/material.dart';

class Logintab extends StatelessWidget {
  const Logintab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.white,
            Color(0xffc0dcec)
          ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(15, 15),bottomRight: Radius.elliptical(15, 15)),
                          color: Color(0xff1B1645)
                      ),
                      child:
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 150),
                            child: Image(
                                image: AssetImage('assets/codeme.png')
                            ),
                          ),
                        ],
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 120,top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome Back",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
                        Text("Please enter the detail below to continue",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,height: 2),)
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Infield(hintText: "Username"),
                  Stack(
                      children: [Infield(hintText: "Password"),
                        Padding(
                          padding: const EdgeInsets.only(left:260,top: 10),
                          child: Icon(Icons.remove_red_eye_outlined,color: Colors.grey,),
                        )
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(left: 150.0),
                    child: TextButton(onPressed: (){}, child: Text("Recovery Password ?",style: TextStyle(color: Colors.black),)),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Mainapp(),));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 30),
                      width: 300,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff0E0D22)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Center(child:
                        Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Or Continue With",style: TextStyle(color: Colors.black),),
                    ],
                  ),
              SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 84,
                      height: 60,
                      decoration: BoxDecoration(
                        border:Border.all(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Image(image: AssetImage("assets/google 1.png"))
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 84,
                      height: 60,
                      decoration: BoxDecoration(
                          border:Border.all(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Icon(Icons.apple,color: Colors.black,size: 55,),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 84,
                      height: 60,
                      decoration: BoxDecoration(
                        border:Border.all(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Icon(Icons.facebook,size: 55,color: Colors.blueAccent,),
                    ),
                  ),
                ],
              ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 100),
                      Text("Not a Member?"),
                      TextButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => code2(),));
                      }, child: Text("Register Now",style: TextStyle(color: Color(0xff0099EF)),))
                    ],
                  )
                ]),
          )
      ),
    );
  }
}
