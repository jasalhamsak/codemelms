import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';

class animationSlider extends StatelessWidget {
  animationSlider({super.key, required this.imeges});

final List imeges;



  @override
  Widget build(BuildContext context) {
    return CarouselSlider(items: imeges.map((path) {
      return Container(
        child: Image(image: AssetImage(path)),
      );
    },).toList()


        , options: CarouselOptions(autoPlay: true));
  }
}
