import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProviderModel with ChangeNotifier{

  int _count = 0;
  get count => _count;

  add(){
    _count++;
    notifyListeners();
  }
  remove(context){
    if(_count < -4){
      _showDialog(context);
      print('그만');
    } else{
      _count--;
    }
    notifyListeners();
  }

  clear(){
    _count = 0;
    notifyListeners();

  }

  Future _showDialog(context) {
    return showDialog(context: context,
      builder: (BuildContext context) {
      return AlertDialog(
        title: Center(child: Text('이제그만',)),
      );
      },
    );
  }
}

class TextModel with ChangeNotifier{

  String _text='데이터없옹';
  get text => _text;

  add(v){
    _text = v;
    notifyListeners();
  }

  clear(){
    _text = '데이터없옹';
    notifyListeners();

  }
}
