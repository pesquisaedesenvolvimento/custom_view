import 'package:flutter/material.dart';

class CustomGif extends StatelessWidget {
  const CustomGif({
    Key? key,
    required this.path,
  }) : super(key: key);

  final String path;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        path,
        fit: BoxFit.cover,
      ),
    );
  }
}
