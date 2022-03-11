import 'package:flutter/material.dart';

import '../User.dart';

class story_widget extends StatelessWidget {
  User user;
  story_widget(this.user);
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(user.pic),
          ),
        ),
        Text(user.name, style: const TextStyle(fontWeight: FontWeight.bold))
      ],
    );
  }
}
