import 'package:flutter/material.dart';
import 'package:online_commerce/features/screens/widgets/home/product_category.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 600,
        // width: 500,
        child:  GridView.builder(
            itemCount: 10,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                // mainAxisExtent: 10,
                crossAxisCount: 2,
                childAspectRatio: 0.64
            ),

            itemBuilder: (context,index){
              return  const Expanded(child: ProductCategory());
            })
    );
  }
}