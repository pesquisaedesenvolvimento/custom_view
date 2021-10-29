import 'package:flutter/material.dart';
import 'package:custom_view/extensions/extension_text.dart';

class FABBottomAppBarItem {
  FABBottomAppBarItem({this.iconData, this.text});
  IconData? iconData;
  String? text;
}

class FABBottomAppBar extends StatefulWidget {
  FABBottomAppBar({
    this.items,
    this.centerItemText,
    this.height: 60.0,
    this.iconSize: 24.0,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    this.notchedShape,
    this.onTabSelected,
  }) {
    assert(this.items!.length == 2 || this.items!.length == 4);
  }
  final List<FABBottomAppBarItem>? items;
  final String? centerItemText;
  final double height;
  final double iconSize;
  final Color? backgroundColor;
  final Color? color;
  final Color? selectedColor;
  final NotchedShape? notchedShape;
  final ValueChanged<int?>? onTabSelected;

  @override
  State<StatefulWidget> createState() => FABBottomAppBarState();
}

class FABBottomAppBarState extends State<FABBottomAppBar> {
  int? _selectedIndex = 0;

  _updateIndex(int? index) {
    widget.onTabSelected!(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items!.length, (int index) {
      return _buildTabItem(
        item: widget.items![index],
        index: index,
        onPressed: _updateIndex,
      );
    });

    //TODO:experimenal
    //items.insert(items.length >> 1, _buildMiddleTabItem());
    items.insert(items.length >> 1, Spacer());

    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: widget.backgroundColor,
      child: IconTheme(
        data: IconThemeData(color: Colors.yellow),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items,
        ),
      ),
    );

    //TODO:experimenal
    // return Container(
    //   margin: EdgeInsets.all(10),
    //   //color: Colors.transparent,
    //   child: ClipRRect(
    //     borderRadius: BorderRadius.all(
    //       Radius.circular(25),
    //     ),
    //     child: BottomAppBar(
    //       shape: widget.notchedShape,
    //       child: Row(
    //         mainAxisSize: MainAxisSize.max,
    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //         children: items,
    //       ),
    //       color: widget.backgroundColor,
    //     ),
    //   ),
    // );
  }

  //TODO:experimenal
  // Widget _buildMiddleTabItem() {
  //   return Expanded(
  //     child: SizedBox(
  //       height: widget.height,
  //       child: Column(
  //         mainAxisSize: MainAxisSize.min,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           SizedBox(height: widget.iconSize),
  //           Text(
  //             widget.centerItemText ?? '',
  //             style: TextStyle(color: widget.color),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget _buildTabItem({
    required FABBottomAppBarItem item,
    int? index,
    ValueChanged<int?>? onPressed,
  }) {
    Color? color = _selectedIndex == index ? widget.selectedColor : widget.color;
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => onPressed!(index),
            child: 
            //TODO:experimenal
            //Icon(item.iconData, color: color, size: widget.iconSize),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(item.iconData, color: color, size: widget.iconSize),
                item.text!.iconWithLabel(context, color:color),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
