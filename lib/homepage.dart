import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kanbagisla/addetail.dart';
import 'package:kanbagisla/drawer.dart';
import 'package:kanbagisla/firebase_options.dart';
import 'package:kanbagisla/login.dart';
import 'package:localstorage/localstorage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title, required this.usr});
  final String title;
  final User? usr;
  @override
  State<HomePage> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final LocalStorage storage = LocalStorage('key');

    User? token = storage.getItem('token');
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          //IconButton
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: token?.uid.toString(),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  action: SnackBarAction(
                    label: 'Evet',
                    onPressed: () {
                      userLogout();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Login()));
                    },
                  ),
                  content: const Text('Çıkmak İstiyor Musun?'),
                  duration: const Duration(milliseconds: 1500),
                  width: 280.0, // Width of the SnackBar.
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0, // Inner padding for SnackBar content.
                  ),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              );
            },
          ), //IconButton
        ], //<Widget>[]
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: const CircleAvatar(child: Text('A +')),
            title: const Text('Ahmet'),
            subtitle: const Text('Supporting text'),
            trailing: const Icon(Icons.read_more_outlined),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AdDetail(
                            title: "Ahmet",
                          )));
            },
          ),
          const Divider(height: 0),
          ListTile(
            leading: const CircleAvatar(child: Text('B +')),
            title: const Text('Deniz'),
            subtitle: const Text(
                'Longer supporting text to demonstrate how the text wraps and how the leading and trailing widgets are centered vertically with the text.'),
            trailing: const Icon(Icons.read_more_outlined),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AdDetail(
                            title: "Deniz",
                          )));
            },
          ),
          const Divider(height: 0),
          ListTile(
            leading: const CircleAvatar(child: Text('AB +')),
            title: const Text('Tarık'),
            subtitle: const Text(
                "Longer supporting text to demonstrate how the text wraps and how setting 'ListTile.isThreeLine = true' aligns leading and trailing widgets to the top vertically with the text."),
            trailing: const Icon(Icons.read_more_outlined),
            isThreeLine: true,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AdDetail(
                            title: "Tarık",
                          )));
            },
          ),
          const Divider(height: 0),
        ],
      ),
    );
  }
}
