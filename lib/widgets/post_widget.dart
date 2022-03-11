import 'package:flutter/material.dart';
import 'package:instagram2/widgets/icon_widget.dart';

import '../User.dart';

class post_widget extends StatefulWidget {
  User user;

  post_widget(this.user);

  @override
  State<post_widget> createState() => _post_widgetState();
}

class _post_widgetState extends State<post_widget> {
  Color? color = Colors.grey[400];
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage(widget.user.pic),
                ),
              ),
              Text(widget.user.name,
                  style: const TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          Image.asset(widget.user.post),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite),
                    iconSize: 30,
                    color: color,
                    onPressed: () {
                      setState(() {
                        if (color == Colors.grey[400]) {
                          color = Colors.red;
                        } else {
                          color = Colors.grey[400];
                        }
                      });
                    },
                  ),
                  icon_widget('assests/images/comment.png'),
                  icon_widget('assests/images/share.png'),
                ],
              ),
              icon_widget('assests/images/save.png'),
            ],
          )
        ],
      ),
    );
  }
}
