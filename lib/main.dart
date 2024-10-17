import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: const Character(),
    );
  }
}

class Character extends StatelessWidget {
  const Character({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      appBar: AppBar(
        title: const Text("Pokemon Card"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'images/피카츄.png',
                width: 220,
                height: 150,
              ),
            ),
            Divider(
              height: 40,
              color: Colors.grey[800],
              thickness: 0.5,
            ),
            const Text(
              'Name',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "PIKACHU",
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'PIKACHU POWER LEVEL',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "10",
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Using lightsaber",
                  style: TextStyle(fontSize: 16, letterSpacing: 1.0),
                ),
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            const Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Hero face tattoo",
                  style: TextStyle(fontSize: 16, letterSpacing: 1.0),
                ),
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            const Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Fire flames",
                  style: TextStyle(fontSize: 16, letterSpacing: 1.0),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: const AssetImage("images/뮤.png"),
                backgroundColor: Colors.amber[700],
                radius: 70,
              ),
            )
          ],
        ),
      ),
    );
  }
}
