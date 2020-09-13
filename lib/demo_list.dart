import 'package:examples/grid_view_demo.dart';
import 'package:examples/tab_bar_demo.dart';
import 'package:flutter/material.dart';

class DemoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Menu'),
      ),
      body: ListView(
        shrinkWrap: true,
        reverse: true,
        children: [
          _menuListButton(
              buttonText: 'Tab Bar Demo',
              context: context,
              newPage: TabBarDemo()),
          _menuListButton(
              buttonText: 'Grid Demo',
              context: context,
              newPage: GridViewExample()),
        ],
      ),
    );
  }

  Widget _menuListButton({
    @required String buttonText,
    @required BuildContext context,
    @required Widget newPage,
  }) {
    return RaisedButton(
      child: Text(buttonText),
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => newPage,
        ),
      ),
    );
  }
}
