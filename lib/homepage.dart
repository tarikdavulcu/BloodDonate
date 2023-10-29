import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kanbagisla/addetail.dart';
import 'package:kanbagisla/bloodcity.dart';
import 'package:kanbagisla/drawer.dart';
import 'package:kanbagisla/firebase_options.dart';
import 'package:kanbagisla/login.dart';
import 'package:localstorage/localstorage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title, required this.usr});
  final String title;
  final User? usr;
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  final List<Map<String, String>> donors = [
    {
      'name': 'Ahmet',
      'bloodType': 'A+',
      'image':
      'https://image.isu.pub/200501144557-265c1cb5bd58814f3ae80700bf019845/jpg/page_1.jpg',
    },
    {
      'name': 'Deniz',
      'bloodType': 'B+',
      'image':
      'https://image.isu.pub/200501144557-265c1cb5bd58814f3ae80700bf019845/jpg/page_1.jpg',
    },
    {
      'name': 'Tarık',
      'bloodType': 'AB+',
      'image':
      'https://image.isu.pub/200501144557-265c1cb5bd58814f3ae80700bf019845/jpg/page_1.jpg',
    },
    {
      'name': 'Hasan',
      'bloodType': 'AB+',
      'image':
      'https://image.isu.pub/200501144557-265c1cb5bd58814f3ae80700bf019845/jpg/page_1.jpg',
    },
    {
      'name': 'Faruk',
      'bloodType': 'AB+',
      'image':
      'https://image.isu.pub/200501144557-265c1cb5bd58814f3ae80700bf019845/jpg/page_1.jpg',
    },
    {
      'name': 'Ayşe',
      'bloodType': 'AB+',
      'image':
      'https://image.isu.pub/200501144557-265c1cb5bd58814f3ae80700bf019845/jpg/page_1.jpg',
    },
    {
      'name': 'Fatma',
      'bloodType': 'AB+',
      'image':
      'https://image.isu.pub/200501144557-265c1cb5bd58814f3ae80700bf019845/jpg/page_1.jpg',
    },
    {
      'name': 'Kaan',
      'bloodType': 'AB+',
      'image':
      'https://image.isu.pub/200501144557-265c1cb5bd58814f3ae80700bf019845/jpg/page_1.jpg',
    },
    {
      'name': 'Hüseyin',
      'bloodType': 'AB+',
      'image':
      'https://image.isu.pub/200501144557-265c1cb5bd58814f3ae80700bf019845/jpg/page_1.jpg',
    },
    {
      'name': 'Ali',
      'bloodType': 'AB+',
      'image':
      'https://image.isu.pub/200501144557-265c1cb5bd58814f3ae80700bf019845/jpg/page_1.jpg',
    },
    // Daha fazla donör ekleyebilirsiniz
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  action: SnackBarAction(
                    label: 'Evet',
                    onPressed: () {
                      userLogout();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LoginPage(onTap: () {}),
                      ));
                    },
                  ),
                  content: const Text('Çıkmak İstiyor Musun?'),
                  duration: const Duration(milliseconds: 1500),
                  width: 280.0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              );
            },
          ),
        ],
      ),

      body: Column(
        children: <Widget>[

          Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Bölgemdeki Kan Arayanlar"),
                ),
                // Burada "Bölgemdeki Kan Arayanlar" için gerekli içerikleri ekleyebilirsiniz.
              ],
            ),
          ),
          Expanded(
            child: PageView.builder(
              itemCount: (donors.length / 2).ceil(),
              itemBuilder: (context, rowIndex) {
                return Row(
                  children: donors
                      .skip(rowIndex * 2)
                      .take(3)
                      .map((donor) => Expanded(
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 100.0, // Kartın yüksekliği buradan ayarlandı
                            child: Image.network(
                              donor['image']!,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(donor['name']!),
                          Text(donor['bloodType']!),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AdDetail(
                                    title: donor['name']!,
                                  ),
                                ),
                              );
                            },
                            child: const Text('Detay'),
                          ),

                        ],

                      ),
                    ),
                  ))
                      .toList(),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AllDonorsPage(donors: donors),
                ),
              );
            },
            child: const Text('Tümünü Gör'),
          ),
          Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Türkiye Geneli Kan Arayanlar"),
                ),
                // Burada "Türkiye Geneli Kan Arayanlar" için gerekli içerikleri ekleyebilirsiniz.
              ],
            ),
          ),
          Expanded(
            child: PageView.builder(
              itemCount: (donors.length / 2).ceil(),
              itemBuilder: (context, rowIndex) {
                return Row(
                  children: donors
                      .skip(rowIndex * 2)
                      .take(3)
                      .map((donor) => Expanded(
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 100.0, // Kartın yüksekliği buradan ayarlandı
                            child: Image.network(
                              donor['image']!,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(donor['name']!),
                          Text(donor['bloodType']!),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AdDetail(
                                    title: donor['name']!,
                                  ),
                                ),
                              );
                            },
                            child: const Text('Detay'),
                          ),
                        ],
                      ),
                    ),
                  ))
                      .toList(),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BloodCity(donors: donors),
                ),
              );
            },
            child: const Text('Tümünü Gör'),
          ),
        ],
      ),


    );
  }
}

class AllDonorsPage extends StatelessWidget {
  final List<Map<String, String>> donors;

  AllDonorsPage({required this.donors});

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

