import 'package:codemeapp/Presentation/chats/ChatPage.dart';
import 'package:flutter/material.dart';


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



class send extends StatelessWidget {
  const send({super.key, required this.sent});

  final String sent;

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: EdgeInsets.all(10),
        width: 250,
        height: 80,
        decoration: BoxDecoration(
            color: Color(0xff211F53),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),bottomLeft: Radius.circular(30))
        ),
        child: Center(child: Text(sent,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 9,color: Colors.white),)),
      ),
    );
  }
}

class recive extends StatelessWidget {
  const recive({super.key, required this.recived});

  final String recived;

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.all(10),
        width: 250,
        height: 80,
        decoration: BoxDecoration(
            color: Color(0xffCECCFF),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),bottomRight: Radius.circular(30))
        ),
        child: Center(child: Text(recived,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 9,color: Colors.black),)),
      ),
    );
  }
}


