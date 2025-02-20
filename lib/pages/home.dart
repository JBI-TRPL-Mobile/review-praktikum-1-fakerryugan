import 'package:flutter/material.dart';
import 'package:template_project/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        nama: 'Flutter Basics',
        gambar: 'assets/img/flutter.jpg',
        penulis: 'dimas januar pratama',
        keterangan:
            'buku untuk belajar flutter yang sangat basic bahkan anak kecil bisa coding'),
    Item(
        nama: 'Dart Mastery',
        gambar: 'assets/img/cerita.png',
        penulis: 'fatkur rohman irham',
        keterangan:
            'buku cerita tentang seorang lelaki yang memiliki dara vampir dan sudah hidp 100 tahun donnot fo child'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perpustakaan'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
            child: Row(
              children: [
                Icon(Icons.info, color: const Color.fromARGB(255, 83, 19, 233)),
                SizedBox(width: 4),
                Text(
                  'Tentang Pembuat',
                  style: TextStyle(color: const Color.fromARGB(255, 1, 0, 0)),
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 236, 236, 236),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Image.asset(
                  items[index].gambar,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[index].nama,
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 67, 50, 250),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/buku',
                              arguments: items[index]);
                        },
                        child: Text(
                          "detail",
                          style: TextStyle(color: Color.fromARGB(221, 0, 0, 0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
