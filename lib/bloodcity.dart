import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:kanbagisla/components/my_button.dart';
import 'package:kanbagisla/components/my_textfield.dart';
import 'package:kanbagisla/components/square_tile.dart';
import 'package:kanbagisla/homepage.dart';
import 'package:kanbagisla/passwordreset.dart';
import 'package:kanbagisla/register.dart';
import 'package:kanbagisla/services/auth_service.dart';
import 'package:localstorage/localstorage.dart';

import 'addetail.dart';


class BloodCity extends StatelessWidget {
  final List<Map<String, String>> donors;

  BloodCity({required this.donors});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tüm Donörler'),
      ),
      body: ListView.builder(
        itemCount: donors.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(donors[index]['image']!),
            ),
            title: Text(donors[index]['name']!),
            subtitle: Text(donors[index]['bloodType']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AdDetail(
                    title: donors[index]['name']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}