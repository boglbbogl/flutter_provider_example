import 'package:flutter/material.dart';
import 'package:flutter_provider_example/model/provider_model.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    ProviderModel _providerModel = Provider.of<ProviderModel>(context, listen: false);
    print('Second Build Called');

    return Scaffold(
      appBar: AppBar(title: Text('Second Page'),),
      body: Center(
        child: Text(_providerModel.count.toString(), style: TextStyle(fontSize: 80),),
      ),
    );
  }
}
