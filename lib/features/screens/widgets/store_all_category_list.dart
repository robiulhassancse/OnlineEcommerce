import 'package:flutter/material.dart';
import 'package:online_commerce/features/screens/widgets/home/home_category_list.dart';
import 'package:online_commerce/features/screens/widgets/home/sports_brand_card.dart';

class StoreAllCategoryList extends StatelessWidget {
  const StoreAllCategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
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
    );
  }
}