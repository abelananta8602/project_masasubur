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
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(5, 30, 0, 0),
                child: Text(
                  "Hari Pertama Haid Terakhir  (HPHT)",
                  style: GoogleFonts.poppins(
                      fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    hintText: 'dd/mm/yyy',
                    hintStyle: GoogleFonts.poppins(color: Colors.grey),
                    suffixIcon: Icon(Icons.date_range_outlined),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 15, 100, 0),
                child: Text(
                  "Lama Siklus Haid Rata-rata",
                  style: GoogleFonts.poppins(
                      fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      hintText: 'Masukkan Jumlah Hari',
                      hintStyle: GoogleFonts.poppins(color: Colors.grey)),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50, 50, 50, 100),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: Text(
                    "Hitung",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                    ),
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
