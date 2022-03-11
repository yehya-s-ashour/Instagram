import 'package:flutter/cupertino.dart';

class icon_widget extends StatelessWidget {
  String path;
  icon_widget(this.path);
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 25,
      child: Image.asset(path),
    );
  }
}
