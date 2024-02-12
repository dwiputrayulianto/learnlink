import 'package:flutter/material.dart';
import 'package:projectuts/constant.dart';
import 'package:projectuts/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

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
              Text(
                "REGISTER",
                style: textTextStyle.copyWith(fontSize: 30, fontWeight: bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 11),
              Text("Akun Mahasiswa", style: secondaryTextStyle.copyWith(fontSize: 12),),
              SizedBox(height: 5),
              Text("Sekolah Tinggi Teknologi Bandung", style: secondaryTextStyle.copyWith(fontSize: 12),),
              SizedBox(height: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Email", style: textTextStyle.copyWith(fontSize: 12, fontWeight: bold)),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                    ),
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "dwiputra@gmail.com",
                        hintStyle: textTextStyle.copyWith(fontSize: 12, color: textColor.withOpacity(0.6)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17)
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Password", style: textTextStyle.copyWith(fontSize: 12, fontWeight: bold)),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                    ),
                    child: TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                        suffixIcon: Icon(Icons.visibility_off)
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Ulangi Password", style: textTextStyle.copyWith(fontSize: 12, fontWeight: bold)),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                    ),
                    child: TextField(
                      controller: _confirmPasswordController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                        suffixIcon: Icon(Icons.visibility_off)
                      ),
                    ),
                  ),
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
                    // Implement registration logic
                  }, 
                  child: Text("REGISTER", style: whiteTextStyle.copyWith(fontWeight: bold)),
                ),
              ),
              Container(
                width: double.infinity,
                height: 30,
                margin: EdgeInsets.symmetric(horizontal: 20,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      "Sudah punya akun",
                      style: tncTextStyle.copyWith(fontSize: 12, fontWeight: bold),
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

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}
