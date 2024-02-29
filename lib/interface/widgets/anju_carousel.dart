import 'package:anju/interface/widgets/anju_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class AnjuCarousel extends StatefulWidget {
  const AnjuCarousel({super.key, required this.images});
  final List<String> images;

  @override
  State<AnjuCarousel> createState() => _AnjuCarouselState();
}

class _AnjuCarouselState extends State<AnjuCarousel> {
  int _currentIndex = 0;

  int _adjustedIndex(int currentIndex) {
    return currentIndex % 3;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          items: widget.images
              .map(
                (e) => AnjuImage(
                  width: MediaQuery.of(context).size.width,
                  type: ImageType.orders,
                  imagePath: e,
                  hero: false,
                ),
              )
              .toList(),
          options: CarouselOptions(
            autoPlay: true,
            height: 300,
            viewportFraction: 1,
            aspectRatio: 2,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: DotsIndicator(
            dotsCount: widget.images.length > 3 ? 3 : widget.images.length,
            decorator: const DotsDecorator(
              activeColor: Colors.blue,
            ),
            position: widget.images.length > 3
                ? _adjustedIndex(_currentIndex)
                : _currentIndex,
          ),
        ),
      ],
    );
  }
}
