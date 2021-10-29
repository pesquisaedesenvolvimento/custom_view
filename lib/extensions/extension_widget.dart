import 'package:flutter/material.dart';

extension ListWidget on List {
  List<Widget> buildWithBetweenSpace<T>({
    required Widget Function(T item) builderItem,
    required Widget space,
  }) {
    List<Widget> _result = <Widget>[];

    for (var item in this) {
      _result.add(builderItem(item));
      _result.add(space);
    }

    return _result;
  }
}