import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_body_widget.dart';
import 'model/provider_model.dart';
import 'second_page.dart';
import 'text_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    ProviderModel _providerModel = Provider.of<ProviderModel>(context, listen: false);
    TextModel _textModel = Provider.of<TextModel>(context, listen: false);
    print('Build Called');

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>SecondPage()));
          },
          child: Text('Second Page', style: TextStyle(fontSize: 40))),
          TextButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>TextScreen()));
          },
              child: Text('Text Screen', style: TextStyle(fontSize: 40))),
          HomeBodyWidget(),
          TextButton(
              onPressed: (){
                _providerModel.clear();
                _textModel.clear();
              }, child: Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueAccent,
            ),
            child: Center(child: Text('Reset', style: TextStyle(color: Colors.white),)),
          ))
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(icon: Icon(Icons.add), onPressed: (){
            _providerModel.add();
          }),
          IconButton(icon: Icon(Icons.remove), onPressed: (){
            _providerModel.remove(context);
          }),
        ],
      ),
    );
  }
}
