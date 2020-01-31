import 'package:flutter/material.dart';

class MeatPage extends StatefulWidget {
  MeatPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MeatPageState createState() => _MeatPageState();
}

class _MeatPageState extends State<MeatPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Beef'),),
      body: Center(child: RaisedButton(
        onPressed: (){
          Navigator.of(context)
            .pop();
        },
      ),),
    );
  }
}
  
