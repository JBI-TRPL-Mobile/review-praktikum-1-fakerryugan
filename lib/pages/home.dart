import 'package:flutter/material.dart';
import 'package:template_project/models/item.dart';

class HomePage extends StatelessWidget {
  // Daftar item yang akan ditampilkan
  final List<Item> items = [
    Item(nama: 'Flutter Basics'),
    Item(nama: 'Dart Mastery'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('perpustakaan'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Color.fromARGB(255, 236, 236, 236),
            padding: EdgeInsets.all(8),
            child: Text(
              items[index].nama,
              style: TextStyle(fontSize: 16),
            ),
          );
        },
      ),
    );
  }
}
