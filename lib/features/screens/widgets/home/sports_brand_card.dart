import 'package:flutter/material.dart';

class SportsBrandCard extends StatelessWidget {
  const SportsBrandCard({
    super.key, required this.BrandImage, required this.BrandTitle, required this.BrandSubTitle, required this.CategoryImage,
  });
final String BrandImage;
final String BrandTitle;
final String BrandSubTitle;
final String CategoryImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 240,
          // width: 200,
          // margin: EdgeInsets.symmetric(horizontal: 16),
          // padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // color: Colors.black,
            border: Border.all(color: Colors.grey,width: 1.5),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    // padding: EdgeInsets.all(16),
                    margin: const EdgeInsets.all(16),
                    decoration:  BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(BrandImage),
                        )
                    ),
                  ),
                  const SizedBox(width: 24,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(BrandTitle,style: const TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                          const SizedBox(width: 8,),
                          const Icon(Icons.verified,color: Colors.blue,size: 20,),
                        ],
                      ),
                      Text(BrandSubTitle),
                    ],
                  )
                ],
              ),
             SizedBox(
               height: 100,
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
                 child: ListView.separated(
                     itemCount: 10,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context,index){
                   return  Row(
                     children: [
                       Container(
                         height: 100,
                         width: 100,
                         // margin: EdgeInsets.symmetric(horizontal: 16),
                         decoration: BoxDecoration(
                             color: Colors.grey,
                             borderRadius: BorderRadius.circular(20),
                             image: DecorationImage(
                               fit: BoxFit.cover,
                               image: AssetImage(CategoryImage),
                             )
                         ),
                       ),
                     ],
                   );
                 }, separatorBuilder: (BuildContext context, int index) {
                       return const SizedBox(width: 8,);
                 },),
               ),
             )
            ],
          ),
        ),
      ],
    );
  }
}