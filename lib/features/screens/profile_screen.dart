import 'package:flutter/material.dart';
import 'package:online_commerce/features/screens/widgets/account_menu_tile.dart';
import 'package:online_commerce/features/screens/widgets/home/app_bar_preferred_size_widget.dart';
import 'package:online_commerce/features/screens/widgets/home/profile_clip_path_background.dart';
import 'package:online_commerce/utility/app_color.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileClipPathBackGround(
              child: Column(
                children: [
                  EAppBar(
                    title: Text('Account',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: Colors.white)),
                    backgroundColors: AppColors.primaryColor,
                    showBackArrow: false,
                  ),

                  ListTile(
                    leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.blue,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/image1.jpg'))),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Robiul Hassan',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .apply(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'support@robiul.com',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .apply(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    trailing: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){},icon: Icon(Icons.edit,color: Colors.white,size: 30,),),
                      ],
                    ),

                  ),
                  // SizedBox(height: 30,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Account Settings',style: Theme.of(context).textTheme.headlineSmall,),
                  AccountMenuTile(leadingIcon:(Icons.home_work_sharp), titleText: 'My Address', subTitleText: 'Set shopping delivery address',),
                  AccountMenuTile(leadingIcon:(Icons.shopping_cart), titleText: 'My Cart', subTitleText: 'Set shopping delivery address',),
                  AccountMenuTile(leadingIcon:(Icons.shopping_bag_outlined), titleText: 'My Orders', subTitleText: 'Set shopping delivery address',),
                  AccountMenuTile(leadingIcon:(Icons.food_bank_outlined), titleText: 'Bank Account', subTitleText: 'Set shopping delivery address',),
                  AccountMenuTile(leadingIcon:(Icons.discount), titleText: 'My Coupons', subTitleText: 'Set shopping delivery address',),
                  AccountMenuTile(leadingIcon:(Icons.notifications_active), titleText: 'Notifications', subTitleText: 'Set shopping delivery address',),
                  AccountMenuTile(leadingIcon:(Icons.security), titleText: 'Account Privacy', subTitleText: 'Set shopping delivery address',),

                  SizedBox(height: 24,),
                  Text('App Settings',style: Theme.of(context).textTheme.headlineSmall,),
                  AccountMenuTile(leadingIcon:(Icons.upload_file_outlined), titleText: 'Load Data', subTitleText: 'Set shopping delivery address',),


                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}


