import 'package:flutter/material.dart';
import 'package:list_widget/details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListView',
      theme: ThemeData(primarySwatch: Colors.brown),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView',
        ),
      ),
      body: _buildListView(context),
    );
  }
}

ListView _buildListView(BuildContext context) {
  return ListView.builder(
      itemCount: 20,
      itemBuilder: (_, index) {
        return Card(
            elevation: 2,
            shape: Border(left: BorderSide(color: Colors.red, width: 5)),
            child: ClipPath(
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3))),
              child: ListTile(
                title: Text('The List item #$index'),
                subtitle: const Text('The Subtitle'),
                leading: const Icon(Icons.thumb_up),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPage(index)));
                },
              ),
            ));
      });
}
