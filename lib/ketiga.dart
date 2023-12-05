import 'package:flutter/material.dart';
import 'package:projectuts/constant.dart';

class KetigaPage extends StatefulWidget {
  const KetigaPage({super.key});

  @override
  State<KetigaPage> createState() => _KetigaPageState();
}

class _KetigaPageState extends State<KetigaPage> {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
          child: Column(
          children: [
            Text("ABOUT", style: textTextStyle.copyWith(fontSize: 30, fontWeight: bold),
            ),
            SizedBox(height: 20),
            Text("Copyright by Dwi Putra Yulianto - 21552011284", style: secondaryTextStyle.copyWith(fontSize: 12, fontWeight: bold),),
            SizedBox(height: 5),
            Text("SplashScreen", style: secondaryTextStyle.copyWith(fontSize: 12),),
            SizedBox(height: 5),
            Text("Halaman Login", style: secondaryTextStyle.copyWith(fontSize: 12),),
            SizedBox(height: 5),
            Text("Halaman Register", style: secondaryTextStyle.copyWith(fontSize: 12),),
            SizedBox(height: 5),
            Text("Halaman Input Data Informasi", style: secondaryTextStyle.copyWith(fontSize: 12),),
            SizedBox(height: 5),
            Text("Halaman List Informasi", style: secondaryTextStyle.copyWith(fontSize: 12),),
            SizedBox(height: 5),
            Text("About Aplikasi", style: secondaryTextStyle.copyWith(fontSize: 12),),
            
            SizedBox(height: 20),
            Text("Copyright by Muhammad Bintang P - 21552011042", style: secondaryTextStyle.copyWith(fontSize: 12, fontWeight: bold),),
            SizedBox(height: 5),
            Text("Menu TabBar", style: secondaryTextStyle.copyWith(fontSize: 12),),
            SizedBox(height: 5),
            Text("Membuat Laporan", style: secondaryTextStyle.copyWith(fontSize: 12),),


            SizedBox(height: 20),
            Text("Copyright by Rani Nuraeni - 21552011384", style: secondaryTextStyle.copyWith(fontSize: 12, fontWeight: bold),),
            SizedBox(height: 5),
            Text("Membuat Laporan", style: secondaryTextStyle.copyWith(fontSize: 12),),
            
   ], ),
    
        ),
      ),
    );
  }
}