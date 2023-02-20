import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final List<String> imageList = [
    "assets/images/pp1.png",
    "assets/images/pp2.png",
    "assets/images/pp3.png",



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            autoPlay: true,
          ),
          items: imageList.map((e)=> ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(e,
                  width: 200.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                )
              ],
            ),
          )).toList(),
        ),
      ),
    );
  }
}
