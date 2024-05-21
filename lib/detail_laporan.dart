import 'package:flutter/material.dart';

class DetailLaporan extends StatelessWidget {
  const DetailLaporan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail Laporan'),
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
                      height: 170, // Adjust the height as needed
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
