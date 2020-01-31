import 'package:flutter/material.dart';

class ToppingPage extends StatefulWidget {
  ToppingPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ToppingPageState createState() => _ToppingPageState();
}

class _ToppingPageState extends State<ToppingPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Topping'),),
      body: Center(child: RaisedButton(
        onPressed: (){
          Navigator.of(context)
            .pop();
        },
      ),),
    );
  }
}
  
