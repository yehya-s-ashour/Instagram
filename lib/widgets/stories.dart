import 'package:flutter/widgets.dart';
import 'package:instagram2/widgets/story_widget.dart';

import '../data.dart';

class stories extends StatelessWidget {
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      scrollDirection: Axis.horizontal,
      child: Row(
          children: users.map((e) {
        return story_widget(e);
      }).toList()),
    );
  }
}
