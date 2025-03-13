import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Component7 extends StatelessWidget {
  const Component7({super.key, required this.imege});

  final String imege;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        width: 380,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.elliptical(15, 15)),
          boxShadow: [BoxShadow(
              spreadRadius: 0.5,
              blurRadius: 8
          )],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Image(
                    image: AssetImage(imege),
                    width: 230,
                    height: 168,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20,bottom: 10),
                          child: Text("XI x XII Revisions",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500)),
                        ),
                        Text("Study meterials on offer",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300,),),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0,bottom: 15),
                          child: Text("You are doing greate Lests Start \nour next topic",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w200),),
                        ),
                        Container(
                          width: 69,
                          height: 14,
                          decoration: BoxDecoration(
                              color: Color(0xff1B1645),
                              borderRadius: BorderRadius.all(Radius.elliptical(15, 15))
                          ),
                          child: Center(child: Text("Buy Now",style: TextStyle(fontSize: 7,fontWeight: FontWeight.w300,color: Colors.white),)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 12,
                    height: 4,
                    decoration: BoxDecoration(
                        color: Color(0xff595959),
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 2),
                    width:4,
                    height: 4,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffD9D9D9)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 2),
                    width:4,
                    height: 4,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffD9D9D9)
                    ),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


class Boxcont extends StatelessWidget {
  const Boxcont({super.key, required this.imeges, required this.details});
  final String imeges;
  final String details;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(8),
      width: 155,
      height: 190,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(
            spreadRadius: 0.1,
            blurRadius: 10,
          offset: Offset(1, 2)
        )],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            alignment: Alignment.center,
              children: [
            Image(image: AssetImage(imeges)),
            Text("15 Hrs",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700,color: Color(0xff6C0F7B)),)
          ]),
          Text(details,style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500),),
        ],
      ),
    );
  }
}

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 280,
        height: double.infinity,
        color: Color(0xff211F53),
        child: Column(
          children: [
            SizedBox(height: 100,),
            Align(
              alignment: Alignment.center,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/Ellipse 2.png"),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Text("Ameliya",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),),
                      Text("Devolop@gmail.com",style: TextStyle(color: Colors.white,fontSize: 10),),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.home,color: Colors.white,),Text("Home"),
               ]),
                Row(
                  children: [
                    Icon(Icons.person,color: Colors.white),Text("profile"),
                  ],
               ),
                Row(
                  children: [
                    Icon(Icons.school,color: Colors.white),Text("My school"),

               ]),
                Row(
                  children: [
                    Icon(Icons.wb_iridescent,color: Colors.white),Text("survey"),

               ]),
                Row(
                  children: [
                    Icon(Icons.calendar_month,color: Colors.white),Text("calender"),
               ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class OnDiscoverContainer1 extends StatelessWidget {
  const OnDiscoverContainer1({super.key, required this.text, this.bcolor, this.tcolor});
  final String text;
  final int? bcolor;
  final int? tcolor;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(5),
      width: 100,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(15),
        color: bcolor != null ? Color(bcolor!) : Colors.transparent
      ),
      child: Align(
          alignment: Alignment.center,
          child: Text(text,style: TextStyle(color: tcolor != null? Color(tcolor!):Colors.grey),)),
    );
  }
}
class SearchBar1 extends StatelessWidget {
  const SearchBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 35,
      decoration: BoxDecoration(
        color: Color(0xff403B70),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 5),
      width: 320,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search Courses", // Placeholder text
          hintStyle: TextStyle(color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          border: InputBorder.none, // Removes default border
        ),
      ),
    ),
          Icon(Icons.search,color: Colors.white,)
        ],
      ),
    );
  }
}

class TopCourseContainer extends StatelessWidget {
  const TopCourseContainer({super.key, required this.imege});
final String imege;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 152,
      height: 197,
      decoration: BoxDecoration(
        color: Color(0xff403B70),
        borderRadius: BorderRadius.all(Radius.elliptical(15, 15)),

      ),
      child: Column(
        children: [
          Image(
            image: AssetImage(imege),
            width: 152,
            height: 126,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(" Flutter Development",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white)),
              Text(" Flutter Development",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300,color: Colors.white),),
              Text(" \$2,000.00",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w200,color: Colors.white),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("\$2,000.00",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w600,color: Colors.white),),
                  SizedBox(width: 40,),
                  Icon(Icons.star_border_outlined,size: 15,color: Colors.orange,),
                  Text("4.5(100)",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w200,color: Colors.grey),),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}


class DevelopmentContainer extends StatelessWidget {
  const DevelopmentContainer({super.key, required this.imege});
final String imege;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 189,
      height: 179,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.elliptical(15, 15)),

      ),
      child: Column(
        children: [
          Image(
            image: AssetImage(imege),
            width: 189,
            height: 93,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Flutter Development",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black)),
              Text("Flutter Development",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300,color: Colors.black),),
              Text("\$2,000.00",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w200,color: Colors.black),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("\$2,000.00",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w600,color: Colors.black),),
                  SizedBox(width: 40,),
                  Icon(Icons.star_border_outlined,size: 15,color: Colors.orange,),
                  Text("4.5(100)",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w200,color: Colors.grey),),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      // margin: EdgeInsets.only(top: 10,bottom: 10),
      height: 1,
      width: 300,
      color: Color(0xffD9D9D9)
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





