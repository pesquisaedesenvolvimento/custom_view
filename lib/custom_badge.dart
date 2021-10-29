import 'package:flutter/material.dart';

class CustomBadge extends StatelessWidget {
  final Widget child;

  const CustomBadge({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 150, //TODO:review
      decoration: myBoxDecoration(context),
      child: child,
    );
  }

  BoxDecoration myBoxDecoration(BuildContext context) {
    return BoxDecoration(
      color: Theme.of(context).hintColor,
      border: Border.all(color: Colors.transparent),
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    );
  }
}