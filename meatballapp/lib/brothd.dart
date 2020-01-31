import 'package:flutter/material.dart';
import 'package:meatballapp/detail.dart';

class BrothdPage extends StatelessWidget {
  final Pokemon pokemon;

  BrothdPage({this.pokemon});

  bodyWidget(BuildContext context) => Stack(
        children: <Widget>[
          Positioned(
            height: MediaQuery.of(context).size.height / 1.55,
            width: MediaQuery.of(context).size.width - 20,
            left: 12.0,
            top: MediaQuery.of(context).size.height * 0.12,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      pokemon.name,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text("${pokemon.height}"),
                    Text("🏡  ${pokemon.weight}",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("📌  ${pokemon.candy} ",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("🐾 ประเทศ: ${pokemon.egg} ",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                      "💗 ลักษณะเด่น",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: pokemon.type
                          .map((t) => FilterChip(
                              backgroundColor: Colors.blueAccent,
                              label: Text(t),
                              onSelected: (b) {}))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
                tag: pokemon.img,
                child: Container(
                  height: 117.0,
                  width: 190.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(pokemon.img))),
                )),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent[100],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.tealAccent[100],
        title: Text(pokemon.name),
      ),
      body: bodyWidget(context),
    );
  }
}
