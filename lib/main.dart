import 'package:flutter/material.dart';

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
            leading: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            title: Text(
              "Masa Subur",
              style: TextStyle(
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
                margin: EdgeInsets.fromLTRB(5, 30, 40, 0),
                child: Text(
                  "Hari Pertama Haid Terakhir  (HPHT)",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
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
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(Icons.date_range_outlined),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 15, 100, 0),
                child: Text(
                  "Lama Siklus Haid Rata-rata",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
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
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50, 50, 50, 100),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Hitung",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}