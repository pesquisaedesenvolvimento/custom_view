import 'package:flutter/material.dart';
import 'package:custom_view/size_config.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Divider(
      color: Theme.of(context).hintColor,
      height: SizeConfig.sizeByPixel(4),
    );
  }
}
