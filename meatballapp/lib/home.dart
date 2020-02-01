import 'package:flutter/material.dart';
import 'package:meatballapp/broth.dart';
import 'package:meatballapp/meat.dart';
import 'package:meatballapp/meatball.dart';
import 'package:meatballapp/noodles.dart';
import 'package:meatballapp/topping.dart';
import 'package:meatballapp/vegetable.dart';

class Myyy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new MyHome());
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lisrmedo App"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Image(
              image: AssetImage('images/ramen.png'),
            ),
            title: Text('Noodles'),
            subtitle: Text('Choose the noodles you want.'),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new NoodlesPage()),
              );
            },
          ),
          ListTile(
            leading: Image(
              image: AssetImage('images/beef.png'),
            ),
            title: Text('Beef'),
            subtitle: Text('Choose the beef you want.'),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new MeatPage()),
              );
            },
          ),
          ListTile(
            leading: Image(
              image: AssetImage('images/meatball.png'),
            ),
            title: Text('Meatball'),
            subtitle: Text('Choose the meatball you want.'),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new MeatballPage()),
              );
            },
          ),
          ListTile(
            leading: Image(
              image: AssetImage('images/topping.png'),
            ),
            title: Text('Topping'),
            subtitle: Text('Choose the topping you want.'),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new ToppingPage()),
              );
            },
          ),
          ListTile(
            leading: Image(
              image: AssetImage('images/vegetable.png'),
            ),
            title: Text('Vegetable'),
            subtitle: Text('Choose the vegetable you want.'),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new VegetablePage()),
              );
            },
          ),
          ListTile(
              leading: Image(
                image: AssetImage('images/broth.png'),
              ),
              title: Text('Broth'),
              subtitle: Text('Choose the broth you want.'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new BrothPage()),
                );
              }
            ),
        ],
      ),
    );
  }
}
