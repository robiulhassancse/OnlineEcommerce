import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: 200,
            // margin: EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // color: Colors.black,
              border: Border.all(color: Colors.grey,width: 1.5),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/nikeLogo.png'),
                        )
                    ),
                  ),
                ),
                const SizedBox(width: 24,),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Nike',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                        SizedBox(width: 8,),
                        Icon(Icons.verified,color: Colors.blue,size: 20,),
                      ],
                    ),
                    Text('265 Products')
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}