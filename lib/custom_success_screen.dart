import 'package:flutter/material.dart';
import 'package:custom_view/custom_app_bar.dart';
import 'package:custom_view/custom_container.dart';
import 'package:custom_view/custom_scaffold.dart';

class CustomSuccessScreen extends StatelessWidget {
  const CustomSuccessScreen({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: CustomContainer(
        child: child,
      ),
      appBar: _buildAppBar(context) as AppBar,
      bottomNavigationBar: null,
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: 'Sucesso',
      onPressedBack: () {
        Navigator.of(context).pop();
      },
      actions: <Widget>[],
      context: context,
    );
  }
}
