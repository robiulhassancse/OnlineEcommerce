import 'package:flutter/material.dart';
import 'package:online_commerce/utility/app_color.dart';

class ETabBar extends StatelessWidget implements PreferredSizeWidget {
  const ETabBar(
      {super.key, required this.tabs,});


final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: TabBar(
        tabs: tabs,
        indicatorColor: AppColors.primaryColor,
        labelColor: AppColors.primaryColor,
        unselectedLabelColor: Colors.grey,
        isScrollable: true,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
