import 'package:flutter/material.dart';
import 'package:online_commerce/features/screens/widgets/home/app_bar.dart';
import 'package:online_commerce/features/screens/widgets/home/brand_card.dart';
import 'package:online_commerce/features/screens/widgets/home/home_category_list.dart';
import 'package:online_commerce/features/screens/widgets/home/sports_brand_card.dart';
import 'package:online_commerce/features/screens/widgets/home/store_search_bar.dart';
import 'package:online_commerce/utility/app_color.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 5,
      child: Scaffold(
        appBar: EAppBar(
          showBackArrow: true,
          title: const Text('Store'),
          actions: [
            Stack(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                      size: 30,
                      color: Colors.black,
                    )),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Text(
                        '2',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 420,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                    children: [
                      const StoreSearchBar(),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Featured Brands',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('View all'),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 320,
                        child: GridView.builder(
                            itemCount: 4,
                            scrollDirection: Axis.vertical,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    // mainAxisSpacing: 10,
                                    // crossAxisSpacing: 15,
                                    childAspectRatio: 3 / 2,
                                    mainAxisExtent: 120),
                            itemBuilder: (context, index) {
                              return const BrandCard();
                            }),
                      ),
                    ],
                  ),
                ),
              )
            ];
          },
          body: Column(
            children: [
              TabBar(
                isScrollable: true,
                indicatorColor: AppColors.primaryColor,
                labelColor: AppColors.primaryColor,
                unselectedLabelColor: Colors.grey,
                tabs: const [
                  Tab(text: 'Sports'),
                  Tab(text: 'Furniture'),
                  Tab(text: 'Electronics'),
                  Tab(text: 'Cloths'),
                  Tab(text: 'Brand'),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SportsBrandCard(
                              BrandImage: 'assets/images/nikeLogo.png',
                              BrandTitle: 'Nike',
                              BrandSubTitle: '265 Products',
                              CategoryImage: 'assets/images/categoryImage.png',
                            ),
                            SizedBox(height: 20,),
                            SportsBrandCard(
                              BrandImage: 'assets/images/nikeLogo.png',
                              BrandTitle: 'Adidas',
                              BrandSubTitle: '265 Products',
                              CategoryImage: 'assets/images/categoryImage.png',
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('You might like'),
                                Text(('View all')),
                              ],
                            ),
                            HomeCategoryList(),
                          ],
                        ),
                      ),
                    ),
                    Center(child: Text('Furniture Content')),
                    Center(child: Text('Electronics Content')),
                    Center(child: Text('Cloths Content')),
                    Center(child: Text('Brand Content')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
