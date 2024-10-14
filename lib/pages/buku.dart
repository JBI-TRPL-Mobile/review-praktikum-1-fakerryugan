import 'package:flutter/material.dart';
import 'package:template_project/models/item.dart';

class bukupage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itembuku = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text('perpustakaan1'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: 'itemImage-${itembuku.nama}',
            child: Image.asset(
              itembuku.gambar,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itembuku.nama,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: 8),
                Text(
                  'sinopsis ${itembuku.penulis}',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: 8),
                Text(
                  'sinopsis ${itembuku.keterangan}',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
