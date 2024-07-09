import 'package:flutter/material.dart';
import 'package:online_commerce/features/screens/tab_bar_screen.dart';
import 'package:online_commerce/features/screens/widgets/home/app_bar_home_screen.dart';
import 'package:online_commerce/features/screens/widgets/clip_path_background.dart';
import 'package:online_commerce/features/screens/widgets/home/home_category_list.dart';
import 'package:online_commerce/features/screens/widgets/home/product_category.dart';
import 'package:online_commerce/features/screens/widgets/home/home_carousel_slider.dart';
import 'package:online_commerce/features/screens/widgets/home/home_popular_categories.dart';
import 'package:online_commerce/features/screens/widgets/list_of_onboard_image.dart';
import 'package:online_commerce/features/screens/widgets/home/search_bar.dart';
import 'package:online_commerce/features/screens/widgets/slider_image_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarHomeScreen(),
            Stack(
              children: [
                const ClipPathBackground(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(children: [
                    const HomeSearchBar(),
                    const HomePopularCategories(),
                    const SizedBox(height: 30),
                    HomeCarouselSlider(images: const [
                      SliderImageList.slider1 ?? '',
                      SliderImageList.slider2 ?? '',
                      SliderImageList.slider1 ?? '',
                    ]),
                    const HomeCategoryList(),
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


