import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int index;

  DetailPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The details page'),
      ),
      body: Center(
        child: Text(
          'The details page #$index',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 62.0),
        ),
      ),
    );
  }
}
