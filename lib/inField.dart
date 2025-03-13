import 'package:codemeapp/ChatPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Infield extends StatelessWidget {
  const Infield({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      width: 300,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText, // Placeholder text
          hintStyle: TextStyle(color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          border: InputBorder.none, // Removes default border
        ),
      ),
    );
  }
}

class ChatsContainer extends StatelessWidget {
  ChatsContainer({super.key});

  final List<Map<String,dynamic>> data=[
    {"name":"Biran","imeg":"assets/chat1.png"},
    {"name":"jhon","imeg":"assets/chat2.png"},
    {"name":"yara","imeg":"assets/chat1.png"},
    {"name":"youron","imeg":"assets/chat1.png"},
    {"name":"devops","imeg":"assets/chat1.png"},
    {"name":"james","imeg":"assets/chat1.png"},
  ];


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder:(context, index) {
          final details=data[index];
          return InkWell(
            onTap: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (context) => personalChat(),));
            },
            child: Container(
              margin: EdgeInsets.all(3),
              width: 300,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(details["imeg"]),
                  ),SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(details["name"],style: TextStyle(fontWeight: FontWeight.w900,color: Colors.grey,),),
                      Text("Developer",style: TextStyle(color: Colors.grey,fontSize: 9)),
                      Text("Type All New Messages",style: TextStyle(fontSize: 10),),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


