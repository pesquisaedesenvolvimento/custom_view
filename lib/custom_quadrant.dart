import 'package:flutter/material.dart';
import 'package:custom_view/size_config.dart';
import 'package:custom_view/extensions/extension_text.dart';

class CustomQuadrant extends StatefulWidget {
  const CustomQuadrant({
    Key? key,
    required this.isSelected,
    required this.text,
    required this.callbackSelected,
  }) : super(key: key);

  final bool isSelected;
  final String text;
  final Function(bool) callbackSelected;

  @override
  _CustomQuadrantState createState() => _CustomQuadrantState();
}

class _CustomQuadrantState extends State<CustomQuadrant> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return _buildCardItem(context);
  }

  Widget _buildCardItem(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!widget.isSelected) {
          widget.callbackSelected(true);
        }
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        alignment: Alignment.center,
        width: SizeConfig.sizeByPixel(140),
        decoration: myBoxDecoration(context),
        child: widget.text.label(
          context,
          color: _getTextColor(),
        ),
      ),
    );
  }

  BoxDecoration myBoxDecoration(BuildContext context) {
    return BoxDecoration(
      color: _getBackgroundColor(),
      border: Border.all(color: Colors.transparent),
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    );
  }

  Color _getBackgroundColor() {
    return widget.isSelected
        ? Theme.of(context).primaryColor
        : Theme.of(context).hintColor;
  }

  Color? _getTextColor() {
    if (widget.isSelected) {
      return Theme.of(context).backgroundColor;
    }

    return null;
  }
}
