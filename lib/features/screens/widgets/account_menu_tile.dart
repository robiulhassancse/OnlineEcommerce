import 'package:flutter/material.dart';

class AccountMenuTile extends StatelessWidget {
  const AccountMenuTile({
    super.key, required this.leadingIcon, required this.titleText, required this.subTitleText, this.trailing, this.onTap,
  });
final IconData leadingIcon;
final String titleText,subTitleText;
final Widget? trailing;
final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingIcon),
      title: Text(titleText,style: Theme.of(context).textTheme.titleLarge,),
      subtitle: Text(subTitleText),
      trailing: trailing,
    );
  }
}