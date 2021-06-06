import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/provider_model.dart';

class TextScreenBodyWidget extends StatefulWidget {
  @override
  _TextScreenBodyWidgetState createState() => _TextScreenBodyWidgetState();
}

class _TextScreenBodyWidgetState extends State<TextScreenBodyWidget> {

  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    TextModel textModel = Provider.of<TextModel>(context, listen: false);

    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: textModel.text,
            ),
            controller: _controller,
          ),
          TextButton(
            onPressed: (){
              textModel.add(_controller.text.toString().substring(0,5));
              Navigator.of(context).pop();
            },
            child: Text('click'),
          ),
          TextButton(
            onPressed: (){
              _controller.clear();
            },
            child: Text('clear'),
          ),
        ],
      ),
    );
  }
}
