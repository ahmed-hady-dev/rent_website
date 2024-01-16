import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_website/constants/app_const.dart';

import '../../../../constants/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AdCarousel extends StatefulWidget {
  const AdCarousel({
    super.key,
  });

  @override
  State<AdCarousel> createState() => _AdCarouselState();
}

class _AdCarouselState extends State<AdCarousel> {
  List<String> imageList = [
    "assets/images/room.png",
    "assets/images/home_header_mobile.png",
    "assets/images/room.png",
    "assets/images/home_header_mobile.png",
  ];
  int initialPage = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: widget.height * 0.7,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.grey),
          ),
          child: CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
              autoPlay: true,
              viewportFraction: 1,
              animateToClosest: false,
              height: widget.height * 0.7,
              autoPlayCurve: Curves.easeInOut,
              autoPlayAnimationDuration: const Duration(milliseconds: 1200),
              onPageChanged: (index, reason) {
                setState(() => initialPage = index);
              },
            ),
            items: imageList.map((ImageList) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(ImageList), fit: BoxFit.contain),
                  ),
                );
              });
            }).toList(),
          ),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(color: Colors.black26, shape: BoxShape.circle),
                  padding: const EdgeInsets.all(6),
                  child: IconButton(
                    onPressed: () => _controller.previousPage(curve: Curves.easeInOut),
                    icon: Transform.flip(
                      flipX: true,
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(color: Colors.black26, shape: BoxShape.circle),
                  padding: const EdgeInsets.all(6),
                  child: IconButton(
                    onPressed: () => _controller.nextPage(curve: Curves.easeInOut),
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: widget.height * 0.02,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageList
                .asMap()
                .entries
                .map((MapEntry<int, String> imageList) => InkWell(
                      onTap: () {
                        _controller.jumpToPage(imageList.key);
                      },
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: initialPage == imageList.key ? AppColors.purpleDark : Colors.white,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
        Positioned(
          left: widget.height * 0.03,
          bottom: widget.height * 0.03,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Row(
              textBaseline: TextBaseline.ideographic,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.black,
                  size: 16,
                ),
                const Gap(4),
                Text(
                  '${initialPage + 1}/${imageList.length}',
                  style: const TextStyle(),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
