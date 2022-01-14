import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Colors.white,
            leading: Container(
              margin: EdgeInsets.fromLTRB(35, 0, 10, 0),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            title: Text(
              "Masa Subur",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(7, 30, 40, 0),
                child: Text(
                  "Hari Pertama Haid Terakhir (HPHT)",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 45,
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    hintText: 'dd/mm/yyy',
                    hintStyle:
                        GoogleFonts.poppins(color: Colors.grey, fontSize: 16),
                    contentPadding: EdgeInsets.fromLTRB(10, 6, 5, 5),
                    suffixIcon: Icon(Icons.date_range_outlined),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(6, 7, 100, 0),
                child: Text(
                  "Lama Siklus Haid Rata-rata",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 45,
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      hintText: 'Masukkan Jumlah Hari',
                      hintStyle: GoogleFonts.poppins(color: Colors.grey),
                      contentPadding: EdgeInsets.fromLTRB(10, 6, 5, 5)),
                ),
              ),
              Container(
                margin: EdgeInsets.all(13),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(450, 40),
                    shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "HITUNG",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
