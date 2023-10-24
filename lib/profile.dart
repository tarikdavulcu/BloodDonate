import 'package:flutter/material.dart';
import 'package:kanbagisla/drawer.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        title: const Text("Profil"),
      ),
      body: const Center(child: Text("Profile")),
    );
  }
}
