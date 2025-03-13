import 'package:flutter/material.dart';


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





