class Mahasiswa {
  String nama;
  String nim;

  Mahasiswa({required this.nama, required this.nim});

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["nama"] = nama;
    map["nim"] = nim;
    return map;
  }
}
