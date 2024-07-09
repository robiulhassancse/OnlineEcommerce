import 'package:flutter/material.dart';

class HomePopularCategories extends StatelessWidget {
  const HomePopularCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16,),
        const Text('Popular Categories',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500),),
        const SizedBox(height: 12,),
        SizedBox(
          height:120,
          child: ListView.separated(
            itemCount: 15,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(Icons.dashboard,size: 30,),
                  ),
                  const SizedBox(height: 8,),
                  const SizedBox(width:60,child: Text('Shoes Category',maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12,color: Colors.white),))
                ],
              );
            }, separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: 12,);
          },),
        ),
      ],
    );
  }
}