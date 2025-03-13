import 'package:codemeapp/Presentation/Home/Components/Components.dart';
import 'package:codemeapp/data/Componets/Packages.dart';
import 'package:flutter/material.dart';

class Codememain extends StatelessWidget {
  // Create a GlobalKey for the Scaffold


   Codememain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f1f1),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " Welcome User",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Text(" Ameliya", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                  child: animationSlider(imeges: [
                    "assets/Frame 8255.png",
                    "assets/lms3.png"
                    ]
                    ,)
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Your Progress",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Boxcont(imeges: "assets/Ellipse 13.png", details: "Today Class\nOnline Class"),
                      Boxcont(imeges: "assets/Ellipse 14.png", details: "Today Class\nOnline Class"),
                      Boxcont(imeges: "assets/Ellipse 13.png", details: "Today Class\nOnline Class"),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Today Class Shedules",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 18),
                    Text(
                      "Wednesday, March 7",
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(width: 15),
                    Icon(Icons.date_range, color: Colors.black),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 13, top: 5),
                  width: 380,
                  height: 1,
                  decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                ),
                Image(image: AssetImage("assets/gadget.png"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
