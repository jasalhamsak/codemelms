import 'package:codemeapp/inField.dart';
import 'package:flutter/material.dart';

class chat extends StatelessWidget {
  chat({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff1f1f1),

      body:Column(
        children: [
          Container(
            height: 100,
            margin: EdgeInsets.only(bottom: 20),
            color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(" Let’s Find Your Teacher",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.grey,fontSize: 15),),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 34,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffF1F1F1)
                        ),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt,color: Colors.grey,)),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 320,
                        height: 38,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffF1F1F1)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search...",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )),

          ChatsContainer(),
        ],
      )
    );
  }
}
