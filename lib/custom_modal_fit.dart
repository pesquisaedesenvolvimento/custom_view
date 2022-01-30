import 'package:flutter/material.dart';
import 'custom_item_modal_fit.dart';

class CustomModalFit extends StatelessWidget {
  final List<CustomItemModalFit> items;

  const CustomModalFit({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: items,
          ),
        ),
      ),
    );
  }
}
