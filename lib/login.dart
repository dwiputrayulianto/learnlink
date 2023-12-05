import 'package:flutter/material.dart';
import 'package:projectuts/constant.dart';
import 'package:projectuts/register.dart';
import 'package:projectuts/tabbar.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SELAMAT DATANG", style: textTextStyle.copyWith(fontSize: 30, fontWeight: bold),
            textAlign: TextAlign.center,),
            SizedBox(height: 11),
            Text("Sekolah Tinggi Teknologi Bandung", style: secondaryTextStyle.copyWith(fontSize: 12),),
            SizedBox(height: 64,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Email", style: textTextStyle.copyWith(fontSize: 12, fontWeight: bold
                ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "dwiputra@gmail.com",
                      hintStyle: textTextStyle.copyWith(fontSize: 12, color: textColor.withOpacity(0.6)),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17)
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("Password", style: textTextStyle.copyWith(fontSize: 12, fontWeight: bold
                ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                      suffixIcon: Icon(Icons.visibility_off)
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    Text("Ingat saya", style: greyTextStyle.copyWith(fontSize: 12),),

                  ],
                ),
                SizedBox(width: 15,),
                Text("Lupa kata sandi ?", style: textTextStyle.copyWith(fontSize: 12),),
              ],
            ),
            SizedBox(height: 32,),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: utamaButtonColor,
                ),
                onPressed: () {
                  Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return TabBarApp();
      }),
    );
                }, 
              child: Text("LOGIN", style: whiteTextStyle.copyWith(fontWeight: bold),),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 19),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                ),
                onPressed: () {
                  
                }, 
                
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network("https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-1024.png", height: 20,),
                  SizedBox(width: 12,),
                  Text("Masuk dengan Google", style: textTextStyle.copyWith(fontWeight: bold),),
                ],
              ),

              ),
            ),
            
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Kamu belum punya akun? ", style: secondaryTextStyle.copyWith(fontSize: 12),),
    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RegisterPage()),
        );
      },
      child: Text(
        "Buat Akun",
        style: tncTextStyle.copyWith(fontSize: 12),
      ),
    ),
  ],
),

            
            
              ],
              ),
        ),
      ),
    );
}
}