import 'package:flutter/material.dart';
import 'package:flutter_provider_example/model/provider_model.dart';
import 'package:provider/provider.dart';

class HomeBodyWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Count', style: TextStyle(fontSize: 40),),
              Text('Text', style: TextStyle(fontSize: 40),),
            ],
          ),
          Consumer2<ProviderModel, TextModel>(
            builder: (context, provider, textModel,child){
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(provider.count.toString(), style: TextStyle(fontSize: 40),),
                  Text(textModel.text.toString(), style: TextStyle(fontSize: 40),),
                ],
              );
            }),
        ],
      ),
    );
  }
}
