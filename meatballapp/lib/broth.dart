import 'package:flutter/material.dart';

class BrothPage extends StatefulWidget {
  BrothPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _BrothPageState createState() => _BrothPageState();
}

class _BrothPageState extends State<BrothPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Broth'),),
      body: Center(child: RaisedButton(
        onPressed: (){
          Navigator.of(context)
            .pop();
        },
      ),),
    );
  }
}
  
