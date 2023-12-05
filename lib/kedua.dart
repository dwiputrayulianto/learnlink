import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ListLatihan {
  String id, title, subtitle;
  ListLatihan({required this.id, required this.title, required this.subtitle});
}
class KeduaPage extends StatefulWidget {
  const KeduaPage({super.key});

  @override
  State<KeduaPage> createState() => _KeduaPageState();
}

class _KeduaPageState extends State<KeduaPage> {
List<ListLatihan> listLatihan = [
  ListLatihan(id: "1", title: "Pemrograman Mobile 2", subtitle: "Pertemuan 1"),
  ListLatihan(id: "2", title: "Pemrograman Mobile 2", subtitle: "UTS"),
];

void onClick(getId) {
  Fluttertoast.showToast(
    msg: "Test Id " + getId.toString(),
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.green[700],
    textColor: Colors.white,
    fontSize: 16
  );
}

  @override
  Widget build (BuildContext context) {
    return Center(
      child: Column(
        children: listLatihan.map((latihan) {
        return Container(
          child: ListTile(
            leading: IconButton(
              icon: const Icon(Icons.picture_as_pdf, color: Color.fromRGBO(244, 67, 54, 1),),
              onPressed: (){null;}),
              title: Text(latihan.title),
              subtitle: Text(latihan.subtitle),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: (){onClick(latihan.id);}),
              ),
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              color: Colors.green[100],
            );
  }).toList(),
        ),
        );
        }
}
  