import 'package:flutter/material.dart';
import 'package:kanbagisla/homepage.dart';
import 'package:kanbagisla/profile.dart';
import 'package:kanbagisla/rankinglist.dart';
import 'package:kanbagisla/settings.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.50,
        child:
            // Drawer(
            //   child: Container(
            //     color: Colors.blue,
            //     child: ListView(
            //       children: <Widget>[
            //         ListTile(
            //           title: const Text('Home'),
            //           textColor: Colors.white,
            //           trailing: const Icon(
            //             Icons.home,
            //             color: Colors.white,
            //           ),
            //           onTap: () => Navigator.of(context).push(MaterialPageRoute(
            //               builder: (context) => const HomeScreen(title: "Home"))),
            //         ),
            //         ListTile(
            //           title: const Text('Ayarlar'),
            //           textColor: Colors.white,
            //           trailing: const Icon(
            //             Icons.info_rounded,
            //             color: Colors.white,
            //           ),
            //           onTap: () => Navigator.of(context).push(
            //               MaterialPageRoute(builder: (context) => const Settings())),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xff764abc)),
                accountName: Text(
                  "Tarık Davulcu",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  "tarikdavulcu@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: FlutterLogo(),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                ),
                title: const Text('İlanlar'),
                onTap: () {
                  // Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage(title: "İlanlar")));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                ),
                title: const Text('Ayarlar'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Settings()));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                ),
                title: const Text('Profil'),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Profile()));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.emoji_events,
                ),
                title: const Text('Sıralama Listesi'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RankingList()));
                },
              ),
              const AboutListTile(
                // <-- SEE HERE
                icon: Icon(
                  Icons.info,
                ),
                // ignore: sort_child_properties_last
                child: Text('Hakkında'),
                applicationIcon: Icon(
                  Icons.local_play,
                ),
                applicationName: 'Kan Bağışı',
                applicationVersion: '1.0.1',
                applicationLegalese: '© 2023 Company',
                aboutBoxChildren: [
                  ///Content goes here...
                ],
              ),
            ],
          ),
        ));
  }
}
