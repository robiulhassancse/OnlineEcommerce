import 'package:flutter/material.dart';
import 'package:online_commerce/utility/app_color.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: AppColors.primaryColor,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(onPressed: (){},icon: const Icon(Icons.edit,color: Colors.black,size: 30,),),
            )
          ],
          title: Column(
            children: [
              Text('Account'),
              Row(
                children: [
                  _buildHeaderText(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeaderText() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage('assets/images/image1.jpg'),
            ),
            border: Border.all(color: Colors.black),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Robiul Hassan',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  letterSpacing: 0.8,
                ),
                textAlign: TextAlign.start,
              ),
              Text('support@robiul.com',style: TextStyle(fontSize: 12),)
            ],
          ),
        ),
      ],
    );
  }

  // Widget _buildShopSection() {
  //   return Stack(
  //             children: [
  //               IconButton(
  //                   onPressed: () {},
  //                   icon: const Icon(
  //                     Icons.shopping_bag_outlined,
  //                     size: 30,
  //                     color: Colors.black,
  //                   )),
  //               Positioned(
  //                 right: 0,
  //                 top: 0,
  //                 child: Container(
  //                     height: 20,
  //                     width: 20,
  //                     decoration: BoxDecoration(
  //                       color: Colors.black.withOpacity(0.8),
  //                       borderRadius: BorderRadius.circular(50),
  //                     ),
  //                     child: const Text(
  //                       '2',
  //                       style:
  //                       TextStyle(fontSize: 12, color: Colors.white),
  //                       textAlign: TextAlign.center,
  //                     )),
  //               )
  //             ],
  //           );
  // }
}