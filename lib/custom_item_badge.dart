import 'package:flutter/material.dart';
import 'package:custom_view/size_config.dart';
import 'package:custom_view/extensions/extension_text.dart';

class CustomItemBadge<T> extends StatefulWidget {
  const CustomItemBadge(
      {Key? key, required this.item, required this.text, required this.callbackSelected})
      : super(key: key);

  final T item;
  final String text;
  final Function(bool?, T) callbackSelected;

  @override
  _CustomItemBadgeState createState() =>
      _CustomItemBadgeState();
}

class _CustomItemBadgeState extends State<CustomItemBadge> {
  bool? _isSelected;

  @override
  void initState() {
    _isSelected = widget.item.selected != null && widget.item.selected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildCardItem(context);
  }

  Widget _buildCardItem(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _isSelected = !_isSelected!;
        widget.callbackSelected(_isSelected, widget.item);

        setState(() {});
      },
      child: Container(
        margin: EdgeInsets.only(bottom: SizeConfig.sizeByPixel(10)),
        alignment: Alignment.center,
        width: SizeConfig.sizeByPixel(95),
        decoration: myBoxDecoration(context),
        child: widget.text.label(
          context,
          color: _getTextColor(),
          maxLines: 1
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
    return _isSelected!
        ? Theme.of(context).primaryColor
        : Theme.of(context).hintColor;
  }

  Color? _getTextColor() {
    if (_isSelected!) {
      return Theme.of(context).backgroundColor;
    }

    return null;
  }
}
