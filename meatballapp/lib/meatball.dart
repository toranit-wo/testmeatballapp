import 'package:flutter/material.dart';

class MeatballPage extends StatefulWidget {
  MeatballPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MeatballPageState createState() => _MeatballPageState();
}

class _MeatballPageState extends State<MeatballPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meatball'),),
      body: Center(child: RaisedButton(
        onPressed: (){
          Navigator.of(context)
            .pop();
        },
      ),),
    );
  }
}
  
