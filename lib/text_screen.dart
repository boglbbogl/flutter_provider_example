import 'package:flutter/material.dart';

import 'text_screen_body_widget.dart';

class TextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: Text('Text Screen',),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextScreenBodyWidget(),
        ],
      ),
    );
  }
}
