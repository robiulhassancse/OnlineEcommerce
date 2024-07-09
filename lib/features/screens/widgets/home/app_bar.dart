import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EAppBar extends StatelessWidget implements PreferredSizeWidget {
  const EAppBar(
      {super.key, this.title, required this.showBackArrow, this.leadingIcon, this.actions, this.leadingOnPressed});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(onPressed: (){
        Get.back();
      }, icon: Icon(Icons.arrow_back_ios)),
      title:title,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(54);
}
