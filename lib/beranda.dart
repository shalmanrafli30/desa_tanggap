import 'package:flutter/material.dart';
import 'laporan_masyarakat.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Desa Tanggap',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFD90429),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 170,
                  color: const Color(0xFFD90429),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(217, 217, 217, 0.5),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide.none),
                            hintText: 'Cari Laporan...',
                            hintStyle: const TextStyle(
                              color: Color.fromRGBO(237, 242, 244, 0.5),
                              fontWeight: FontWeight.normal,
                            ),
                            suffixIcon: const Icon(
                              Icons.search,
                              color: Color.fromRGBO(237, 242, 244, 0.5),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      child: Stack(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  IconButton(
                                    iconSize: 30,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LaporanMasyarakat()));
                                    },
                                    icon: const Icon(Icons.report_problem),
                                    color: const Color(0xFFD90429),
                                  ),
                                  const SizedBox(
                                    width: 80,
                                    child: Text('Laporan masyarakat',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    iconSize: 30,
                                    onPressed: () {},
                                    icon: const Icon(Icons.document_scanner),
                                    color: const Color(0xFFD90429),
                                  ),
                                  const SizedBox(
                                      width: 80,
                                      child: Text('Urus dokumen',
                                          textAlign: TextAlign.center,
                                          style:
                                              TextStyle(color: Colors.black)))
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    iconSize: 30,
                                    onPressed: () {},
                                    icon: const Icon(Icons.sos),
                                    color: const Color(0xFFD90429),
                                  ),
                                  const SizedBox(
                                      width: 80,
                                      child: Text('Kontak darurat',
                                          textAlign: TextAlign.center,
                                          style:
                                              TextStyle(color: Colors.black)))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 17),
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 17, vertical: 12),
                child: Text(
                  'Berita',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins'),
                  textAlign: TextAlign.left,
                )),
            Card(
              color: Colors.white,
              margin: const EdgeInsets.fromLTRB(17, 10, 17, 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/logo_bjsg.jpeg',
                    width: 100,
                  ),
                  const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Judul',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Sub judul',
                            style: TextStyle(fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ))
                ],
              ),
            ),
            Card(
              color: Colors.white,
              margin: const EdgeInsets.fromLTRB(17, 10, 17, 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/logo_bjsg.jpeg',
                    width: 100,
                  ),
                  const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Judul',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Sub judul',
                            style: TextStyle(fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ))
                ],
              ),
            ),
            Card(
              color: Colors.white,
              margin: const EdgeInsets.fromLTRB(17, 10, 17, 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/logo_bjsg.jpeg',
                    width: 100,
                  ),
                  const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Judul',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Sub judul',
                            style: TextStyle(fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
