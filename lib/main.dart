import 'package:desa_tanggap/aktivitas.dart';
import 'package:flutter/material.dart';
import 'package:desa_tanggap/beranda.dart';
import 'package:desa_tanggap/profil.dart';
import 'package:desa_tanggap/detail_laporan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Beranda(),
      routes: {
        '/detail_laporan': (context) => const DetailLaporan(),
      },
    );
  }
}

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Beranda> {
  int _selectedTabIndex = 0;

  void _onNavbarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _listpage = <Widget>[
      const Homepage(),
      // const Text('beranda'),
      const Aktivitas(),
      const Text('Lapor'),
      const Text('Notif'),
      const Profile(),
    ];

    // ignore: no_leading_underscores_for_local_identifiers
    final _bottomNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Beranda',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.newspaper),
        label: 'Aktivitas',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.camera_alt),
        label: 'Lapor',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.notifications),
        label: 'Notif',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profil',
      ),
    ];

    // ignore: no_leading_underscores_for_local_identifiers
    final _bottomNavBar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: _bottomNavBarItems,
      backgroundColor: const Color(0xFF2B2D42),
      currentIndex: _selectedTabIndex,
      unselectedItemColor: Colors.white,
      selectedItemColor: const Color(0xFFD90429),
      onTap: _onNavbarTapped,
    );

    return Scaffold(
      // appBar: AppBar(
      //   // title: const Text('Profil saya'),
      //   // centerTitle: true,
      // ),
      body: Center(
        child: _listpage[_selectedTabIndex],
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}
