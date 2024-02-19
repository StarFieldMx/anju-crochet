import 'package:anju/interface/widgets/anju_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AnjuCarousel extends StatefulWidget {
  const AnjuCarousel({super.key, required this.images});
  final List<String> images;
  @override
  State<AnjuCarousel> createState() => _AnjuCarouselState();
}

class _AnjuCarouselState extends State<AnjuCarousel> {
  final CarouselController _controllerCarousel = CarouselController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.images
              .map(
                (e) => AnjuImage(
                  width: MediaQuery.of(context).size.width * 0.8,
                  type: ImageType.details,
                  imagePath: e,
                  hero: false,
                ),
              )
              .toList(),
          options: CarouselOptions(
              autoPlay: true,
              height: 300,
              viewportFraction: 0.9,
              aspectRatio: 2,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.images.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controllerCarousel.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_currentIndex == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
