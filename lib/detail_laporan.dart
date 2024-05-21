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
                    width: double.infinity,
                    height: 250, // Adjust the height as needed
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            // STATUS LAPORAN
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(237, 242, 244, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Kolom untuk 'Nomor Laporan'
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Nomor Laporan',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(167, 167, 167, 1),
                                fontSize: 12),
                          ),
                          SizedBox(
                              height: 8), // Add space between title and content
                          SelectableText(
                            'LPR220524001',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      // Vertical Divider
                      const VerticalDivider(
                        color: Color.fromRGBO(
                            167, 167, 167, 1), // Adjust the color as needed
                        thickness: 1, // Adjust the thickness as needed
                        indent: 20, // Adjust the top spacing as needed
                        endIndent: 20, // Adjust the bottom spacing as needed
                      ),
                      // Kolom untuk 'Status Laporan'
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Status Laporan',
                            style: TextStyle(
                                color: Color.fromRGBO(167, 167, 167, 1),
                                fontSize: 12),
                          ),
                          const SizedBox(
                              height: 8), // Add space between title and content
                          Container(
                            padding: const EdgeInsets.all(
                                4), // Add padding around the text
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(168, 168, 168, 1),
                              borderRadius: BorderRadius.circular(
                                  4), // Optional: if you want rounded corners
                            ),
                            child: const Text(
                              'Menunggu',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // END STATUS LAPORAN
          ],
        ),
      ),
    );
  }
}
