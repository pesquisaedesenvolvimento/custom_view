import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  CustomCircularProgressIndicator({
    this.color,
  });

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(
              color ?? Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
