import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? customMargin;

  const CustomContainer({Key? key, required this.child, this.customMargin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: customMargin ?? EdgeInsets.all(15),
      child: child,
    );
  }
}