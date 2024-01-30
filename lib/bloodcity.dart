import 'package:flutter/material.dart';

import 'addetail.dart';

class BloodCity extends StatelessWidget {
  final List<Map<String, String>> donors;

  const BloodCity({super.key, required this.donors});

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
