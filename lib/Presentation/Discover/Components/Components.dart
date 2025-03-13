import 'package:codemeapp/Presentation/Resources/Components/Components.dart';
import 'package:codemeapp/component7.dart';
import 'package:flutter/material.dart';





class DevelopmentContainer extends StatelessWidget {
  const DevelopmentContainer({super.key, required this.imege});
  final String imege;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => CourseBuy(),));
      },
      child: Container(
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


