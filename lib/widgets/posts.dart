import 'package:flutter/widgets.dart';
import 'package:instagram2/widgets/post_widget.dart';
import '../data.dart';

class posts extends StatelessWidget {
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: users.map((e) {
        return post_widget(e);
      }).toList()),
    );
  }
}
