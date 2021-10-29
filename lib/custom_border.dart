import 'package:flutter/material.dart';

class CustomBorder extends StatelessWidget {
  final Widget child;
  final double? height;
  final EdgeInsetsGeometry? margin;

  const CustomBorder({Key? key, required this.child, this.height, this.margin,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).iconTheme.color!),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: child,
    );
  }
}
