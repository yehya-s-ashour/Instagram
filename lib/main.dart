import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram2/widgets/posts.dart';
import 'package:instagram2/widgets/stories.dart';
import 'package:instagram2/widgets/story_widget.dart';

void main() {
  runApp(MaterialApp(home: screen()));
}

class screen extends StatefulWidget {
  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Instagram'), backgroundColor: Colors.redAccent),
        body: SingleChildScrollView(
            child: Column(
          children: [stories(), posts()],
        )));
  }
}
