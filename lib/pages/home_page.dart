import 'package:flutter/material.dart';
import 'package:flutter_lirik_lagu_app/models/lirik_lagu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Lirik Lagu',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(
                  listLirikLagu[index].judulLagu,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  listLirikLagu[index].namaBand,
                ),
                leading: Image.network(
                  listLirikLagu[index].photo,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          itemCount: listLirikLagu.length,
        ));
  }
}
