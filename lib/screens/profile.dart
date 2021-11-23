import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.orangeAccent, Colors.redAccent])),
            child: Container(
              width: double.infinity,
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 45,
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage(
                          'https://regonline.undip.ac.id/data/foto_ktm/21120119130073.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Liem Christopher Jaya Mulyawan',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xE6ffffff)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '21120119130073',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xE6ffffff)),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Column(
              children: [
                Text(
                  'About App',
                  style: GoogleFonts.poppins(fontSize: 20),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Pada pembuatan Tugas Akhir Praktikum Mobile Device Programming dibuat aplikasi Valorant Weapon Showcase, pada aplikasi ini akan ditampilkan daftar item senjata yang ada pada Game Valorant. Pada daftar tersebut juga ditampilkan detail tiap senjata seperti harga beli ketika Game dimainkan, damage yang dihasilkan, jenis senjata, skin senjata, dll.',
                  style: GoogleFonts.poppins(
                      fontSize: 13, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
