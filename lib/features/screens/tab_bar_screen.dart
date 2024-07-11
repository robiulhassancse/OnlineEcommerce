import 'package:flutter/material.dart';
import 'package:online_commerce/features/screens/widgets/home/app_bar_preferred_size_widget.dart';
import 'package:online_commerce/features/screens/widgets/home/brand_card.dart';
import 'package:online_commerce/features/screens/widgets/home/store_search_bar.dart';
import 'package:online_commerce/features/screens/widgets/home/tab_bar_preferred_size_widget.dart';
import 'package:online_commerce/features/screens/widgets/store_all_category_list.dart';

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
           backgroundColors: Colors.white,
          showBackArrow: false,
          title: const Text(
            'Store',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
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
                expandedHeight: 440,
                automaticallyImplyLeading: false,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const StoreSearchBar(),
                      const SizedBox(
                        height: 20,
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
                        height: 20,
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
                                    mainAxisExtent: 100),
                            itemBuilder: (context, index) {
                              return const BrandCard();
                            }),
                      ),
                    ],
                  ),
                ),
                bottom: const ETabBar(
                  tabs: [
                    Tab(text: 'Sports'),
                    Tab(text: 'Furniture'),
                    Tab(text: 'Electronics'),
                    Tab(text: 'Cloths'),
                    Tab(text: 'Brand'),
                  ],
                ),
              ),
            ];
          },
          body: const Column(
            children: [
              Expanded(
                child: TabBarView(
                  children: [
                    StoreAllCategoryList(),
                    StoreAllCategoryList(),
                    StoreAllCategoryList(),
                    StoreAllCategoryList(),
                    StoreAllCategoryList(),
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
