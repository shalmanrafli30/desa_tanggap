import 'package:flutter/material.dart';

class DetailLaporan extends StatelessWidget {
  const DetailLaporan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Detail Laporan',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(100, 0, 0, 0),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white, // Warna baru untuk ikon back button
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  child: Image.asset(
                    "assets/sampah.jpeg",
                    width: double.maxFinite,
                    height: 250, // Adjust the height as needed
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            // Konten lainnya
          ],
        ),
      ),
    );
  }
}
