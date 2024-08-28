import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  Carousel({super.key});

  final List<String> images = [
    'https://media.istockphoto.com/id/1203599923/photo/food-background-with-assortment-of-fresh-organic-vegetables.jpg?s=612x612&w=0&k=20&c=DZy1JMfUBkllwiq1Fm_LXtxA4DMDnExuF40jD8u9Z0Q=',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVJthYgtPt9UwTiP7T8elqcgvGdlDqv25y1w&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt4zHQSQ_mzqSEpwkkOK3zPpisym-rgdlyRYwIq3XJ3WEipysh2l59YKVWpFybIJ_hcrE&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: images.map((image) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        );
      }).toList(),
      options: CarouselOptions(
        height: 116,
        aspectRatio: 16 / 9,
        viewportFraction: 1.0,
        initialPage: 0,
        enableInfiniteScroll: false,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
