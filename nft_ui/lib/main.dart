// ignore_for_file: prefer_final_fields, unused_field

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_ui/Pages/charts.dart';
import 'package:nft_ui/Pages/home_page.dart';
import 'package:nft_ui/Pages/profile.dart';
import 'package:nft_ui/Pages/wallet.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const Charts(),
    const Wallet(),
    const Profile(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.fastOutSlowIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.home_rounded),
            title: Text('Home', style: GoogleFonts.comfortaa()),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
            inactiveColor: Colors.grey,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.bar_chart_rounded),
            title: Text('Top', style: GoogleFonts.comfortaa()),
            activeColor: Colors.deepOrange,
            textAlign: TextAlign.center,
            inactiveColor: Colors.grey,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.wallet),
            title: Text('Wallet', style: GoogleFonts.comfortaa()),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
            inactiveColor: Colors.grey,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.person),
            title: Text('Profile', style: GoogleFonts.comfortaa()),
            activeColor: Colors.green,
            textAlign: TextAlign.center,
            inactiveColor: Colors.grey,
          ),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
