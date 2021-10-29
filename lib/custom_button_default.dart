import 'package:flutter/material.dart';
import 'package:custom_view/size_config.dart';
import 'package:custom_view/extensions/extension_text.dart';

class CustomButtonDefault extends StatelessWidget {
  const CustomButtonDefault({
    Key? key,
    required this.text,
    required this.onTap,
    this.width,
    this.height,
    this.swipeColors,
  }) : super(key: key);

  final String text;
  final Function onTap;
  final double? width;
  final double? height;
  final bool? swipeColors;

  @override
  Widget build(BuildContext context) {
    return _buildButton(context);
  }

  Widget _buildButton(BuildContext context) {
    final ButtonStyle _raisedButtonStyle = ElevatedButton.styleFrom(
      primary: swipeColors == true
          ? Theme.of(context).backgroundColor
          : Theme.of(context).primaryColor,
      minimumSize: Size(width ?? SizeConfig.screenWidth!, height ?? 50),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Theme.of(context).primaryColor),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
    );

    return ElevatedButton(
      style: _raisedButtonStyle,
      onPressed: () {
        onTap();
      },
      child: text.title(context,
          color: swipeColors == true
              ? Theme.of(context).primaryColor
              : Theme.of(context).backgroundColor),
    );
  }
}