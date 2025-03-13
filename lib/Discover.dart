import 'package:flutter/material.dart';
import 'NavigationBar.dart';
import 'component7.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    OnDiscoverContainer1(text: "Development",),
                    OnDiscoverContainer1(text: "Designing",),
                    OnDiscoverContainer1(text: "IT & Software",),
                    OnDiscoverContainer1(text: "Business",),
                    OnDiscoverContainer1(text: "Development",),
                    OnDiscoverContainer1(text: "Development",),
                    OnDiscoverContainer1(text: "Development",),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              SearchBar1(),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 300.0,top: 8),
                child: Text("Top Courses",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TopCourseContainer(imege: "assets/discover1.png",),
                    TopCourseContainer(imege: "assets/discover2.png",),
                    TopCourseContainer(imege: "assets/discover1.png",),
                    TopCourseContainer(imege: "assets/discover2.png",),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 300.0,top: 8),
                child: Text("Development",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DevelopmentContainer(imege: "assets/discover1.png",),
                    DevelopmentContainer(imege: "assets/dev2.png",),
                    DevelopmentContainer(imege: "assets/discover1.png",),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 300.0,top: 8),
                child: Text("Marketing",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DevelopmentContainer(imege: "assets/discover1.png",),
                    DevelopmentContainer(imege: "assets/dev2.png",),
                    DevelopmentContainer(imege: "assets/discover1.png",),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
