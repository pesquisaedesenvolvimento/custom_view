import 'package:flutter/material.dart';

class CustomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildBottomMenu();
  }

  Widget _buildBottomMenu() {
    return BottomAppBar(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _menuHome(),
          _menuLine(),
          _menuNotification(),
          _menuMore(),
        ],
      ),
    );
  }

  Widget _menuHome() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.home, size: 24.0),
          onPressed: () {},
        ),
        Text('Início'),
      ],
    );
  }

  Widget _menuLine() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.line_style, size: 24.0),
          onPressed: () {},
        ),
        Text('Casal'),
      ],
    );
  }

  Widget _menuNotification() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.notifications, size: 24.0),
          onPressed: () {},
        ),
        Text('Notificações'),
      ],
    );
  }

  Widget _menuMore() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.menu, size: 24.0),
          onPressed: () {},
        ),
        Text('Mais'),
      ],
    );
  }
}