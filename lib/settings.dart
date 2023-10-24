import 'package:flutter/material.dart';
import 'package:kanbagisla/drawer.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _AboutState();
}

class _AboutState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        title: const Text("Ayarlar"),
      ),
      body: const Center(child: Text("Ayarlar")),
    );
  }
}
