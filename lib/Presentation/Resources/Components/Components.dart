import 'package:flutter/material.dart';

class CourseBuy extends StatelessWidget {
  const CourseBuy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Stack(
                            children:[
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  width: 339,
                                  height: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      image: DecorationImage(image: AssetImage("assets/c1.png"),fit: BoxFit.cover)
                                  ),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 80.0,right: 10),
                                    child: Icon(Icons.play_circle,size: 40,color: Colors.grey,),
                                  ))
                            ]),
                        SizedBox(height: 20,),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("    Flutter Development",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),)),
                        Text("Rating and reviews are verified and are from people who use the same\n type of device that you use. ",style: TextStyle(fontSize: 10,color: Colors.grey)),
                        Image(image: AssetImage("assets/c5.png"))
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Image(image: AssetImage("assets/c3.png")),
                  SizedBox(height: 15,),

                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 200.0),
                          child: Text("Student FeedBAck",style: TextStyle(fontSize: 15,color: Colors.black)),
                        )  ,
                        Text("Rating and reviews are verified and are from people who use the same\n type of device that you use. ",style: TextStyle(fontSize: 10,color: Colors.grey)),
                        rating(value: "5",widths: 149,),
                        rating(value: "5",widths: 100,),
                      ],
                    ),
                  ),]))
    );
  }
}


class rating extends StatelessWidget {
  const rating({super.key, required this.value, required this.widths});

  final String value;
  final double widths;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(value),
        Icon(Icons.star),
        Stack(
            children: [Container(
              width: 169,
              height: 14,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey
              ),
              child: Container(
                width: widths,
                height: 14,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff211F53)
                ),
              ),
            ),
            ])
      ],
    );
  }
}




