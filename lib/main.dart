import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.count(
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                _buildGridItem("He'd have you all unravel at the", Colors.teal[100]!),
                _buildGridItem('Heed not the rabble', Colors.teal[200]!),
                _buildGridItem('Sound of screams but the', Colors.teal[300]!),
                _buildGridItem('Who scream', Colors.teal[400]!),
                _buildGridItem('Revolution is coming...', Colors.teal[500]!),
                _buildGridItem('Revolution, they...', Colors.teal[600]!),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(String text, Color color) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: color,
      child: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
