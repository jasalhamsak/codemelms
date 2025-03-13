import 'package:codemeapp/Presentation/Discover/Components/Components.dart';
import 'package:codemeapp/component7.dart';
import 'package:flutter/material.dart';

class Resources extends StatelessWidget {
  const Resources({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      body: Column(
        children: [
          Row(
            children: [
              OnDiscoverContainer1(text: "Development",bcolor: 0xff211F53,tcolor: 0xffffffff,),
              OnDiscoverContainer1(text: "Designing"),
            ],
          ),
          Text("Continue Learning"),
          Container(
            width: 340,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 140,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: AssetImage("assets/res1.png"))
                  ),
                ),
                Image(image: AssetImage("assets/res2.png")),
              ],
            ),
          ),
          Text("Purchased Course"),
          Row(
            children: [
              DevelopmentContainer(imege: "assets/res3.png",),
              DevelopmentContainer(imege: "assets/dev2.png",),
            ],
          ),
        ],
      ),
    );
  }
}
