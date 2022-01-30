import 'package:flutter/material.dart';
import 'package:custom_view/extensions/extension.dart';

class CustomItemModalFit extends StatelessWidget {
  final Function onTap;
  final String text;
  final IconData iconData;

  const CustomItemModalFit({
    Key? key,
    required this.onTap,
    required this.text,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: text.description(context),
      leading: Icon(iconData),
      onTap: () {
        onTap();
      },
    );
  }
}
