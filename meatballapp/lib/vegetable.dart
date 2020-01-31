import 'package:flutter/material.dart';

class VegetablePage extends StatefulWidget {
  VegetablePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _VegetablePageState createState() => _VegetablePageState();
}

class _VegetablePageState extends State<VegetablePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vegetabal'),),
      body: Center(child: RaisedButton(
        onPressed: (){
          Navigator.of(context)
            .pop();
        },
      ),),
    );
  }
}
  
