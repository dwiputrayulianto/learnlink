import 'package:flutter/material.dart';
import 'package:projectuts/constant.dart';
import 'package:projectuts/mahasiswa.dart';

class PertamaPage extends StatefulWidget {
  const PertamaPage({super.key});
  @override
  _PertamaPageState createState() => _PertamaPageState();
}

class _PertamaPageState extends State<PertamaPage> {
  List<Mahasiswa> mahasiswaList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
          child: Column(
          children: [
            Text("DATA MAHASISWA", style: textTextStyle.copyWith(fontSize: 30, fontWeight: bold),
            ),
          
      Expanded(
        child: ListView.builder(
        itemCount: mahasiswaList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(mahasiswaList[index].nama),
            subtitle: Text(mahasiswaList[index].nim),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  mahasiswaList.removeAt(index);
                });
              },
            ),
          );
        },
      ),),
      ],),),),
      floatingActionButton: FloatingActionButton(
  child: Icon(Icons.add),
  onPressed: () {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Tambah Data Mahasiswa'),
          content: Column(
            children: <Widget>[
              TextField(
                onChanged: (value) {
                  // Simpan nama mahasiswa
                },
                decoration: InputDecoration(hintText: "Masukkan Nama"),
              ),
              TextField(
                onChanged: (value) {
                  // Simpan NIM mahasiswa
                },
                decoration: InputDecoration(hintText: "Masukkan NIM"),
              ),
              TextField(
                onChanged: (value) {
                  // Simpan Kelas mahasiswa
                },
                decoration: InputDecoration(hintText: "Masukkan Kelas"),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Tambah'),
              onPressed: () {
                setState(() {
                  // Tambahkan data mahasiswa ke list
                });
                Navigator.of(context).pop();
              },
            ),
          ],

        );
      },
    );
  },
),
    );
  }
}
