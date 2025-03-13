
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class customeNavBar extends StatelessWidget {
  const customeNavBar({super.key, required this.onchange});
final Function(int) onchange;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Stack(
        children:[
          Padding(
            padding: const EdgeInsets.only(left: 170.0),
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Colors.white,
            ),
          ),
          Container(
          margin: EdgeInsets.only(top: 16),
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.elliptical(15, 15),topRight: Radius.elliptical(15, 15))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){
                  onchange(0);

                },
                  child: Icon(Icons.assistant_navigation,color: Color(0xff211F53),size: 30)
              ),
              InkWell(
                  onTap: (){
                    onchange(1);
                    },
                  child: Icon(Icons.folder_sharp,color: Color(0xff211F53),size: 30)),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: InkWell(
                  onTap: (){
                    onchange(2);
                  },
                  child: CircleAvatar(
                    radius: 26,
                    backgroundColor: Color(0xff211F53),
                    child:Icon(Icons.home,color: Colors.white,size: 30,) ,
                  ),
                ),
              ),
              InkWell(
                  onTap: (){
                    onchange(3);
                  },
                  child: Icon(Icons.chat_rounded,color: Color(0xff211F53),size: 30)),
              InkWell(
                  onTap: (){
                    onchange(4);
                  },
                  child: Icon(Icons.person,color: Color(0xff211F53),size: 30)),
            ],
          ),
        ),
           ]),
    );
  }
}
