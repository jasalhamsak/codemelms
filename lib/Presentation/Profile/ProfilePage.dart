import 'package:codemeapp/Presentation/Profile/Components/Components.dart';
import 'package:codemeapp/component7.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  heading(data){
    return Text(data,style: TextStyle(fontWeight: FontWeight.w700,fontSize:12,color: Color(0xff5B5B5B) ),);
  }
  subheading(data){
    return Text(data,style: TextStyle(fontWeight: FontWeight.w400,fontSize:10,color: Color(0xff5B5B5B) ),);
  }
  bodyContent(data){
    return Text(data,style: TextStyle(fontWeight: FontWeight.w300,fontSize:9,color: Color(0xff5B5B5B) ),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f1f1),
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Icon(Icons.draw,size: 30,)),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/lms3.png"),
                ),

                Text("AMELIYA",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                Text("101010",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
              ],
            ),
          ),
          Container(
            width: 316,
            height: 280,
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Row(
              children: [SizedBox(height: 280,width: 8,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   heading("Personal Information"),
                    subheading("Date Of Birth"),
                    bodyContent("09/02/2003"),
                    Line(),
                    subheading("Genter"),
                    bodyContent("Female"),
                    Line(),
                    subheading("Email Adress"),
                    bodyContent("mariya@gmail.com"),
                    Line(),
                    subheading("Phone Number"),
                    bodyContent("7034349508"),
                    Line(),
                    subheading("Place"),
                    bodyContent("Kodagu")


                  ],
                ),
              ],
            ),
            )
        ],
      ),
    );
  }
}
