import 'package:flutter/material.dart';
import 'package:custom_view/AppIcons.dart';
import 'package:custom_view/custom_icon.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    Key? key,
    required BuildContext context,
    required String title,
    required void Function() onPressedBack,
    List<Widget>? actions,
    bool automaticallyImplyLeading = true,
  }) : super(
            title: Text(title),
            automaticallyImplyLeading: automaticallyImplyLeading,
            leading: automaticallyImplyLeading
                ? IconButton(
                    icon: CustomIcon(
                        icon: AppIcons.arrow_left,
                        color: Theme.of(context).appBarTheme.iconTheme!.color),
                    onPressed: onPressedBack,
                  )
                : null,
            actions: actions);
}
