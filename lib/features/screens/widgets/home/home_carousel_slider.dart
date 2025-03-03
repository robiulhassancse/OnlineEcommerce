import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:online_commerce/utility/app_color.dart';

class HomeCarouselSlider extends StatefulWidget {
  HomeCarouselSlider({
    super.key,
    required this.images,
  });

  List<String> images;

  @override
  State<HomeCarouselSlider> createState() => _HomeCarouselSliderState();
}

class _HomeCarouselSliderState extends State<HomeCarouselSlider> {
  final ValueNotifier<int> _selectedSliderIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,

      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1.0,
              height: 200.0,
              onPageChanged: (index, _) {
                _selectedSliderIndex.value = index;
              }),
          items: widget.images.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child:  Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            height: double.maxFinite,
                            width: double.maxFinite,
                            image: AssetImage(i),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 8),
        ValueListenableBuilder(
            valueListenable: _selectedSliderIndex,
            builder: (BuildContext context, currentPage, _) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < widget.images.length; i++)
                    Container(
                      height: 4,
                      width: 20,
                      margin: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: i == currentPage
                            ? AppColors.primaryColor
                            : Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                        // border: Border.all(color: i== _currentPage? AppColors.primaryColor : Colors.grey),
                      ),
                    )
                ],
              );
            })
      ],
    );
  }
}