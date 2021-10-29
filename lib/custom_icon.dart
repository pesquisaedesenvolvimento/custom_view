import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData? icon;
  final Color? color;
  final double? size;

  const CustomIcon({Key? key, this.icon, this.color, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
      size: size ?? Theme.of(context).iconTheme.size,
    );
  }
}
